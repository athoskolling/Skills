# Installs plugin skills with a manifest so every install can be rolled back.
# Default is dry-run. Nothing is written without -Apply. No global paths are used unless you pass them.
#   .\install.ps1 -List
#   .\install.ps1 -Plugin design -Path C:\proj\.claude\skills            (dry-run)
#   .\install.ps1 -Plugin all    -Path C:\proj\.claude\skills -Apply
#   .\install.ps1 -Plugin software-dev -Skill tdd,code-review -Path C:\proj\.claude\skills -Apply   (only some skills)
#   .\install.ps1 -Plugin design -Path C:\proj\.claude\skills -Rollback -Apply
#   .\install.ps1 -Plugin design -Mode zip -Path C:\out -Apply          (plugin zip, e.g. for Cowork upload)
param(
  [string]$Plugin = 'software-dev',
  [ValidateSet('skills','zip')][string]$Mode = 'skills',
  [string]$Path,
  [string[]]$Skill,   # install only these skills of the plugin (default: all)
  [switch]$Apply,
  [switch]$Rollback,
  [switch]$List
)
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$all  = Get-ChildItem (Join-Path $root 'plugins') -Directory | ForEach-Object Name

function Say($m){ Write-Host ($(if($Apply){''}else{'[dry-run] '}) + $m) }

if ($List) {
  foreach ($p in $all) {
    $sd = Join-Path $root "plugins\$p\skills"
    if (-not (Test-Path $sd)) { "{0}: (command only, no skills; needs the plugins in its dependencies)" -f $p; continue }
    $names = Get-ChildItem $sd -Directory | ForEach-Object Name
    "{0}: {1}" -f $p, ($names -join ', ')
  }
  return
}
if (-not $Path) { throw 'Pass -Path (destination folder) or use -List.' }

$targets = if ($Plugin -eq 'all') { $all } elseif ($all -contains $Plugin) { @($Plugin) } else { throw "Unknown plugin '$Plugin'. Available: $($all -join ', ')" }

foreach ($name in $targets) {
  $plugin = Join-Path $root "plugins\$name"
  $state  = Join-Path $Path ".ai-skills-install-$name.json"
  Say "== $name"

  if ($Rollback) {
    if (-not (Test-Path $state)) { Write-Host "No install record for $name at $Path. Skipping."; continue }
    $s = Get-Content $state -Raw | ConvertFrom-Json
    foreach ($f in $s.created) { Say "remove  $f"; if ($Apply -and (Test-Path $f)) { Remove-Item $f -Force } }
    foreach ($b in $s.backups) { Say "restore $($b.original)"; if ($Apply) { Copy-Item $b.backup $b.original -Force; Remove-Item $b.backup -Force } }
    if ($Apply) {
      foreach ($d in ($s.dirs | Sort-Object Length -Descending)) { if ((Test-Path $d) -and -not (Get-ChildItem $d -Force)) { Remove-Item $d -Force } }
      Remove-Item $state -Force
    }
    Say 'rollback done'; continue
  }

  if ($Mode -eq 'zip') {
    $ver = (Get-Content (Join-Path $plugin '.claude-plugin\plugin.json') -Raw | ConvertFrom-Json).version
    $zip = Join-Path $Path "$name-$ver.zip"
    Say "build $zip"
    if ($Apply) { New-Item -ItemType Directory -Force $Path | Out-Null; Compress-Archive -Path "$plugin\*" -DestinationPath $zip -Force }
    continue
  }

  if (-not (Test-Path "$plugin\skills")) { Write-Host "$name has no skills of its own (workflow command only): install it through the marketplace together with its dependencies. Skipping."; continue }
  if (Test-Path $state) { throw "$name already installed at $Path (record exists). Run -Rollback first." }
  $created=@(); $backups=@(); $dirs=@()
  $skillDirs = Get-ChildItem "$plugin\skills" -Directory | Where-Object { -not $Skill -or $Skill -contains $_.Name }
  if ($Skill -and $Plugin -ne 'all') {
    $unknown = $Skill | Where-Object { $_ -notin (Get-ChildItem "$plugin\skills" -Directory).Name }
    if ($unknown) { throw "Unknown skill(s) in ${name}: $($unknown -join ', ')" }
  }
  foreach ($src in $skillDirs) {
    $dstRoot = Join-Path $Path $src.Name
    foreach ($file in Get-ChildItem $src.FullName -Recurse -File) {
      $rel = $file.FullName.Substring($src.FullName.Length).TrimStart('\')
      $dst = Join-Path $dstRoot $rel
      $dstDir = Split-Path $dst -Parent
      foreach ($d in @($dstRoot, $dstDir)) { if (-not (Test-Path $d) -and ($dirs -notcontains $d)) { $dirs += $d } }
      if (Test-Path $dst) {
        $bak = "$dst.bak"; Say "backup  $dst"; if ($Apply) { Copy-Item $dst $bak -Force }
        $backups += [pscustomobject]@{ original=$dst; backup=$bak }
      } else { $created += $dst }
      Say "install $dst"
      if ($Apply) { New-Item -ItemType Directory -Force $dstDir | Out-Null; Copy-Item $file.FullName $dst -Force }
    }
  }
  if ($Apply) {
    New-Item -ItemType Directory -Force $Path | Out-Null
    [pscustomobject]@{ plugin=$name; date=(Get-Date -Format s); created=$created; backups=$backups; dirs=$dirs } | ConvertTo-Json -Depth 4 | Set-Content $state -Encoding utf8
  }
  Say 'install done'
}