---
name: outlook-connector
category: kumite-connector
description: >-
  Drive Outlook mail and calendar from Copilot — search threads, draft
  replies, schedule meetings, manage rules. Use whenever the input or output
  of a task is an email or a calendar event. Triggers: "draft a reply",
  "schedule a meeting", "find emails from", "calendar conflicts", "send to".
---

# Outlook Connector

Email is the most overloaded surface in the enterprise. Use Copilot to triage and draft, never to send unread.

---

## Quick Reference

| Task | Approach |
|---|---|
| Triage an inbox | Bucket → drafts → human review → send |
| Reply in-thread | Use `conversationId`; never auto-rewrite the subject |
| Schedule a meeting | Find free/busy across attendees → propose 3 slots → book on confirmation |
| Forward externally | Strip earlier internal-only messages; remove sensitive attachments |
| Search a mailbox | KQL with sender + date range + folder filter |
| Bulk action | Dry-run first; never auto-send via rules |

## When to Use

- Triaging a backlog (see [email-triage](../email-triage/SKILL.md)).
- Drafting replies grounded in the thread + attachments.
- Scheduling meetings from natural-language constraints ("next Tue–Thu, 30 min, anyone in EMEA").
- Searching across mailboxes you have delegated access to.
- Producing a meeting invite from a [meeting-prep](../meeting-prep/SKILL.md) brief.

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

## Critical Rules

- **Never auto-send.** Every Copilot-drafted message goes through human review.
- **Recipient list = blast radius.** Always verify To/Cc/Bcc before send.
- **Forwarding externally is a different ask.** Earlier internal context, attachments, sensitivity labels — all need re-checking.
- **Calendar invites have a body.** Empty invites get ignored or declined.
- **Time zones travel with the invite.** Verify the organizer's TZ matches intent.

## Common Pitfalls

- "Reply All" to a distribution list with 2,000 members.
- Forwarding a thread externally that contains an internal-only earlier message.
- Calendar invites without a body — recipients can't tell what the meeting is for.
- Time zones — always confirm the organizer's TZ vs. attendees'.
- Stripped signatures or classification banners after Copilot rewrite.
- Subject-line rewrites breaking thread continuity in the recipient's mailbox.
- Inline replies that lose the thread quote, making downstream readers context-blind.

## Anti-Patterns

- Auto-send rules driven by Copilot output. Never. Always human-in-the-loop.
- Using mailbox rules to delete what Copilot misclassified — silent loss of evidence.
- Asking Copilot to "summarize my inbox" without a scope filter — privacy and cost both blow up.
- Treating Copilot voice samples (recent sent items) as sufficient for an external counterparty's voice.

## Verify Before Send

- [ ] Recipients (To/Cc/Bcc) correct, current, and intended.
- [ ] Subject preserves thread continuity.
- [ ] Attachments include only what should travel.
- [ ] Sensitivity label appropriate for external recipients (if any).
- [ ] Signature / classification banner intact.
- [ ] Commitments (dates, dollar amounts, names) verified against source.
- [ ] No prompt artifacts ("Sure, here's…", placeholders).

## Related

- [email-triage](../email-triage/SKILL.md), [meeting-prep](../meeting-prep/SKILL.md)
- [teams-connector](../teams-connector/SKILL.md), [planner-connector](../planner-connector/SKILL.md)
- [protect-sensitive-info](../protect-sensitive-info/SKILL.md), [verify-before-send](../verify-before-send/SKILL.md)
