---
name: learn-from-every-session
category: kata
description: >-
  After any meaningful Copilot session, log what worked, what failed, and
  the rule you'd give a teammate. Promote recurring lessons into team
  patterns. Use at the end of every scenario walkthrough or whenever a
  Copilot output surprised you (good or bad). Triggers: end of any session,
  unexpected hallucination, surprisingly good output, weekly retro.
---

# Learn From Every Session

The dojo gets sharper only if every defeat (and victory) is logged. Untracked lessons evaporate.

---

## Quick Reference

| Trigger | Log entry |
|---|---|
| Hallucination | What was hallucinated · which prompt · prevention rule |
| Surprise win | What worked · which prompt pattern · re-use note |
| Slow session | Where time went · re-plan opportunity |
| Recurring rule (3+ times) | Promote to `memory/patterns/<name>.md` |

## When to Use

- End of any Cowork session that produced a real deliverable.
- Any time Copilot surprised you — hallucinated, missed something obvious, or nailed something you didn't expect.
- Weekly retro.
- After a failed deliverable — root cause goes here, not in your head.

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

| Trigger | Lesson entry |
|---|---|
| Copilot invented an owner name | rule: "Never accept named-person attributions without source" |
| Section-by-section drafting saved 30 min | rule: "For memos > 1 page, always section-by-section" |
| Voice samples improved tone | rule: "Always paste 2–3 prior sent items for voice match" |
| 3rd recurrence of owner-hallucination | Promote to `memory/patterns/owner-attribution.md` |

## Critical Rules

- **Specificity > volume.** One sharp rule beats five vague platitudes.
- **Promote on the third occurrence**, not the first.
- **Lessons live in `tasks/lessons.md`**, not in your head.
- **Pattern promotion is reviewed**, not auto-merged.

## Common Pitfalls

- Vague entries ("be careful with prompts") — useless.
- Logging only failures (success patterns are equally valuable).
- Promoting a one-off as a pattern.
- Logging without tags — kills future searchability.

## Anti-Patterns

- Logging vague platitudes ("be careful with prompts"). Be specific.
- Hoarding lessons in your head. They benefit no one.
- Promoting a one-off. Wait for the third occurrence.
- Logging the prompt instead of the rule.

## Verify Before Logging

- [ ] Entry is one specific rule, not a platitude.
- [ ] Tags applied for searchability.
- [ ] Date, scenario, and prevention rule populated.
- [ ] Pattern check: is this the 3rd occurrence?

## Related

- [skill-creator](../skill-creator/SKILL.md) — when a pattern earns promotion to a skill
- [writing-skills](../writing-skills/SKILL.md)
- [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md) — ship gate references logging
