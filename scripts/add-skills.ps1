# Adds skills from catalog/skills-catalog.zip to a plugin group (creates the group if new).
# Only the named skills are extracted, one at a time. Nothing outside plugins/ and the marketplace file is touched.
#   .\add-skills.ps1 -Plugin database -Skills postgres-patterns,sql-pro -Description "SQL and schema work"
#   .\add-skills.ps1 -Plugin database -Skills redis-patterns            (adds one more to an existing group)
# Each new skill is scanned for risky patterns (network, installs, MCP, scripts); matches go into the group's SOURCES.md.
param(
  [Parameter(Mandatory)][string]$Plugin,
  [Parameter(Mandatory)][string[]]$Skills,
  [string]$Description = ''
)
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression.FileSystem
$root   = Split-Path $PSScriptRoot -Parent
$zipPath = Join-Path $root 'catalog\skills-catalog.zip'
$index  = Import-Csv (Join-Path $root 'catalog\index.csv')
$dest   = Join-Path $root "plugins\$Plugin"
$enc    = New-Object Text.UTF8Encoding($false)
$riskRx = 'mcp|curl |wget |Invoke-WebRequest|pip install|npm (i|install)|npx |api[_ -]?key|disable-model-invocation|allowed-tools|\.py\b|\.sh\b|rm -rf|sudo |WebFetch|raw\.githubusercontent'

New-Item -ItemType Directory -Force (Join-Path $dest '.claude-plugin'), (Join-Path $dest 'skills') | Out-Null
$manifest = Join-Path $dest '.claude-plugin\plugin.json'
if (-not (Test-Path $manifest)) {
  $desc = if ($Description) { $Description } else { "$Plugin skill group (untested)" }
  $obj = [ordered]@{ name=$Plugin; version='0.1.0'; license='see SOURCES.md'; description="$desc. Skills are untested candidates."; author=@{ name='Athos Kolling' } }
  [IO.File]::WriteAllText($manifest, ($obj | ConvertTo-Json -Depth 4), $enc)
}

$zip = [IO.Compression.ZipFile]::OpenRead($zipPath)
$rows = @()
try {
  foreach ($s in $Skills) {
    $meta = $index | Where-Object { $_.skill -eq $s } | Select-Object -First 1
    if (-not $meta) { Write-Warning "skill '$s' not in index.csv, skipped"; continue }
    $entry = $zip.GetEntry("$($meta.department)/$s/SKILL.md")
    if (-not $entry) { Write-Warning "skill '$s' not found in zip at $($meta.department)/$s, skipped"; continue }
    $sd = Join-Path $dest "skills\$s"
    New-Item -ItemType Directory -Force $sd | Out-Null
    [IO.Compression.ZipFileExtensions]::ExtractToFile($entry, (Join-Path $sd 'SKILL.md'), $true)
    $text  = [IO.File]::ReadAllText((Join-Path $sd 'SKILL.md'))
    $hits  = ([regex]::Matches($text, $riskRx, 'IgnoreCase') | ForEach-Object { $_.Value.Trim().ToLower() } | Sort-Object -Unique) -join ', '
    $d1    = ($meta.description -split '(?<=[.!?])\s')[0]
    if ($d1.Length -gt 140) { $d1 = $d1.Substring(0,137) + '...' }
    $rows += [pscustomobject]@{ skill=$s; resource=$meta.resource; dept=$meta.department; what=$d1; flags=$hits }
    Write-Host "added $s ($($meta.resource))"
  }
} finally { $zip.Dispose() }

# SOURCES.md: append rows
$srcFile = Join-Path $dest 'SOURCES.md'
if (-not (Test-Path $srcFile)) {
  [IO.File]::WriteAllText($srcFile, "# Sources`n`nSkills copied unmodified from catalog/skills-catalog.zip (see catalog/index.csv). Level: candidate, NOT tested or run by us.`nLicenses: see ../../catalog/LICENSES.md.`n`n| Skill | Resource | What it does | Risk flags found by pattern scan (not a review) |`n|---|---|---|---|`n", $enc)
}
foreach ($r in $rows) {
  $line = "| $($r.skill) | $($r.resource) | $($r.what -replace '\|','/') | $(if($r.flags){$r.flags}else{'none'}) |`n"
  [IO.File]::AppendAllText($srcFile, $line, $enc)
}

# marketplace entry
$mp = Join-Path $root '.claude-plugin\marketplace.json'
$m  = (Get-Content $mp -Raw).TrimStart([char]0xFEFF) | ConvertFrom-Json
if (-not ($m.plugins | Where-Object { $_.name -eq $Plugin })) {
  $m.plugins = @($m.plugins) + [pscustomobject]@{ name=$Plugin; source="./plugins/$Plugin"; description="$Plugin (untested)" }
  [IO.File]::WriteAllText($mp, ($m | ConvertTo-Json -Depth 5), $enc)
  Write-Host "marketplace: added $Plugin"
}
Write-Host "done. Group '$Plugin' now has: $((Get-ChildItem (Join-Path $dest 'skills') -Directory).Name -join ', ')"
