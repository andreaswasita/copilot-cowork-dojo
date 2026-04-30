---
name: refining-iteratively
description: >-
  Drive Copilot toward a shippable draft with targeted, specific follow-ups
  rather than vague "make it better" prompts. Use after REVIEW, in tight
  loops until the deliverable passes the SHIP gate.
---

# Refining Iteratively

The difference between a 5-prompt session and a 25-prompt session is specificity.

## How to Use

Each refine prompt should name:

1. **What** to change (which section, which sentence).
2. **Why** it's wrong (which review lens flagged it).
3. **What** the right output looks like (a constraint, not just "better").

Template:

> *"In section 2, the second bullet attributes the decision to Priya — verify against [source]; if not confirmed, replace with 'owner TBD'."*

## Examples

- ❌ "Make it more concise." → ✅ "Cut section 1 from 4 paragraphs to 3 sentences. Keep the recommendation, drop the history."
- ❌ "Make it less corporate." → ✅ "Drop 'leverage', 'synergy', 'going forward'. Use direct verbs."

## Anti-Patterns

- "Try again." You've taught Copilot nothing.
- Endless cosmetic tweaks. Two refine passes should get you 90% there. If not, your plan was wrong — re-plan.
