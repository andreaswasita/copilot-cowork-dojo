---
name: learn-from-every-session
description: >-
  After any meaningful Copilot session, log what worked, what failed, and
  the rule you'd give a teammate. Promote recurring lessons into team
  patterns. Use at the end of every scenario walkthrough or whenever a
  Copilot output surprised you (good or bad).
---

# Learn From Every Session

The dojo gets sharper only if every defeat (and victory) is logged. Untracked lessons evaporate.

## When to Use

- End of any Cowork session that produced a real deliverable.
- Any time Copilot surprised you — hallucinated, missed something obvious, or nailed something you didn't expect.
- Weekly retro.

## How to Use

Append to `tasks/lessons.md`:

```yaml
- date: YYYY-MM-DD
  scenario: <skill or scenario name>
  what_worked: <one line>
  what_failed: <one line>
  rule: <the prevention rule you'd hand a teammate>
  tags: [audience, sources, hallucination, tone, ...]
```

When the same `rule` shows up 3+ times across lessons, run `pwsh scripts/lesson-updater.ps1` to propose a promotion to `memory/patterns/<pattern-name>.md`.

## Examples

- Three sessions in a row, Copilot invented owner names in status updates → promote pattern: *"Never accept named-person attributions without source"*.

## Anti-Patterns

- Logging vague platitudes ("be careful with prompts"). Be specific.
- Hoarding lessons in your head. They benefit no one.
- Promoting a one-off. Wait for the third occurrence.
