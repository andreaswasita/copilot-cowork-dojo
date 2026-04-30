---
name: reviewing-output
category: waza
description: >-
  Critically inspect Copilot's draft for facts, tone, omissions, bias, and
  audience fit. Use as the REVIEW step of the pipeline, before any iteration
  or shipping. Triggers: any time before refining; before send; after every
  Copilot draft of meaningful length.
---

# Reviewing Output

The review pass is where you earn your belt. Apply the same lens you'd apply to a junior teammate's draft — kindly, but ruthlessly.

---

## Quick Reference (the five-lens review)

| Lens | Question | Color |
|---|---|---|
| Facts | Every number/name/date/quote traceable? | 🟢/🟡/🔴 |
| Tone | Sounds like the audience expects? | 🟢/🟡/🔴 |
| Omissions | What did the audience need that's missing? | 🟢/🟡/🔴 |
| Bias | Whose perspective is over- or under-represented? | 🟢/🟡/🔴 |
| Audience fit | Will the reader make the right decision after reading? | 🟢/🟡/🔴 |

## When to Use

- Every Copilot draft of more than a paragraph.
- Before any refine pass — review tells you what to refine.
- Before [verify-before-send](../verify-before-send/SKILL.md) — review is broader than verify.

## How to Use

Run a five-lens review:

| Lens | Question |
|---|---|
| Facts | Is every number/name/date/quote traceable? |
| Tone | Does this sound like the audience expects? |
| Omissions | What did the audience need that's missing? |
| Bias | Whose perspective is over- or under-represented? |
| Audience fit | Will the reader make the right decision after reading? |

Mark each lens 🟢 / 🟡 / 🔴 and address every 🔴 / 🟡 in the next refine pass.

## Examples

| ❌ Surface review | ✅ Five-lens review |
|---|---|
| "Looks good, send it." | Facts 🟡 (one number unsourced) · Tone 🟢 · Omissions 🔴 (no risk section) → refine |
| Skim for typos | Reopen sources; verify three claims at random |
| "Make it better" | Name the lens that failed and the specific defect |

## Critical Rules

- **Five lenses, every time.** Skipping one is where defects ship.
- **Reopen the source artifacts.** Memory of a number ≠ verification.
- **Name the defect, not the vibe.** "Tone is too informal" beats "doesn't feel right."
- **Bias is a lens you forget.** Ask whose voice is missing.
- **Audience fit is the last word.** Pretty prose that doesn't drive the decision is failure.

## Common Pitfalls

- Reviewing only for grammar.
- Trusting Copilot's confidence — confidence ≠ accuracy.
- Reviewing without the source artifacts open.
- Skipping the bias lens because it's uncomfortable.
- Marking 🟡 to avoid a refine pass.

## Anti-Patterns

- Reviewing only for grammar.
- "Looks good." That's not a review.
- Reviewing without re-opening the source artifacts.
- Reviewing in your head — write the lens scores down.

## Verify Before Refining

- [ ] All five lenses scored.
- [ ] Each 🔴 / 🟡 has a specific defect named.
- [ ] Source artifacts opened.
- [ ] Bias lens explicitly considered.
- [ ] Audience-fit reread from the audience's perspective.

## Related

- [drafting-with-copilot](../drafting-with-copilot/SKILL.md) → [refining-iteratively](../refining-iteratively/SKILL.md)
- [verify-before-send](../verify-before-send/SKILL.md), [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md)
- [cite-your-sources](../cite-your-sources/SKILL.md)
