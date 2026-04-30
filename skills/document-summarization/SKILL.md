---
name: document-summarization
category: kumite-task
description: >-
  Faithfully summarize a long document at the right altitude for the
  audience. Use for board pre-reads, exec briefs, policy reviews, RFP
  responses. Triggers: "summarize this", "give me the highlights", "TL;DR
  of this PDF", "exec summary of the report".
---

# Document Summarization

Summarization is the easiest thing for Copilot to do badly. The fix is altitude.

---

## Quick Reference (pick the altitude first)

| Altitude | Length | Use case |
|---|---|---|
| 30,000 ft | 1 paragraph | Exec who has 60 seconds |
| 10,000 ft | 1 page | Board pre-read; briefing memo |
| Ground | Section-by-section | Policy review; RFP response |

## When to Use

- Before any read where the source > 10 pages and the audience won't read all of it.
- Board pre-reads, exec briefs, customer responses, regulatory submissions.
- When you need to compare two long documents — summarize each, then compare.

## How to Use

State the altitude explicitly:

- **30,000 ft** — one paragraph: what it is, why it matters, what to do.
- **10,000 ft** — one page: structure mirrors the source, key points only.
- **Ground** — section-by-section, no compression.

Then prompt:

> *"Summarize [doc] at the 10,000 ft altitude for [audience]. Preserve [these specific items]. Drop anything not directly relevant to [decision]."*

Verify by spot-checking three claims against the source. If any drift, re-prompt with corrections.

## Examples

| ❌ Altitude-less | ✅ Altitude-set |
|---|---|
| "Summarize this 80-page report." | "Summarize at 30k ft for the CFO. Preserve the cash-bridge numbers. ≤120 words." |
| Summary invents emphasis the source didn't have | Spot-check 3 claims; re-prompt if drift |
| Skip verification because "sounds right" | Open the source; verify three random claims |
| Summary same length as source's exec summary | Pick a different altitude or stop |

## Critical Rules

- **Altitude is the first parameter.** Without it, Copilot picks one — usually wrong.
- **Spot-check three claims.** Drift is the dominant defect.
- **Preserve specifics the audience needs.** "Preserve" is as important as "drop."
- **Don't compress beyond what the audience needs.** Over-compression loses signal.
- **Cite the source, not the summary.**

## Common Pitfalls

- "Summarize this" — altitude-less ask.
- Summaries that invent emphasis the source didn't have.
- Skipping verification because the summary "sounds right."
- Summarizing a document the audience could read in less time than the summary.
- Re-summarizing a summary — drift compounds.

## Anti-Patterns

- "Summarize this." That's an altitude-less ask.
- Summaries that invent emphasis the source didn't have.
- Skipping verification because the summary "sounds right."
- Treating Copilot's summary as the source.

## Verify Before Sending

- [ ] Altitude matches audience need.
- [ ] Three random claims verified against source.
- [ ] Specifics named in the prompt are preserved.
- [ ] Source linked alongside the summary.
- [ ] No invented emphasis or framing.

## Related

- [pdf-extraction](../pdf-extraction/SKILL.md) — for PDF-source summaries
- [research-synthesis](../research-synthesis/SKILL.md) — when summarizing multiple sources
- [cite-your-sources](../cite-your-sources/SKILL.md), [verify-before-send](../verify-before-send/SKILL.md)
