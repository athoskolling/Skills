# Installs the software-dev skills with a manifest so every install can be rolled back.
# Default is dry-run. Nothing is written without -Apply. No global paths are used unless you pass them.
#   .\install.ps1 -Mode skills -Path C:\proj\.claude\skills            (dry-run)
#   .\install.ps1 -Mode skills -Path C:\proj\.claude\skills -Apply
#   .\install.ps1 -Mode zip    -Path C:\out                            (plugin zip for Cowork upload)
#   .\install.ps1 -Rollback -Path C:\proj\.claude\skills -Apply
param(
  [ValidateSet('skills','zip')][string]$Mode = 'skills',
  [Parameter(Mandatory)][string]$Path,
  [switch]$Apply,
  [switch]$Rollback
)
$ErrorActionPreference = 'Stop'
$root   = Split-Path $PSScriptRoot -Parent
$plugin = Join-Path $root 'plugins\software-dev'
$state  = Join-Path $Path '.ai-skills-install.json'

function Say($m){ Write-Host ($(if($Apply){''}else{'[dry-run] '}) + $m) }

if ($Rollback) {
  if (-not (Test-Path $state)) { throw "No install record at $state. Nothing to roll back." }
  $s = Get-Content $state -Raw | ConvertFrom-Json
  foreach ($f in $s.created)  { Say "remove  $f"; if ($Apply -and (Test-Path $f)) { Remove-Item $f -Force } }
  foreach ($b in $s.backups)  { Say "restore $($b.original)"; if ($Apply) { Copy-Item $b.backup $b.original -Force; Remove-Item $b.backup -Force } }
  if ($Apply) {
    foreach ($d in $s.dirs) { if ((Test-Path $d) -and -not (Get-ChildItem $d -Force)) { Remove-Item $d -Force } }
    Remove-Item $state -Force
  }
  Say 'rollback done'; return
}

if ($Mode -eq 'zip') {
  $zip = Join-Path $Path 'software-dev-0.1.0.zip'
  Say "build $zip"
  if ($Apply) { New-Item -ItemType Directory -Force $Path | Out-Null; Compress-Archive -Path "$plugin\*" -DestinationPath $zip -Force }
  return
}

if ((Test-Path $state)) { throw "Already installed at $Path (record exists). Run -Rollback first." }
$created=@(); $backups=@(); $dirs=@()
foreach ($src in Get-ChildItem "$plugin\skills" -Directory) {
  $dst = Join-Path $Path $src.Name
  $file = Join-Path $dst 'SKILL.md'
  if (-not (Test-Path $dst)) { $dirs += $dst }
  if (Test-Path $file) {
    $bak = "$file.bak"; Say "backup  $file"; if ($Apply) { Copy-Item $file $bak -Force }
    $backups += [pscustomobject]@{ original=$file; backup=$bak }
  } else { $created += $file }
  Say "install $file"
  if ($Apply) { New-Item -ItemType Directory -Force $dst | Out-Null; Copy-Item "$($src.FullName)\SKILL.md" $file -Force }
}
if ($Apply) {
  [pscustomobject]@{ date=(Get-Date -Format s); created=$created; backups=$backups; dirs=$dirs } | ConvertTo-Json -Depth 4 | Set-Content $state -Encoding utf8
}
Say 'install done'

