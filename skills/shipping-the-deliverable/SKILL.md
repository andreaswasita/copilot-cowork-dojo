---
name: shipping-the-deliverable
category: waza
description: >-
  Final QA gate before sending, sharing, or publishing a Copilot-assisted
  deliverable. Covers citations, sensitivity check, audience fit, and the
  human signature. Use as the last step of the pipeline. Triggers: send,
  share, post, publish, file, submit.
---

# Shipping the Deliverable

The last gate. If the deliverable fails any check, it doesn't ship.

---

## Quick Reference (the SHIP checklist)

| Check | Source skill |
|---|---|
| Verified | [verify-before-send](../verify-before-send/SKILL.md) |
| Cited | [cite-your-sources](../cite-your-sources/SKILL.md) |
| Sensitivity-cleared | [protect-sensitive-info](../protect-sensitive-info/SKILL.md) |
| Audience-fit | [reviewing-output](../reviewing-output/SKILL.md) |
| Owned | Your name on it |
| Logged | [learn-from-every-session](../learn-from-every-session/SKILL.md) |

## When to Use

- Last step before any send / share / post / publish.
- Before saving to a published path in [onedrive-connector](../onedrive-connector/SKILL.md).
- Before posting via [teams-connector](../teams-connector/SKILL.md) or [outlook-connector](../outlook-connector/SKILL.md).

## How to Use

Run the SHIP checklist:

- [ ] **Verified** — every fact, name, number, quote checked against source (`verify-before-send`).
- [ ] **Cited** — every claim links to a source the reader can open (`cite-your-sources`).
- [ ] **Sensitivity** — passes the four-question gate (`protect-sensitive-info`).
- [ ] **Audience-fit** — reads as if the named audience is reading it.
- [ ] **Owned** — your name is on it. You stand behind it.
- [ ] **Logged** — lesson appended to `tasks/lessons.md` (`learn-from-every-session`).

Then ship.

## Examples

| ❌ Skipped gate | ✅ Gate held |
|---|---|
| Send a memo with "// TODO: confirm number" | Replace with verified number or cut the sentence |
| Forward a deck without removing internal-only slides | Strip; re-cite; re-verify sharing scope |
| Post Copilot output verbatim | Read; verify; sign your name to it |
| Skip lesson log "no time" | 30 seconds; high-leverage |

## Critical Rules

- **The gate exists *because* of deadline pressure.** Skipping under deadline is exactly when defects ship.
- **No "// TODO" placeholders.** Ever.
- **Your name = your accountability.** If you're not willing to put your name on it, don't ship it.
- **Log on the way out.** Memory decays in minutes.

## Common Pitfalls

- "I'll log the lesson tomorrow" — you won't.
- Treating sensitivity as a one-time check — audience can shift between draft and send.
- Shipping a draft that still says "Sure, here's…" or other prompt artifacts.
- Skipping audience-fit because the prose looks polished.
- Sending without re-checking who's on the To/Cc.

## Anti-Patterns

- Shipping with "// TODO" or "[fill in]" placeholders.
- Forwarding Copilot output without removing prompt artifacts.
- Treating the ship gate as optional under deadline pressure. The gate exists *because* of deadline pressure.
- "Send now, log later." You won't.

## Verify at the Gate

- [ ] All six SHIP checks green.
- [ ] No prompt artifacts.
- [ ] No "// TODO" / "[fill in]" / placeholder text.
- [ ] Recipients / audience / sharing scope final and correct.
- [ ] Lesson logged.

## Related

- All Core Kata: [verify-before-send](../verify-before-send/SKILL.md), [cite-your-sources](../cite-your-sources/SKILL.md), [protect-sensitive-info](../protect-sensitive-info/SKILL.md), [learn-from-every-session](../learn-from-every-session/SKILL.md)
- [reviewing-output](../reviewing-output/SKILL.md), [refining-iteratively](../refining-iteratively/SKILL.md)
- All connector skills (the surfaces you ship through)
