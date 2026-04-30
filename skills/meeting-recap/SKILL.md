---
name: meeting-recap
category: kumite-task
description: >-
  Produce a recap of decisions, actions, and owners — not a transcript. Use
  within 24h of any meeting where decisions were made or actions assigned.
  Triggers: "recap the meeting", "send notes", "what did we decide", post-
  meeting summary.
---

# Meeting Recap

Recaps that read like transcripts get ignored. Recaps with three sections — *Decisions*, *Actions*, *Open* — get acted on.

---

## Quick Reference

| Section | Format |
|---|---|
| Decisions | One line each · who decided · effective when |
| Actions | Owner · verb + artifact · due date |
| Open | Question · who answers · by when |

## When to Use

- Within 24h of any decision-making meeting.
- After steerco, board, project kickoff, customer call.
- Any meeting with assigned actions.

## How to Use

Prompt Copilot from the Cowork transcript or your notes:

1. Extract **Decisions** — one line each, who decided, effective when.
2. Extract **Actions** — owner, action, due date. No owner = no action — flag instead.
3. Extract **Open questions** — what's unresolved and who needs to answer.
4. Verify every owner against the actual attendee list. Hallucinated owners are the most common defect.

Format the recap so it can be pasted into a Teams channel or email — no preamble, no "in this meeting we discussed."

## Examples

| ❌ Transcript-recap | ✅ Decision-recap |
|---|---|
| "We discussed pricing and it was a long conversation…" | "**Decision**: Adopt option B pricing, effective Q4 (decided by SLT)." |
| "Action: look into pricing" | "**Action**: Maria — draft pricing FAQ for sales by Fri 11/14." |
| Recap pasted with attendee names invented | Owners verified against attendee list; unknowns flagged |
| 1500-word recap | 300-word recap with three sections |

## Critical Rules

- **Three sections only.** Decisions · Actions · Open.
- **Every action: owner + verb + artifact + date.** No owner = flag, not assign.
- **Verify owners against the attendee list.** Most common hallucination.
- **Send within 24h.** Memory decays fast.
- **No preamble.** Start with the first decision.

## Common Pitfalls

- Pasting the full transcript and calling it a recap.
- Vague actions ("look into pricing").
- Recaps you don't send within 24h.
- Decisions without an effective date.
- Mixing personal commentary into the decision lines.

## Anti-Patterns

- Pasting the full transcript and calling it a recap.
- Vague actions ("look into pricing"). Every action: verb + artifact + date.
- Recaps you don't send within 24h. Memory decays fast.
- Hallucinated owners.

## Verify Before Sending

- [ ] Each decision has decider + effective date.
- [ ] Each action has owner + verb + artifact + due date.
- [ ] Owners verified against attendee list.
- [ ] Open questions have an answerer + by-when.
- [ ] No transcript bloat.
- [ ] Sent within 24h.

## Optional: Behavioral Insights Add-on

For recurring meetings (weekly leadership, sprint reviews, steerco), produce a *second*, private companion to the recap — a behavioral readout. This is for the meeting owner only, never circulated.

Ask Copilot to extract from the transcript:

- **Speaking-time distribution** — who spoke for how long; flag if one voice exceeds 50% in a meeting of 6+.
- **Filler-word density** — high counts ("like", "sort of", "I guess") often indicate uncertainty or under-preparation.
- **Conflict-avoidance signals** — topics raised then dropped without resolution, hedged commitments ("we should probably"), unanswered questions.
- **Decision velocity** — number of decisions reached vs. number on the agenda.
- **Leadership patterns** — who closes loops, who opens new threads, who summarizes.

Use this to coach the meeting, not the people. Never paste names + scores into a shared channel.

## Related

- [meeting-prep](../meeting-prep/SKILL.md), [decision-memo](../decision-memo/SKILL.md), [status-update](../status-update/SKILL.md)
- [planner-connector](../planner-connector/SKILL.md) — convert actions into Planner tasks
- [teams-connector](../teams-connector/SKILL.md), [outlook-connector](../outlook-connector/SKILL.md)
- [verify-before-send](../verify-before-send/SKILL.md)
