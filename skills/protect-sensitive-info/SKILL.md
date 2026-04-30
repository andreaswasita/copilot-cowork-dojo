---
name: protect-sensitive-info
description: >-
  Know what you can and cannot paste into a Copilot prompt or share through
  Cowork. Covers personal data, customer data, financials pre-announcement,
  legal matters, security incidents, and confidential strategy. Use before
  pasting anything you wouldn't post in a public Teams channel.
---

# Protect Sensitive Info

Copilot Cowork respects your tenant's data boundaries — but the human at the keyboard still decides what crosses them. This skill is the gate.

## When to Use

- Before pasting any document, table, or message into a prompt.
- Before sharing a Cowork session with someone outside the original audience.
- Before saving Copilot output that contains regulated content.

## How to Use

Run the four-question gate. Any "yes" → escalate before proceeding (see [governance/escalation.md](../../governance/escalation.md)).

1. **Personal data** — Does this contain identifiable info about a named person (employee, candidate, customer)?
2. **Regulated data** — Is this financial pre-announcement, legal-privileged, security-incident, health, or export-controlled?
3. **Audience boundary** — Are the people on this Cowork session cleared to see *all* of this content?
4. **Public-channel test** — Would I be comfortable posting this in a public Teams channel?

If unclear, default to: redact → check → then prompt.

## Examples

- Pasting a candidate's interview feedback into a "draft offer email" prompt → redact identifying details until you're in an HR-cleared session.
- Asking Copilot to summarize a draft 10-Q → wait. That's pre-announcement financials. Ask Finance.

## Anti-Patterns

- "Just this once." There is no "just this once" with regulated data.
- Assuming Cowork participants have the same access you do.
- Treating redaction as paranoia. It is the job.
