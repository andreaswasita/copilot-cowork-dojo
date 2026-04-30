<#
.SYNOPSIS
  Initialize the Copilot Cowork Dojo in a workspace.
.DESCRIPTION
  Scaffolds tasks/todo.md and tasks/lessons.md if they don't exist.
  Safe to run repeatedly — never overwrites existing content.
#>

[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot

$tasksDir = Join-Path $repoRoot 'tasks'
if (-not (Test-Path $tasksDir)) {
    New-Item -ItemType Directory -Path $tasksDir | Out-Null
    Write-Host "Created: $tasksDir"
}

$todoPath = Join-Path $tasksDir 'todo.md'
if (-not (Test-Path $todoPath)) {
    @'
# tasks/todo.md

> REPLACE THIS WITH YOUR PLAN. The CI gate fails if this default text remains.

## Current scenario
<scenario name>

## Pipeline
- [ ] CLARIFY
- [ ] PLAN
- [ ] DRAFT
- [ ] REVIEW
- [ ] REFINE
- [ ] SHIP
- [ ] LEARN

## Notes
'@ | Set-Content -Path $todoPath -Encoding UTF8
    Write-Host "Created: $todoPath"
} else {
    Write-Host "Exists:  $todoPath (left untouched)"
}

$lessonsPath = Join-Path $tasksDir 'lessons.md'
if (-not (Test-Path $lessonsPath)) {
    @'
# tasks/lessons.md

> Append a YAML entry after every meaningful Copilot Cowork session.
> When a `rule` recurs 3+ times, run `pwsh scripts/lesson-updater.ps1` to promote it.

```yaml
# Example entry
- date: 2026-04-30
  scenario: meeting-recap / weekly team sync
  what_worked: pulled prior 3 recaps before drafting
  what_failed: Copilot named an action owner who wasn't in the meeting
  rule: never accept named-person attributions without source
  tags: [hallucination, owners, recap]
```

---
'@ | Set-Content -Path $lessonsPath -Encoding UTF8
    Write-Host "Created: $lessonsPath"
} else {
    Write-Host "Exists:  $lessonsPath (left untouched)"
}

Write-Host ""
Write-Host "Dojo initialized. Next: pick a scenario from scenarios/ and run the pipeline."
