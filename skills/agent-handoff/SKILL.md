---
name: agent-handoff
category: cowork
description: >-
  Pass context cleanly between Copilot agents (e.g. analyst agent → comms
  agent). Use whenever a deliverable spans more than one specialist agent
  or persona. Triggers: "hand off to", switching agents, multi-agent
  pipeline, agent A → agent B.
---

# Agent Handoff

Agents do not retain context across handoffs. The handoff packet is the bridge.

---

## Quick Reference (the handoff packet)

| Slot | What goes in |
|---|---|
| From | Agent / persona handing off |
| To | Agent / persona receiving |
| Goal | What the next agent must produce |
| Context links | Files, threads, prior outputs |
| Constraints | Length · tone · audience · deadline |
| What was tried | Prior attempts and outcomes |
| Open questions | What the next agent must resolve |
| Definition of done | How the next agent knows they're finished |

## When to Use

- Any deliverable spanning two or more specialist agents.
- Handing your own work to a teammate (same packet works).
- After a research agent finishes and a drafting agent picks up.
- Before a [human-in-the-loop](../human-in-the-loop/SKILL.md) gate.

## How to Use

When handing off, produce a structured packet:

```
HANDOFF
From: <agent / persona>
To: <agent / persona>
Goal: <what the next agent must produce>
Context links: <files, threads, prior outputs>
Constraints: <length, tone, audience, deadline>
What was tried: <prior attempts and outcomes>
Open questions: <anything the next agent must resolve>
Definition of done: <how the next agent knows it's finished>
```

Paste the packet at the top of the new agent's session. Don't assume any prior context carried over.

## Examples

| ❌ Implicit handoff | ✅ Packet handoff |
|---|---|
| "Continue from where the analyst left off." | Full packet with goal · context · DoD |
| Hand off without DoD | DoD: "draft is ≤500 words, recommendation in TL;DR, all numbers cited" |
| Hand off without prior attempts | "Tried two-paragraph TL;DR — too dense; tried 5-bullet — lost recommendation" |
| Trust the next agent to find context | Attach / link every source explicitly |

## Critical Rules

- **Context never auto-transfers.** The packet *is* the context.
- **Definition of done is mandatory.** Otherwise the next agent invents one.
- **Open questions go in the packet**, not in private notes.
- **What was tried saves the next agent's first three prompts.**
- **The packet is reviewed before paste.** Garbage in = garbage continued.

## Common Pitfalls

- Hand-off without DoD → next agent over- or under-produces.
- Pasting the packet but stripping the constraints.
- Assuming the next agent has access to the same connectors.
- Forgetting to include the prior agent's output as a context link.
- Continuing in the same session and calling it a handoff (it's not).

## Anti-Patterns

- "Continue from where the analyst left off." From where? Spell it out.
- Handing off without a definition of done.
- Letting the next agent re-discover context that's already established.
- Verbal handoffs.

## Verify Before Handing Off

- [ ] All packet slots filled.
- [ ] Definition of done is unambiguous.
- [ ] Context links resolve for the next agent.
- [ ] Constraints inherited from the original frame.
- [ ] Sensitivity / audience preserved.
- [ ] Open questions explicit.

## Related

- [agent-orchestration](../agent-orchestration/SKILL.md), [human-in-the-loop](../human-in-the-loop/SKILL.md)
- [intent-framing](../intent-framing/SKILL.md), [context-gathering](../context-gathering/SKILL.md)
- [protect-sensitive-info](../protect-sensitive-info/SKILL.md)
