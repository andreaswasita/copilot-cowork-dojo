---
name: meeting-recap
category: kumite-task
description: >-
  Produce a recap of decisions, actions, and owners — not a transcript. Use
  within 24h of any meeting where decisions were made or actions assigned. For
  a recurring series, also produce a private behavioral readout over a set
  window — speaking-time, decision velocity, and action carryover as a share of
  the whole, each finding tied to one concrete change. Triggers: "recap the
  meeting", "send notes", "what did we decide", post-meeting summary, "are our
  standups working", recurring-meeting health, meeting-series readout.
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

| Don't: Transcript-recap | Do: Decision-recap |
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

## Optional: Series Health Readout (recurring meetings)

For a recurring meeting (weekly leadership, sprint reviews, steerco, daily standup), the single-meeting recap misses the pattern. Once per cadence — monthly, or every 4-6 occurrences — produce a *second*, private companion: a behavioral readout of the *series*, for the meeting owner only, never circulated. The recap reports what happened; the readout reports whether the meeting is working.

The method is borrowed from session-usage analysis and reframed for meetings: pick a window, measure where the time and the decisions actually went, and express each finding as a share of the whole so it is impossible to wave away.

1. **Set the window.** Decide the range before you read anything — last 4 weeks, last 6 occurrences, this quarter. State it on the readout. A finding without a window ("Priya talks a lot") is an opinion; a finding with one ("Priya held 48% of speaking time across the last 6 standups") is a measurement.

2. **Pull the signals** from the transcripts in the window. Ask Copilot for each as a number, not a vibe:

   | Signal | What to measure | The threshold that earns a line |
   |---|---|---|
   | Speaking-time share | Each attendee's talk time as a % of the meeting | One voice over 50% in a group of 6+ |
   | Decision velocity | Decisions reached vs. agenda items, per occurrence | Below half the agenda closing, occurrence after occurrence |
   | Action carryover | Actions reopened/rolled from a prior occurrence as a % of all actions | Carryover above ~30% — the meeting assigns but does not land work |
   | Airtime vs. ownership | Who speaks most vs. who leaves with actions | High talk share, low action share (or the reverse) |
   | Filler / hedge density | Hedged commitments ("we should probably"), unanswered questions | A cluster on one recurring topic — a sign it is being avoided |
   | Time-to-first-decision | Minutes of the meeting before the first decision lands | Most of the meeting gone before anything is decided |

3. **Write 3-5 findings, each as one line, each a share of the whole.** Lead with the figure. Name the subject. Classify the line so the owner reads the shape at a glance — use plain-text labels, never colored dots or emoji:

   - `Concern:` waste or a worsening trend (the meeting is leaking time or not deciding).
   - `Healthy:` a signal that the meeting is working — say it so the owner keeps doing it.
   - `Context:` a neutral fact that frames the others.

   Example lines:
   - `Concern: 62% of the last 4 steercos closed under half the agenda - decisions are slipping to email.`
   - `Concern: one voice held 51% of airtime in a room of 7; two attendees spoke under 4% each.`
   - `Healthy: action carryover fell from 40% to 12% after owners were named in the recap.`
   - `Context: 9 of 11 decisions this month landed in the final 10 minutes - the meeting decides late.`

4. **Tie each concern to one concrete change.** A readout that only names problems is half a job. For every Concern, add one specific, testable adjustment pinned to the row it came from — the meeting analogue of an optimization tied to a specific line, not generic advice.
   - Don't: "Improve participation."
   - Do: "Airtime concentrated 51% on one voice -> pre-assign two agenda items to the quietest attendees next occurrence; recheck the split in 4 weeks."
   - Don't: "Be more decisive."
   - Do: "First decision lands at minute 38 -> move the decision item to the top of the agenda and timebox discussion to 10 minutes."

5. **Keep it private and coach the meeting, not the people.** This readout is for the owner to run a better meeting, never a scorecard pasted into a shared channel or used in a review. Never circulate names plus figures. If a finding implicates one person, frame the fix as a structural change to the meeting, not a callout of the individual.

## Related

- [meeting-prep](../meeting-prep/SKILL.md), [decision-memo](../decision-memo/SKILL.md), [status-update](../status-update/SKILL.md)
- [planner-connector](../planner-connector/SKILL.md) — convert actions into Planner tasks
- [teams-connector](../teams-connector/SKILL.md), [outlook-connector](../outlook-connector/SKILL.md)
- [verify-before-send](../verify-before-send/SKILL.md)
