---
name: meeting-recap
description: >-
  Produce a recap of decisions, actions, and owners — not a transcript. Use
  within 24h of any meeting where decisions were made or actions assigned.
---

# Meeting Recap

Recaps that read like transcripts get ignored. Recaps with three sections — *Decisions*, *Actions*, *Open* — get acted on.

## How to Use

Prompt Copilot from the Cowork transcript or your notes:

1. Extract **Decisions** — one line each, who decided, effective when.
2. Extract **Actions** — owner, action, due date. No owner = no action — flag instead.
3. Extract **Open questions** — what's unresolved and who needs to answer.
4. Verify every owner against the actual attendee list. Hallucinated owners are the most common defect.

Format the recap so it can be pasted into a Teams channel or email — no preamble, no "in this meeting we discussed."

## Anti-Patterns

- Pasting the full transcript and calling it a recap.
- Vague actions ("look into pricing"). Every action: verb + artifact + date.
- Recaps you don't send within 24h. Memory decays fast.

## Optional: Behavioral Insights Add-on

For recurring meetings (weekly leadership, sprint reviews, steerco), produce a *second*, private companion to the recap — a behavioral readout. This is for the meeting owner only, never circulated.

Ask Copilot to extract from the transcript:

- **Speaking-time distribution** — who spoke for how long; flag if one voice exceeds 50% in a meeting of 6+.
- **Filler-word density** — high counts ("like", "sort of", "I guess") often indicate uncertainty or under-preparation.
- **Conflict-avoidance signals** — topics raised then dropped without resolution, hedged commitments ("we should probably"), unanswered questions.
- **Decision velocity** — number of decisions reached vs. number on the agenda.
- **Leadership patterns** — who closes loops, who opens new threads, who summarizes.

Use this to coach the meeting, not the people. Never paste names + scores into a shared channel.
