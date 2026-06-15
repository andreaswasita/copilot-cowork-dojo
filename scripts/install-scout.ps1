<#
.SYNOPSIS
  Install the Cowork Dojo skills into Microsoft Scout's personal-skills folder.
.DESCRIPTION
  Microsoft Scout is built on the GitHub Copilot engine and auto-discovers
  personal skills from (in order):
    - ~/.agents/skills              (personal-agents — the default this script uses)
    - <configDir>/skills            (configDir = $COPILOT_HOME or ~/.copilot)
  Each skill is a folder containing a SKILL.md with `name` + `description`
  frontmatter — exactly the format the Cowork Dojo skills already use, so they
  drop straight in.

  This script copies every folder under skills/ that contains a SKILL.md into
  the target directory, preserving structure. Re-running it refreshes the copies.

  Restart Scout after installing so it re-scans the skills folder.
.PARAMETER Target
  Destination skills directory. Defaults to $env:COWORK_SCOUT_SKILLS, else
  ~/.agents/skills.
.PARAMETER WhatIf
  Show what would be copied without writing anything.
.EXAMPLE
  pwsh scripts/install-scout.ps1
.EXAMPLE
  pwsh scripts/install-scout.ps1 -Target "$HOME/.copilot/skills"
.EXAMPLE
  pwsh scripts/install-scout.ps1 -WhatIf
#>

[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [string]$Target
)

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$skillsRoot = Join-Path $repoRoot 'skills'

if (-not (Test-Path $skillsRoot)) {
    Write-Error "skills/ not found at $skillsRoot — run this from a Cowork Dojo clone."
    exit 1
}

if (-not $Target) {
    if ($env:COWORK_SCOUT_SKILLS) { $Target = $env:COWORK_SCOUT_SKILLS }
    else { $Target = Join-Path $HOME '.agents/skills' }
}

Write-Host "Cowork Dojo -> Microsoft Scout skill installer" -ForegroundColor Cyan
Write-Host "  Source: $skillsRoot"
Write-Host "  Target: $Target"
Write-Host ""

if ($PSCmdlet.ShouldProcess($Target, 'Create skills directory')) {
    New-Item -ItemType Directory -Force -Path $Target | Out-Null
}

$installed = 0
$skipped = 0
foreach ($dir in Get-ChildItem -Path $skillsRoot -Directory | Sort-Object Name) {
    $skillFile = Join-Path $dir.FullName 'SKILL.md'
    if (-not (Test-Path $skillFile)) {
        Write-Host "  skip  $($dir.Name) (no SKILL.md)" -ForegroundColor DarkYellow
        $skipped++
        continue
    }
    $dest = Join-Path $Target $dir.Name
    if ($PSCmdlet.ShouldProcess($dest, "Install skill '$($dir.Name)'")) {
        if (Test-Path $dest) { Remove-Item -Recurse -Force $dest }
        Copy-Item -Recurse -Force $dir.FullName $dest
    }
    Write-Host "  ok    $($dir.Name)" -ForegroundColor Green
    $installed++
}

Write-Host ""
Write-Host "Installed $installed skill(s); skipped $skipped." -ForegroundColor Cyan
Write-Host "Restart Microsoft Scout to load the new skills." -ForegroundColor Yellow
