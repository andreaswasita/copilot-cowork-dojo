---
name: protect-sensitive-info
category: kata
description: >-
  Know what you can and cannot paste into a Copilot prompt or share through
  Cowork. Covers personal data, customer data, financials pre-announcement,
  legal matters, security incidents, and confidential strategy. Use before
  pasting anything you wouldn't post in a public Teams channel. Triggers:
  pasting a file, sharing a Cowork session, exporting Copilot output, anything
  with PII / financials / legal / security content.
---

# Protect Sensitive Info

Copilot Cowork respects your tenant's data boundaries — but the human at the keyboard still decides what crosses them. This skill is the gate.

---

## Quick Reference (the four-question gate)

| # | Question | "Yes" → |
|---|---|---|
| 1 | Personal data (named person, employee, candidate, customer)? | Redact or escalate |
| 2 | Regulated (pre-announcement financials, legal-privileged, security-incident, health, export)? | Stop; ask the right team |
| 3 | Audience boundary — are all session participants cleared for *all* of this? | Trim audience or content |
| 4 | Public-channel test — would I post this in a public Teams channel? | If "no", treat as sensitive |

## When to Use

- Before pasting any document, table, or message into a prompt.
- Before sharing a Cowork session with someone outside the original audience.
- Before saving Copilot output that contains regulated content.
- Before adding a connector to a session that touches sensitive sources.

## How to Use

Run the four-question gate. Any "yes" → escalate before proceeding (see [governance/escalation.md](../../governance/escalation.md)).

1. **Personal data** — Does this contain identifiable info about a named person (employee, candidate, customer)?
2. **Regulated data** — Is this financial pre-announcement, legal-privileged, security-incident, health, or export-controlled?
3. **Audience boundary** — Are the people on this Cowork session cleared to see *all* of this content?
4. **Public-channel test** — Would I be comfortable posting this in a public Teams channel?

If unclear, default to: redact → check → then prompt.

## Examples

| ❌ Unsafe | ✅ Safe |
|---|---|
| Paste candidate interview feedback into a "draft offer" prompt | Redact identifiers; move to HR-cleared session |
| Ask Copilot to summarize a draft 10-Q | Stop. Pre-announcement financials. Ask Finance. |
| Share a Cowork session with the customer present | Strip internal-only content first; or split sessions |
| Paste a security incident timeline into a public prompt | Move to incident-response channel; follow IR comms protocol |

## Critical Rules

- **The human is the gate.** Tenant policy enforces boundaries; you decide what crosses.
- **Default to redact.** Less is recoverable; more is breach.
- **Audience-shape changes = re-evaluate.** Adding one person to a session can change what's appropriate.
- **No "just this once" with regulated data.**
- **When unclear, escalate** — Legal, Security, HR, or Finance own these calls.

## Common Pitfalls

- Treating a long Cowork session as a single sensitivity context — it isn't, the audience can shift.
- Assuming Cowork participants have the same access you do.
- Pasting "anonymized" data that's re-identifiable in context (small team, distinctive phrasing).
- Output saved to a personal OneDrive then shared widely.
- Forwarding a Cowork transcript without re-reading it.

## Anti-Patterns

- "Just this once." There is no "just this once" with regulated data.
- Assuming Cowork participants have the same access you do.
- Treating redaction as paranoia. It is the job.
- Asking Copilot whether content is sensitive instead of asking the right team.

## Verify Before Pasting / Sharing

- [ ] No identifiable personal data unless the session is cleared for it.
- [ ] No pre-announcement financials, legal-privileged, security-incident, health, or export-controlled content.
- [ ] Every session participant is cleared for everything in scope.
- [ ] Output destination has matching sensitivity label.
- [ ] If uncertain, escalated to the right function.

## Related

- [verify-before-send](../verify-before-send/SKILL.md), [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md)
- [onedrive-connector](../onedrive-connector/SKILL.md), [outlook-connector](../outlook-connector/SKILL.md)
- [agent-handoff](../agent-handoff/SKILL.md), [human-in-the-loop](../human-in-the-loop/SKILL.md)
