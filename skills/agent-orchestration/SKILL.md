---
name: agent-orchestration
category: cowork
description: >-
  Sequence specialist agents and humans around a single goal. Use for
  multi-step deliverables — e.g. research → synthesis → draft → review →
  publish. Triggers: "set up the pipeline", "orchestrate agents",
  "research-then-draft", multi-stage workflow.
---

# Agent Orchestration

You are the conductor. Each agent is one section of the orchestra.

---

## Quick Reference (a pipeline has four parts)

| Part | What it is |
|---|---|
| Stages | Ordered list of agent / human steps |
| Gates | What must be true to move from stage N to N+1 |
| Handoffs | A packet between every two stages |
| Logs | Each stage's output captured for replay |

## When to Use

- Multi-stage deliverables (research → synthesis → draft → review → publish).
- Any pipeline that crosses agent specializations or includes a human gate.
- When the same pipeline will run again (e.g., monthly competitive scan).

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

## Examples

| ❌ Pipeline failure | ✅ Pipeline success |
|---|---|
| Chain agents with no gates | Each transition has a gate condition stated |
| One human gate at the very end | Human gates wherever judgment / sensitivity / decision lives |
| Reuse yesterday's pipeline for a different shape | Re-design the pipeline for the new shape |
| Pipeline lives in your head | Pipeline written down in `memory/sessions/<run>.md` |

## Critical Rules

- **Gates between every two stages.** No gate = poison flows downstream.
- **Human-in-the-loop where judgment lives.** Not at the end as an afterthought.
- **Log every run.** Replay is how the pipeline improves.
- **Handoff packet at every transition** ([agent-handoff](../agent-handoff/SKILL.md)).
- **Re-design per problem shape.** Pipelines aren't reusable across problem types.

## Common Pitfalls

- Chaining agents with no gates — first hallucination poisons everything downstream.
- Orchestrations no human ever inspects.
- Reusing yesterday's pipeline for a different shape of problem.
- Pipeline complexity that exceeds the deliverable's value.
- No log → no replay → no improvement.

## Anti-Patterns

- Chaining agents without gates. The first hallucination poisons everything downstream.
- Orchestrations no human ever inspects.
- Reusing yesterday's pipeline for a different shape of problem.
- Over-orchestration — five agents where one would do.

## Verify Before Running

- [ ] Pipeline diagrammed (stages + gates).
- [ ] Each stage has owner (agent / human).
- [ ] Each transition has a gate condition.
- [ ] Each transition has a handoff packet.
- [ ] Human-in-the-loop at every judgment / sensitivity step.
- [ ] Run-log destination prepared.

## Related

- [agent-handoff](../agent-handoff/SKILL.md), [human-in-the-loop](../human-in-the-loop/SKILL.md)
- [learn-from-every-session](../learn-from-every-session/SKILL.md) — run-log feeds lessons
- [protect-sensitive-info](../protect-sensitive-info/SKILL.md)
