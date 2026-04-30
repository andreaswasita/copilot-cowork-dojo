---
name: cite-your-sources
category: kata
description: >-
  Every factual claim in a Copilot-assisted deliverable links to a file,
  message, URL, or named source the reader can open. Use whenever you produce
  research, analysis, recaps, or any document that informs a decision.
  Triggers: any quoted number, named individual, "per the…", "according to…",
  Copilot summaries.
---

# Cite Your Sources

Citations are how trust scales. Without them, every reader has to re-do your work to believe you.

---

## Quick Reference

| Claim type | Citation form |
|---|---|
| A number | Link to the cell / row / report section |
| A quote | Link to the message / page / minute-mark, with verbatim text |
| A decision | Link to the decision record / meeting minute |
| A person's view | Link to where they wrote / said it |
| A synthesis | Label as "Synthesis:" + link to the matrix / sources |
| Public fact | Link to the canonical source (not a Copilot summary of it) |

## When to Use

- Research syntheses, briefs, decision memos, recaps, audit responses.
- Any number or quote that didn't come from your own head.
- Any time you used Copilot to summarize or extract — link the source it summarized.
- Anything cross-team or external — your reader's tolerance for "trust me" is zero.

## How to Use

- Inline links to the actual artifact (file, Loop, Teams thread, URL). Not "per the deck" — link the deck.
- For named individuals, link the person card or the message where they said it.
- For numbers, link the report cell or the row, not just the workbook.
- For Copilot-generated paragraphs, ask Copilot to list the sources it used and verify each before keeping the paragraph.

## Examples

| ❌ Vague | ✅ Cited |
|---|---|
| "Per recent analysis, churn is up." | "Q3 churn was 4.1% ([SaaS metrics workbook → Q3 tab](link))." |
| "Legal said it's fine." | "Per [Priya's note in #project-helios](link), legal review concludes Friday." |
| "The deck shows growth in EMEA." | "EMEA grew 18% YoY ([Q3 board deck → slide 7](link))." |
| "According to the report…" | "Per [Q3 risk register, row 14](link), the OFAC review is the top risk." |

## Critical Rules

- **Link the artifact, not the summary.** Don't cite Copilot — cite what Copilot read.
- **Inline citations, not footnotes.** Readers don't follow footnotes.
- **Numbers cite to the cell.** Workbook-level citation is too coarse.
- **Synthesis claims are labeled.** "Synthesis:" tells the reader this is your inference.
- **If you can't cite it, cut it or downgrade to an open question.**

## Common Pitfalls

- Citing the prompt instead of the source.
- Citing a doc the audience can't open (different SharePoint site, different tenant).
- Trusting Copilot's invented "according to..." attributions.
- Linking to the file but not the section / cell / minute mark.
- Citation-by-vibe ("per recent analysis") — useless.

## Anti-Patterns

- "Per recent analysis" — useless. Which analysis. Where.
- Citing the prompt instead of the source. Copilot is not a source.
- Trusting Copilot's invented "according to..." attributions. Verify or strip.
- Footnote-only citation — out of sight, out of mind.

## Verify Before Citing

- [ ] Every link opens for the target audience.
- [ ] Numbers cite the cell / row, not just the workbook.
- [ ] Quotes are verbatim from the source.
- [ ] Person attributions point to where the person actually said it.
- [ ] Synthesis claims labeled and reproducible from the matrix.

## Related

- [verify-before-send](../verify-before-send/SKILL.md), [research-synthesis](../research-synthesis/SKILL.md)
- [reviewing-output](../reviewing-output/SKILL.md)
- [protect-sensitive-info](../protect-sensitive-info/SKILL.md) — make sure the cited source is appropriate to share
