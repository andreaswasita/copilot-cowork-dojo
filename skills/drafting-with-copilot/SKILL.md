---
name: drafting-with-copilot
category: waza
description: >-
  Drive Copilot through a structured draft section-by-section after CLARIFY,
  PLAN, and CONTEXT are done. Use when producing any multi-section
  deliverable — memo, brief, deck, status, recap. Triggers: "draft section",
  "fill in the section", section-by-section authoring.
---

# Drafting With Copilot

The draft is cheap. Treat it as a starting block, not a finish line.

---

## Quick Reference

| Step | Prompt shape |
|---|---|
| Section 1 | "Draft <section>. Source: <link>. Length: <N words>. Include: <X>. Exclude: <Y>." |
| Read | Read the section before requesting the next |
| Section 2 | Same shape; reference earlier section if it constrains this one |
| Stitch | After all sections drafted, ask for transitions only |
| Don't | Don't ask for "the whole thing" up front |

## When to Use

- Any deliverable longer than 2 paragraphs.
- After [plan-before-prompt](../plan-before-prompt/SKILL.md) has produced a skeleton.
- When you have sources mapped to sections.

## How to Use

1. Confirm the intent frame is pinned.
2. Confirm the context sources are attached and Copilot can list them.
3. Prompt section-by-section, not "draft the whole thing." For each section:
   - Name the section, its purpose, the sources, and the length.
   - Specify *what to include* and *what to leave out*.
4. Read each section before requesting the next — early errors compound.

## Examples

| ❌ One-shot | ✅ Section-by-section |
|---|---|
| "Write the whole memo." | "Draft section 2 (Risks). Use [risk log]. 4 bullets. Each bullet: risk → owner → mitigation. No invented owners." |
| "Make it creative." | "Draft the exec summary. ≤80 words. Lead with the recommendation." |
| "Fill in the deck." | "Draft slide 4 only. One chart: revenue by region. Reference [Q3 workbook → Region tab]." |

## Critical Rules

- **Section-by-section.** Each section gets its own prompt and its own source.
- **Read before next.** Errors compound; catch them at the section.
- **Be boring on purpose.** Structured deliverables don't want creativity.
- **Specify what to *exclude*.** As important as what to include.
- **You picked the structure** in `plan-before-prompt`. Don't let Copilot rewrite it.

## Common Pitfalls

- Asking for "the whole thing" — drift compounds.
- Letting Copilot expand into adjacent sections it wasn't asked for.
- Skipping the read between sections to "go faster."
- Inventing constraints mid-draft instead of in the plan.
- Asking for "tighter" without a number.

## Anti-Patterns

- "Write the whole memo." You'll spend more time fixing than drafting.
- Asking for "creative" output for a structured deliverable. Be boring on purpose.
- Letting Copilot pick the structure. You picked it in `plan-before-prompt`.
- Editing while Copilot is still drafting — race conditions in your head.

## Verify After Each Section

- [ ] Section matches the planned purpose.
- [ ] Length within budget.
- [ ] Sources cited inline.
- [ ] No drift into other sections.
- [ ] No invented facts (names, numbers, dates).

## Related

- [plan-before-prompt](../plan-before-prompt/SKILL.md), [intent-framing](../intent-framing/SKILL.md)
- [reviewing-output](../reviewing-output/SKILL.md), [refining-iteratively](../refining-iteratively/SKILL.md)
- [verify-before-send](../verify-before-send/SKILL.md)
