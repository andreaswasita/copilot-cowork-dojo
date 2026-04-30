---
name: human-in-the-loop
description: >-
  Define where a human must approve, edit, or intervene in a Copilot
  workflow. Use whenever automation crosses a sensitivity, judgment, or
  external-communication boundary.
---

# Human in the Loop

Automation is leverage. Unsupervised automation is risk. The human-in-the-loop step is where you decide which is which.

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

## Anti-Patterns

- "Human reviews after publishing." That's not a loop, that's an apology.
- Generic "manager approval" with no criteria.
- Over-gating — every step becomes a human bottleneck. Gate where risk lives, not everywhere.
