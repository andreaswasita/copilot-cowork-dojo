---
name: clarify-the-ask
category: kata
description: >-
  Restate the request, surface assumptions, and confirm the deliverable
  before you open Copilot. Use when a request is vague, secondhand,
  urgent-but-fuzzy, arrives in chat as a one-liner, or any time "make me a..."
  appears without an audience or decision attached. Triggers: "quick favor",
  "just summarize", "can you draft", forwarded email with no framing.
---

# Clarify the Ask

The single highest-leverage move in knowledge work with Copilot. A bad ask wastes ten prompts. A clarified ask saves a session.

---

## Quick Reference

| Symptom | Clarification move |
|---|---|
| "Quick favor — can you summarize this?" | Ask for audience + decision before drafting |
| Forwarded email with no message | Ask sender what they want you to do with it |
| "Make me a deck" | Ask: who reads it, what they decide, how long |
| Vague "make it better" | Ask which lens (facts / tone / length / structure) |
| Conflicting constraints | Surface the conflict back; force a choice |

## When to Use

- The requester wrote less than two sentences.
- You can't name the audience or the decision the deliverable supports.
- "Quick favor" or "just summarize this" — these are almost never quick.
- A forwarded email with no framing.
- You catch yourself opening Copilot before you've thought.

## How to Use

Restate the ask back to the requester (or yourself) using this frame:

```
You want me to produce: <deliverable>
For: <audience>
So they can: <decision or action>
By: <when>
Constraints: <length, tone, must-include, must-avoid>
Open questions: <list>
```

If you can't fill every line, ask before drafting. One round of clarification beats three rounds of revision.

## Examples

| ❌ Vague | ✅ Clarified |
|---|---|
| "Summarize the Contoso meeting." | "Two-paragraph recap for the exec team, covering decisions made and open risks, by 5pm — anything I should leave out?" |
| "Draft a reply to legal." | "Polite acknowledgement to legal confirming we'll send the redlines by Friday and asking who the right CC is." |
| "Pull together a status." | "Weekly status for the steerco — 100 words, RAG, headline progress, top risk, one ask." |
| "Help me with the deck." | "Reorder the deck so the recommendation is on slide 2, then trim the appendix to 3 slides." |

## Critical Rules

- **Audience and decision come first.** Without them, every other constraint is guessing.
- **One blocker question, not five.** Identify what's actually preventing you from drafting.
- **Restate in writing.** Verbal clarifications drift; written ones don't.
- **If you can't restate it, you can't draft it.** That's the signal.

## Common Pitfalls

- Drafting first and clarifying later — sunk cost makes you defend a wrong direction.
- Clarification by interrogation — ask the one blocker, not the wishlist.
- Restating the wrong thing back ("you want a memo" when they want a slide).
- Skipping clarification under deadline pressure — that's exactly when it pays most.

## Anti-Patterns

- Drafting first, "checking with the requester later." You'll waste both your time.
- Treating clarification as friction. It is the work.
- Asking five questions when one matters. Pick the one blocker.

## Verify Before Drafting

- [ ] I can name the audience.
- [ ] I can name the decision or action they take after reading.
- [ ] I know the format and the length.
- [ ] I know what *not* to include.
- [ ] I have the sources I'll cite.

## Related

- [intent-framing](../intent-framing/SKILL.md), [plan-before-prompt](../plan-before-prompt/SKILL.md)
- [context-gathering](../context-gathering/SKILL.md)
- [verify-before-send](../verify-before-send/SKILL.md)
