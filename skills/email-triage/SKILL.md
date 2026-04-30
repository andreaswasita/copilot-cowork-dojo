---
name: email-triage
category: kumite-task
description: >-
  Triage an inbox or thread, surface what needs a reply, and draft replies
  in your voice. Use during morning triage or when returning from time off.
  Triggers: "triage my inbox", "what needs a reply", "draft replies",
  returning-from-PTO inbox, end-of-week sweep.
---

# Email Triage

Inbox zero is a fad. Decision-zero is the goal — every message either acted on, delegated, deferred with a date, or deleted.

---

## Quick Reference (the four buckets)

| Bucket | What it is | Action |
|---|---|---|
| Decide now | You + a reply needed today | Draft reply in your voice |
| Delegate | Better-owned by someone else | Handoff with context links |
| Defer (with date) | Real but not now | Snooze with explicit return date |
| FYI | No action | Archive |

## When to Use

- Morning triage.
- Returning from PTO / OOO.
- End-of-week sweep.
- Whenever inbox > 50 unread.

## How to Use

1. Ask Copilot to **bucket** unread mail into: *Decide now*, *Delegate*, *Defer (with date)*, *FYI*.
2. For each *Decide now*: ask for a draft reply that matches your voice (give Copilot 2–3 prior sent messages as voice samples).
3. Read every draft before sending. Verify any commitments (dates, dollar amounts, names).
4. For *Delegate*: draft the handoff including context links so the delegate doesn't have to re-discover.

## Examples

| ❌ Triage anti-pattern | ✅ Triage done right |
|---|---|
| Read everything top-to-bottom | Bucket first, draft second |
| Auto-send Copilot drafts | Read every draft; verify commitments |
| "Defer" without a date | Snooze to a specific date |
| Delegate "FYI for you" | Delegate with context + the actual ask |

## Critical Rules

- **Triage reduces inbox size.** Reading isn't triage.
- **Every Defer has a date.** Otherwise it's avoidance.
- **Voice samples for replies.** 2–3 prior sent items per recipient context.
- **Commitments get verified.** Copilot will invent a date if you let it.
- **Never auto-send.**

## Common Pitfalls

- Letting Copilot send drafts unread.
- Replies that commit to a date Copilot invented.
- Triage that doesn't reduce inbox size — that's reading, not triage.
- Delegations without context — the delegate has to re-discover.
- Defers piling up because no return date set.

## Anti-Patterns

- Letting Copilot send drafts unread.
- Replies that commit to a date Copilot invented.
- Triage that doesn't reduce inbox size — that's reading, not triage.
- Bucketing by sender prestige instead of decision urgency.

## Verify Before Sending

- [ ] Every draft read by you.
- [ ] Every commitment (date, $, name) verified.
- [ ] Recipient list correct (To/Cc/Bcc).
- [ ] Voice matches the recipient's expectations.
- [ ] Subject preserves thread.
- [ ] Defers all have a return date.

## Related

- [outlook-connector](../outlook-connector/SKILL.md)
- [agent-handoff](../agent-handoff/SKILL.md) — for delegate drafts
- [verify-before-send](../verify-before-send/SKILL.md), [protect-sensitive-info](../protect-sensitive-info/SKILL.md)
