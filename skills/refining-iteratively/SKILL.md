---
name: refining-iteratively
category: waza
description: >-
  Drive Copilot toward a shippable draft with targeted, specific follow-ups
  rather than vague "make it better" prompts. Use after REVIEW, in tight
  loops until the deliverable passes the SHIP gate. Triggers: any refine
  prompt; "tighten this", "make it stronger", "fix section X".
---

# Refining Iteratively

The difference between a 5-prompt session and a 25-prompt session is specificity.

---

## Quick Reference (a refine prompt names three things)

| Slot | What goes in |
|---|---|
| What | Which section, which sentence |
| Why | Which review lens flagged it |
| How | Constraint that defines "right" — not just "better" |

## When to Use

- After [reviewing-output](../reviewing-output/SKILL.md) flagged 🔴 / 🟡.
- When Copilot's first draft is structurally right but specifics need work.
- *Not* when the structure is wrong — re-plan instead.

## How to Use

Each refine prompt should name:

1. **What** to change (which section, which sentence).
2. **Why** it's wrong (which review lens flagged it).
3. **What** the right output looks like (a constraint, not just "better").

Template:

> *"In section 2, the second bullet attributes the decision to Priya — verify against [source]; if not confirmed, replace with 'owner TBD'."*

## Examples

| ❌ Vague refine | ✅ Specific refine |
|---|---|
| "Make it more concise." | "Cut section 1 from 4 paragraphs to 3 sentences. Keep the recommendation, drop the history." |
| "Make it less corporate." | "Drop 'leverage', 'synergy', 'going forward'. Use direct verbs." |
| "Tighten the intro." | "Intro must lead with the recommendation in one sentence, then 2 sentences of context." |
| "Try again." | "Section 2 invented an owner — pull the actual owner from [risk log row 4]." |

## Critical Rules

- **Two refine passes should get you to 90%.** If not, re-plan.
- **Constraints, not adjectives.** "Under 80 words" beats "shorter."
- **Cite the lens.** Tells Copilot what defect to fix.
- **One target per prompt.** Multi-target refines drift.
- **Cosmetic-only refines are wasted prompts.** Refine for substance.

## Common Pitfalls

- "Make it better" — Copilot has no signal.
- Endless cosmetic tweaks while substance defects remain.
- Refining a section that's structurally wrong — re-plan instead.
- Refines that drop earlier verified content (e.g., losing a citation in a rewrite).

## Anti-Patterns

- "Try again." You've taught Copilot nothing.
- Endless cosmetic tweaks. Two refine passes should get you 90% there. If not, your plan was wrong — re-plan.
- Refining without re-reviewing the result.
- Re-prompting from scratch when one targeted refine would do.

## Verify After Each Refine

- [ ] Targeted defect actually fixed.
- [ ] No regression in earlier verified content.
- [ ] Citations still intact.
- [ ] Length / structure still in budget.
- [ ] Re-run the relevant lens from [reviewing-output](../reviewing-output/SKILL.md).

## Related

- [reviewing-output](../reviewing-output/SKILL.md), [drafting-with-copilot](../drafting-with-copilot/SKILL.md)
- [plan-before-prompt](../plan-before-prompt/SKILL.md) — when refines aren't enough
- [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md)
