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
