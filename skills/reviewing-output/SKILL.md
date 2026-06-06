---
name: reviewing-output
category: waza
description: >-
  Critically inspect Copilot's draft for facts, tone, omissions, bias, and
  audience fit, then triage what you find by confidence and severity. Use as
  the REVIEW step of the pipeline, before any iteration or shipping. Triggers:
  before refining; before send; before a decision or sign-off; after every
  Copilot draft of meaningful length; reviewing a deliverable, deck, memo,
  or generated code/automation; running specialized passes (callout accuracy,
  silent gaps, will-it-survive-scrutiny, structure integrity).
---

# Reviewing Output

The review pass is where you earn your belt. Apply the same lens you'd apply to a junior teammate's draft, or a teammate's pull request: kindly, but ruthlessly, and only raise what truly matters.

---

## Quick Reference (the five-lens review)

| Lens | Question | Color |
|---|---|---|
| Facts | Every number/name/date/quote traceable? | GREEN/AMBER/RED |
| Tone | Sounds like the audience expects? | GREEN/AMBER/RED |
| Omissions | What did the audience need that's missing? | GREEN/AMBER/RED |
| Bias | Whose perspective is over- or under-represented? | GREEN/AMBER/RED |
| Audience fit | Will the reader make the right decision after reading? | GREEN/AMBER/RED |

Then triage every flag by severity: Critical -> Important -> Suggestion -> Strength.

## When to Use

- Every Copilot draft of more than a paragraph.
- Before any refine pass: review tells you what to refine.
- Before [verify-before-send](../verify-before-send/SKILL.md): review is broader than verify.
- Before a decision, sign-off, or send to a senior audience.

Right-size the effort first (the eligibility check). A throwaway scratch note, an obviously trivial reply, or a draft you've already reviewed and only lightly edited does not need the full pass. Spend the deep review on anything that ships, drives a decision, or carries your name. Do not burn a full five-lens review on a one-line acknowledgement.

## How to Use

1. **Pin the standard.** Open the original ask and the house references it must satisfy: [brand-consistency](../brand-consistency/SKILL.md), the relevant template, and any data sources. You cannot review against a standard you have not opened. This is the knowledge-worker equivalent of reading the project's guidelines before a code review.
2. **Run the five-lens review.** Score each lens GREEN / AMBER / RED.

   | Lens | Question |
   |---|---|
   | Facts | Is every number/name/date/quote traceable? |
   | Tone | Does this sound like the audience expects? |
   | Omissions | What did the audience need that's missing? |
   | Bias | Whose perspective is over- or under-represented? |
   | Audience fit | Will the reader make the right decision after reading? |

3. **Add specialized passes** for what the change actually contains (see the table below). Only run the passes that apply.
4. **Score your confidence** on every issue before you raise it. Filter aggressively: a reviewer who flags everything trains the author to ignore them.
5. **Triage by severity** so the author knows what to fix first.
6. **Tighten after it passes.** Once the deliverable clears review, do one pass to cut redundancy and throat-clearing without changing meaning.

Address every RED / AMBER and every Critical / Important finding in the next refine pass.

## Specialized Review Passes

Borrowed from engineering PR review and translated for knowledge work. Match the pass to what the deliverable contains.

| Pass | Run it when | What it hunts |
|---|---|---|
| Standard compliance | Always | Violations of the ask, the template, or brand/house style. The deliverable's "guidelines" check. |
| Silent-gap hunter | Claims, data, recommendations | The knowledge-worker silent failure: a confident claim with no traceable source, a recommendation with no stated downside, a number that appears from nowhere, a gap papered over with a hedge ("various stakeholders feel..."). These are the empty catch blocks of a memo: they hide the real problem. |
| Survives-scrutiny | Anything sent to a skeptic or decision-maker | The hardest questions a sharp reader will ask. Does the draft answer them, or will it bounce back? These objections are the "tests" the deliverable must pass. Rate each gap by how likely it is to derail the read. |
| Callout accuracy | Exec summaries, captions, chart titles, footnotes, headings | Drift between the callout and the body it summarizes. Summary rot: a headline number or top-line bullet that no longer matches the revised detail beneath it. |
| Structure integrity | Memos, decision docs, structured reports | Whether the structure forces the right takeaway. A decision memo must make the decision unavoidable; a status update must separate done / doing / blocked. Bad structure lets the reader leave with the wrong conclusion. |
| Code or automation review | The deliverable is a script, macro, Power Automate / Logic Apps flow, or formula | The engineering passes apply directly: silent failures and swallowed errors, missing edge cases, comments that lie, and over-complex logic that should be simplified. |

