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
