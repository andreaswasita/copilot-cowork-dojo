<#
.SYNOPSIS
  Scan tasks/lessons.md for recurring rules and propose promotions to memory/patterns/.
.DESCRIPTION
  Parses YAML-style lesson entries, counts occurrences of each `rule:` value,
  and prints a promotion proposal for any rule with 3+ occurrences.
  Does NOT modify files automatically — you decide what to promote.
#>

[CmdletBinding()]
param(
    [int]$Threshold = 3
)

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$lessonsPath = Join-Path $repoRoot 'tasks/lessons.md'

if (-not (Test-Path $lessonsPath)) {
    Write-Host "No tasks/lessons.md yet — run scripts/init.ps1." -ForegroundColor Yellow
    exit 0
}

$content = Get-Content $lessonsPath -Raw
$ruleMatches = [regex]::Matches($content, '(?m)^\s*rule:\s*(.+?)\s*$')

if ($ruleMatches.Count -eq 0) {
    Write-Host "No 'rule:' entries found in tasks/lessons.md." -ForegroundColor Yellow
    exit 0
}

$ruleCounts = @{}
foreach ($m in $ruleMatches) {
    $rule = $m.Groups[1].Value.Trim()
    if (-not $ruleCounts.ContainsKey($rule)) { $ruleCounts[$rule] = 0 }
    $ruleCounts[$rule]++
}

$promotable = $ruleCounts.GetEnumerator() | Where-Object { $_.Value -ge $Threshold } | Sort-Object -Property Value -Descending

if (-not $promotable) {
    Write-Host "No rules have hit the promotion threshold ($Threshold occurrences) yet." -ForegroundColor Cyan
    Write-Host "Current rule counts:"
    $ruleCounts.GetEnumerator() | Sort-Object -Property Value -Descending | ForEach-Object {
        Write-Host ("  {0,3}x  {1}" -f $_.Value, $_.Key)
    }
    exit 0
}

Write-Host "Promotable rules (>= $Threshold occurrences):" -ForegroundColor Green
foreach ($entry in $promotable) {
    $slug = ($entry.Key -replace '[^a-zA-Z0-9]+', '-').Trim('-').ToLower()
    if ($slug.Length -gt 60) { $slug = $slug.Substring(0, 60).TrimEnd('-') }
    $target = "memory/patterns/$slug.md"
    Write-Host ""
    Write-Host ("  Rule:        {0}" -f $entry.Key)
    Write-Host ("  Occurrences: {0}" -f $entry.Value)
    Write-Host ("  Propose:     create $target from memory/patterns/_template.md")
}

Write-Host ""
Write-Host "Next: copy memory/patterns/_template.md → the proposed paths and fill in." -ForegroundColor Cyan