## Confidence Scoring

Not every imperfection is worth the author's time. Before raising an issue, ask how sure you are that it is both real and material.

- **High (raise it):** You verified it against the source or the standard, and it changes a fact, a decision, or whether the piece lands. Raise these every time.
- **Medium (raise only the ones that matter):** Plausibly an issue, but you could not confirm it, or it is a minor style point not called out in the house references. Raise sparingly, labelled as a suggestion.
- **Low (drop it):** Pre-existing, a matter of taste, or something a quick proofread or a tool would catch anyway. Do not clutter the review with it.

Quality over quantity. Three high-confidence findings the author acts on beat fifteen nitpicks they learn to scroll past.

## Triage What You Find

Group every finding so the author works the right order:

- **Critical** (must fix before this goes anywhere): wrong facts, a broken recommendation, a brand or compliance breach, an omission that changes the decision.
- **Important** (should fix): a weak section, an unsourced claim, a tone mismatch for the audience.
- **Suggestion** (nice to have): polish, tighter phrasing, an optional addition.
- **Strength** (say it out loud): what is genuinely good, so the author keeps doing it.

Name the defect and its location, not the vibe. "Para 3 cites a 12% figure with no source" beats "the data feels off."

## Examples

| Don't: Surface review | Do: Triaged five-lens review |
|---|---|
| "Looks good, send it." | Facts AMBER (one number unsourced) - Tone GREEN - Omissions RED (no risk section) -> refine |
| Skim for typos | Reopen sources; verify three claims at random |
| "Make it better" | Name the lens that failed and the specific defect |
| Flag all 15 imperfections equally | 2 Critical, 1 Important, drop 12 low-confidence nitpicks |
| "The recommendation is weak." | Silent-gap pass: "Recommendation states no downside; add the cost and the rejected option." |
| Trust the exec-summary bullet | Callout pass: top-line says 12%, body table now says 9% -> summary rot, reconcile |

## Critical Rules

- **Five lenses, every time.** Skipping one is where defects ship.
- **Pin the standard before you start.** Review against the ask and house references, not memory.
- **Reopen the source artifacts.** Memory of a number does not equal verification.
- **Score confidence; filter aggressively.** Only raise what is real and material.
- **Triage by severity.** Tell the author what to fix first, not just what is wrong.
- **Name the defect, not the vibe.** Cite the location and the specific problem.
- **Bias is a lens you forget.** Ask whose voice is missing.
- **Audience fit is the last word.** Pretty prose that doesn't drive the decision is failure.

## Common Pitfalls

- Reviewing only for grammar.
- Reviewing without the ask or the brand/house references open.
- Trusting Copilot's confidence: confidence does not equal accuracy.
- Flagging every nitpick at equal weight until the author tunes you out.
- Skipping the bias lens because it's uncomfortable.
- Marking AMBER to avoid a refine pass.
- A full deep review on a throwaway draft (or a skim on something that ships).

## Anti-Patterns

- Reviewing only for grammar.
- "Looks good." That's not a review.
- Reviewing without re-opening the source artifacts.
- Reviewing in your head: write the lens scores and the severities down.
- A wall of equal-weight comments with no Critical / Important / Suggestion order.

## Verify Before Refining

- [ ] The ask and house references were open during review.
- [ ] All five lenses scored.
- [ ] Specialized passes run for what the deliverable contains.
- [ ] Each finding has a confidence call; low-confidence noise dropped.
- [ ] Findings grouped Critical / Important / Suggestion / Strength.
- [ ] Each RED / AMBER and each issue has a specific defect named with its location.
- [ ] Source artifacts opened.
- [ ] Bias lens explicitly considered.
- [ ] Audience-fit reread from the audience's perspective.

## Related

- [drafting-with-copilot](../drafting-with-copilot/SKILL.md) -> [refining-iteratively](../refining-iteratively/SKILL.md)
- [verify-before-send](../verify-before-send/SKILL.md), [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md)
- [brand-consistency](../brand-consistency/SKILL.md), [cite-your-sources](../cite-your-sources/SKILL.md)
- [human-in-the-loop](../human-in-the-loop/SKILL.md)
