---
name: human-in-the-loop
category: cowork
description: >-
  Define where a human must approve, edit, or intervene in a Copilot
  workflow. Use whenever automation crosses a sensitivity, judgment, or
  external-communication boundary. Triggers: "set up approval", "who signs
  off", "before sending externally", any gate definition.
---

# Human in the Loop

Automation is leverage. Unsupervised automation is risk. The human-in-the-loop step is where you decide which is which.

---

## Quick Reference (gate where risk lives)

| Risk | Gate? | Why |
|---|---|---|
| External communication | ✅ Always | Customer / partner / regulator visible |
| Money, people, legal | ✅ Always | Decisions with consequence |
| Personal / regulated data | ✅ Always | Compliance |
| Diverges from prior pattern | ✅ Always | Novelty = risk |
| Internal cosmetic edit | ❌ | No risk → no gate |
| Routine roll-up matching prior | ❌ | Pattern + low blast = no gate |

## When a Human Must Be in the Loop

- Anything sent externally (customer, partner, regulator).
- Any decision involving money, people, or legal commitment.
- Any output containing personal or regulated data.
- Anything the org would be embarrassed by on a public channel.
- Any time a Copilot output diverges from a prior pattern.

## How to Use

In the orchestration, mark steps as `[HUMAN]`. For each, name:

- **Who** is the human (role, not just person).
- **What** they must verify or approve.
- **By when** the gate must be cleared.
- **Fallback** if the human is unavailable.

## Examples

| ❌ Gate failure | ✅ Gate success |
|---|---|
| "Manager approval" with no criteria | "Director of comms verifies tone + recipient list before send" |
| Gate after publishing | Gate before publishing — a loop, not an apology |
| Same person on every gate (bottleneck) | Right role per gate; fallback named |
| No fallback if human is unavailable | "If approver OOO > 4h, escalate to deputy" |

## Critical Rules

- **Gate where risk lives**, not everywhere.
- **Role, not person.** People go on PTO; roles persist.
- **Criteria, not "looks good."** Specify what to verify.
- **Fallback for unavailability.** Otherwise the gate becomes the bottleneck.
- **Gate before publish, not after.**

## Common Pitfalls

- "Human reviews after publishing" — that's an apology, not a loop.
- Generic "manager approval" with no criteria.
- Over-gating — every step becomes a human bottleneck.
- Under-gating — sensitive content slips externally.
- No fallback → unavailable human stalls the pipeline.

## Anti-Patterns

- "Human reviews after publishing." That's not a loop, that's an apology.
- Generic "manager approval" with no criteria.
- Over-gating — every step becomes a human bottleneck. Gate where risk lives, not everywhere.
- Under-gating to "move faster" on sensitive content.

## Verify Before Running the Pipeline

- [ ] Each gate has role, criteria, by-when, fallback.
- [ ] Gates are pre-publish, not post.
- [ ] Right roles for the risk type (legal for legal, comms for external comms).
- [ ] Bottleneck check: any single role on > 3 gates?
- [ ] Fallback paths tested (or at least named).

## Related

- [agent-orchestration](../agent-orchestration/SKILL.md), [agent-handoff](../agent-handoff/SKILL.md)
- [protect-sensitive-info](../protect-sensitive-info/SKILL.md), [verify-before-send](../verify-before-send/SKILL.md)
- [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md) — the final gate
