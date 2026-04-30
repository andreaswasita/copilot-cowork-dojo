---
name: agent-handoff
description: >-
  Pass context cleanly between Copilot agents (e.g. analyst agent → comms
  agent). Use whenever a deliverable spans more than one specialist agent
  or persona.
---

# Agent Handoff

Agents do not retain context across handoffs. The handoff packet is the bridge.

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

## Anti-Patterns

- "Continue from where the analyst left off." From where? Spell it out.
- Handing off without a definition of done.
- Letting the next agent re-discover context that's already established.
