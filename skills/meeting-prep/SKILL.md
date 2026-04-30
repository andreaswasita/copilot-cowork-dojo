---
name: meeting-prep
category: kumite-task
description: >-
  Produce a brief, agenda, and pre-reads for an upcoming meeting from
  scattered context (prior decks, threads, emails, last meeting's recap).
  Use 24–48h before any meeting that warrants a decision. Triggers: "prep
  for tomorrow's meeting", "need a brief", "build the agenda", steerco prep.
---

# Meeting Prep

A great meeting is decided before it starts. Copilot is excellent at producing the prep that makes that possible.

---

## Quick Reference

| Output | Length | Purpose |
|---|---|---|
| Brief | ≤200 words | Situation · decisions needed · options · risks |
| Agenda | One line per item | Time budget · decision driven |
| Pre-reads | One sentence each | What to read · why · where |

## When to Use

- 24–48h before any decision-making meeting.
- Steerco, board, exec offsites, kickoffs.
- Recurring meetings where last week's recap and this week's data are the inputs.

## How to Use

1. Frame intent: meeting purpose, decisions needed, attendees, time budget.
2. Gather context: last 2–3 related artifacts (recap, deck, status).
3. Ask Copilot for three outputs in this order:
   - **Brief** (≤200 words): situation, decisions to make, options on the table, risks.
   - **Agenda** with time budget per item and the decision each item drives.
   - **Pre-read list** with one-sentence summaries.
4. Verify owners and dates against source. Strip anything Copilot guessed.

## Examples

| ❌ Weak prep | ✅ Strong prep |
|---|---|
| Agenda: "Q3 update · open discussion" | Agenda: "Q3 reforecast — decide approve/revise (15min) · top risk — decide accept/escalate (10min)" |
| Pre-reads: "see attached deck" | Pre-reads: "Deck (slide 4 = ask) · Risk register (rows 2,5,7) · Customer note (1 page)" |
| Brief mentions everyone | Brief names the decision-maker explicitly |
| Letting Copilot invent attendee positions | Strip; verify; ask if uncertain |

## Critical Rules

- **Every agenda item drives a decision.** If not, it's a status update, not a working meeting.
- **Pre-reads cap at 2 pages.** More = unread.
- **Verify attendee positions before stating them.** "Priya supports X" without source is a hallucination.
- **24–48h lead time.** Same-day prep gets skipped.

## Common Pitfalls

- Sending an agenda with no decisions on it.
- Pre-reads that are longer than the meeting.
- Letting Copilot invent attendee positions ("Priya supports X").
- Inviting more people than needed — every extra invitee dilutes the decision.
- No time budget per item → agenda overruns.

## Anti-Patterns

- Sending an agenda with no decisions on it. That's a status meeting, not a working meeting.
- Pre-reads that are longer than the meeting. Cap at 2 pages.
- Letting Copilot invent attendee positions ("Priya supports X"). Strip and verify.
- Brief that buries the decision under context.

## Verify Before Sending

- [ ] Each agenda item has a decision and a time budget.
- [ ] Pre-reads ≤ 2 pages total.
- [ ] No invented attendee positions.
- [ ] Decision-maker named for each decision.
- [ ] Sent 24–48h ahead.

## Related

- [meeting-recap](../meeting-recap/SKILL.md), [decision-memo](../decision-memo/SKILL.md), [status-update](../status-update/SKILL.md)
- [outlook-connector](../outlook-connector/SKILL.md), [teams-connector](../teams-connector/SKILL.md)
- [verify-before-send](../verify-before-send/SKILL.md)
