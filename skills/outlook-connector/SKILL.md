---
name: outlook-connector
category: kumite-connector
description: >-
  Drive Outlook mail and calendar from Copilot — search threads, draft
  replies, schedule meetings, manage rules. Use whenever the input or output
  of a task is an email or a calendar event.
---

# Outlook Connector

Email is the most overloaded surface in the enterprise. Use Copilot to triage and draft, never to send unread.

## When to Use

- Triaging a backlog (see [email-triage](../email-triage/SKILL.md)).
- Drafting replies grounded in the thread + attachments.
- Scheduling meetings from natural-language constraints ("next Tue–Thu, 30 min, anyone in EMEA").
- Searching across mailboxes you have delegated access to.

## Tool Sequence

1. **Search / list** messages by `conversationId`, sender, date range, or KQL — narrow before you read.
2. **Read** the thread, then attachments. Treat attachments as separate sources for citation.
3. **Draft** the reply in a draft surface (Outlook draft folder, not in chat). Keep the draft until verified.
4. **Resolve recipients** — verify To/Cc/Bcc against the original thread + the deliverable's intended audience.
5. **Send / schedule** only after the verify-before-send gate.

## Parameter Guidance

| Parameter | Why it matters |
|---|---|
| `conversationId` | Anchors a reply to the right thread; avoids forking. |
| `to` / `cc` / `bcc` | Audience defects = blast-radius defects. Verify each list. |
| `subject` | Don't auto-rewrite an existing thread's subject — breaks threading. |
| `attachments` | Re-attach only what's needed; remove confidential earlier attachments when forwarding externally. |
| `categories` / `flag` | Use to mark Copilot-drafted items pending human review. |

## Known Pitfalls

- "Reply All" to a distribution list with 2,000 members.
- Forwarding a thread externally that contains an internal-only earlier message.
- Calendar invites without a body — recipients can't tell what the meeting is for.
- Time zones — always confirm the organizer's TZ vs. attendees'.

## Anti-Patterns

- Auto-send rules driven by Copilot output. Never. Always human-in-the-loop.
- Using mailbox rules to delete what Copilot misclassified — silent loss of evidence.
- Asking Copilot to "summarize my inbox" without a scope filter — privacy and cost both blow up.
