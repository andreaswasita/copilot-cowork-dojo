---
name: intent-framing
category: waza
description: >-
  Frame audience, outcome, format, and constraints into one short brief that
  every subsequent prompt builds on. Use as the first step of the CLARIFY →
  PLAN pipeline for any non-trivial deliverable. Triggers: opening a new
  Cowork session, switching topics mid-session, "let's draft a…".
---

# Intent Framing

The single paragraph at the top of your Cowork session that everything else inherits from.

---

## Quick Reference

| Slot | What goes in |
|---|---|
| Audience | Specific role(s); not "the team" |
| Outcome | The decision or action they take after |
| Format | Memo / email / slide / table / one-pager |
| Constraints | Length · tone · must-include · must-avoid · deadline |

## When to Use

- First prompt of any non-trivial Cowork session.
- When changing direction mid-session — re-frame, don't drift.
- When handing a session to another agent or person — they inherit the frame.

## How to Use

Write a 4-line frame and pin it to the session:

```
Audience: <who reads this>
Outcome: <what they decide or do>
Format: <memo / email / slide / table / one-pager>
Constraints: <length, tone, must-include, must-avoid, deadline>
```

Reference it in every follow-up: *"Per the frame, keep this under 200 words."*

## Examples

| ❌ Frameless | ✅ Framed |
|---|---|
| "Help me write something about Q3" | "Audience: SLT · Outcome: approve Q3 reforecast · Format: 1-page memo · Constraints: ≤500 words, neutral tone, must include cash bridge" |
| "Draft a deck" | "Audience: board · Outcome: ratify acquisition · Format: 8 slides max · Constraints: financials on slide 4, risks on slide 6" |
| "Update the team" | "Audience: project team · Outcome: know what changed · Format: Teams post · Constraints: ≤150 words, link to plan" |

## Critical Rules

- **Pin the frame.** Reference it; don't restate it in every prompt.
- **Audience is a role, not "everyone."**
- **Outcome is a verb** the reader does (decide, approve, sign, schedule).
- **Constraints include what to *avoid***, not just what to include.

## Common Pitfalls

- Vague format ("a doc") — pick the artifact type.
- Audience drift — frame says "exec", drafts default to peer-level.
- Re-framing in every prompt instead of pinning once.
- Missing deadline → no urgency → endless polishing.

## Anti-Patterns

- Re-stating the audience in every prompt — pin it once.
- Vague format ("a doc") — pick the artifact.
- Omitting constraints. Constraints are what make outputs shippable.
- Framing at the end ("oh by the way it's for the board").

## Verify Before Drafting

- [ ] Audience named with specific role.
- [ ] Outcome stated as a verb the reader performs.
- [ ] Format chosen.
- [ ] Length, tone, deadline, must-include, must-avoid all named.
- [ ] Frame pinned to the session.

## Related

- [clarify-the-ask](../clarify-the-ask/SKILL.md) → [plan-before-prompt](../plan-before-prompt/SKILL.md)
- [context-gathering](../context-gathering/SKILL.md), [drafting-with-copilot](../drafting-with-copilot/SKILL.md)
- [agent-handoff](../agent-handoff/SKILL.md) — frame travels in the handoff packet
