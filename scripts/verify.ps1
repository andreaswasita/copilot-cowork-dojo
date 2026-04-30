<#
.SYNOPSIS
  Pre-ship verification for the Copilot Cowork Dojo.
.DESCRIPTION
  Checks that:
    - tasks/todo.md exists and is not the default template
    - tasks/lessons.md exists
    - skills.md references only real skill folders
  Mirrors the CI gate so you can verify locally before opening a PR.
#>

[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$failures = 0

function Fail($msg) {
    Write-Host "FAIL: $msg" -ForegroundColor Red
    $script:failures++
}
function Pass($msg) { Write-Host "PASS: $msg" -ForegroundColor Green }

# tasks/lessons.md
$lessonsPath = Join-Path $repoRoot 'tasks/lessons.md'
if (Test-Path $lessonsPath) { Pass "tasks/lessons.md present" }
else { Fail "tasks/lessons.md missing — run scripts/init.ps1" }

# tasks/todo.md
$todoPath = Join-Path $repoRoot 'tasks/todo.md'
if (-not (Test-Path $todoPath)) {
    Fail "tasks/todo.md missing — run scripts/init.ps1"
} elseif ((Get-Content $todoPath -Raw) -match 'REPLACE THIS WITH YOUR PLAN') {
    Fail "tasks/todo.md still has the default template — write a real plan"
} else {
    Pass "tasks/todo.md has a real plan"
}

# skills.md → real skill folders
$skillsIndex = Join-Path $repoRoot 'skills.md'
if (Test-Path $skillsIndex) {
    $referenced = Select-String -Path $skillsIndex -Pattern 'skills/[a-z0-9-]+/SKILL\.md' -AllMatches |
        ForEach-Object { $_.Matches } | ForEach-Object { $_.Value } | Sort-Object -Unique
    foreach ($rel in $referenced) {
        $abs = Join-Path $repoRoot $rel
        if (-not (Test-Path $abs)) { Fail "skills.md references missing skill: $rel" }
    }
    if ($referenced.Count -gt 0) { Pass "skills.md references $($referenced.Count) skills, all present" }
} else {
    Fail "skills.md missing"
}

Write-Host ""
if ($failures -eq 0) {
    Write-Host "All verification checks passed." -ForegroundColor Green
    exit 0
} else {
    Write-Host "$failures check(s) failed." -ForegroundColor Red
    exit 1
}
