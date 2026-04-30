---
name: agent-orchestration
description: >-
  Sequence specialist agents and humans around a single goal. Use for
  multi-step deliverables — e.g. research → synthesis → draft → review →
  publish.
---

# Agent Orchestration

You are the conductor. Each agent is one section of the orchestra.

## How to Use

1. **Map the pipeline** end-to-end: which agent (or human) owns which step?
2. **Define gates** between steps — what must be true to move on.
3. **Write the handoff packet** for each transition (`agent-handoff`).
4. **Insert human checks** wherever a decision, sensitivity, or judgment call lives (`human-in-the-loop`).
5. **Log the run** in `memory/sessions/` so the orchestration can be replayed.

Example pipeline:

```
research-agent → synthesis-agent → HUMAN review → comms-agent → HUMAN ship gate
```

## Anti-Patterns

- Chaining agents without gates. The first hallucination poisons everything downstream.
- Orchestrations no human ever inspects.
- Reusing yesterday's pipeline for a different shape of problem.
