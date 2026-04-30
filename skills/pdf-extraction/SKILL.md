---
name: pdf-extraction
category: kumite-office
description: >-
  Extract text, tables, citations, and metadata from PDFs as grounded context
  for downstream M365 Copilot work. Use whenever a source for
  research-synthesis, decision-memo, or document-summarization arrives as a
  PDF (contracts, regulatory filings, policy documents, vendor reports,
  scanned forms, academic papers). Triggers: "extract from this PDF",
  "summarize this filing", "pull table from PDF", "OCR this scan".
---

# PDF Extraction

PDFs are where evidence goes to die. Extract it cleanly before you synthesize, or you'll synthesize on top of OCR garbage.

> Cowork skill. The deliverable is *grounded context* for downstream skills (synthesis, memo, summary), not the PDF itself. For programmatic PDF parsing, use the agents dojo.

---

## Quick Reference

| Task | Approach |
|---|---|
| Triage a new PDF | Classify (native vs. scan); pull metadata; identify sections |
| Summarize a long filing | Section-by-section extraction → synthesis, never one-shot summary |
| Pull a table | Request markdown / CSV; verify column alignment on a known row |
| Cite a clause | Quote verbatim with section reference, not page number |
| Multi-PDF research | Per-PDF metadata first → cross-document synthesis matrix |
| Scanned doc | Verify OCR quality on three random sentences before trusting |

## When to Use

- Any PDF that will become a source citation in a downstream deliverable.
- Multi-PDF research (regulatory filings, vendor responses, academic papers, due-diligence packs).
- Tables embedded in PDFs (financial statements, pricing schedules, org charts).
- Contracts where exact wording matters.

## How to Use

1. **Classify the PDF first.** Native (selectable text) or scanned (image)? Try selecting a sentence — if it selects cleanly, it's native. Scanned PDFs need OCR; flag if quality is poor.
2. **Pull metadata before content.** Title, author, date, version, jurisdiction. Without these you cannot cite the source.
3. **Extract by structure, not by page.** Ask for sections / headings / clauses, not "page 3". Page numbers shift between versions.
4. **Tables as tables.** Request markdown or CSV — never paragraph form. Verify column alignment on a known row (first total, last row, a row with empty cells).
5. **Quote, don't paraphrase, when the citation matters.** Pull the verbatim sentence, then reference it in your synthesis.
6. **Footnotes and endnotes** — extract them with the body. They often hold the qualifications.
7. **Hand off cleanly.** The output of this skill is a structured context block (sections, quotes, tables) ready for [research-synthesis](../research-synthesis/SKILL.md), [decision-memo](../decision-memo/SKILL.md), or [document-summarization](../document-summarization/SKILL.md).

## Examples

| ❌ Anti-example | ✅ Good example |
|---|---|
| "Summarize this PDF." | "Extract the executive summary, the risk-factors section, and Table 4 (revenue by segment) — preserve table structure." |
| Citing "page 7" of a 200-page filing. | Citing "Section 3.2 — Material Risks, paragraph 4." |
| Paraphrasing a contract clause for a memo. | Quoting the clause verbatim; paraphrasing only in the analysis around it. |
| Treating a scanned PDF as ground truth. | Verifying OCR on three random spots; flagging "OCR quality: medium" in the context block. |

## Critical Rules

- **Native vs. scanned classification is step zero.** Skip it and you risk citing OCR garbage as fact.
- **Cite by structure (section / clause / table), never by page.** Page numbers drift across PDF readers, exports, and versions.
- **Quote verbatim when binding.** Contracts, regulations, financial figures, named-entity references.
- **Preserve tables as tables** — markdown or CSV. Paragraph-ified tables lose the column relationships that matter.
- **Tag confidence** — "verbatim", "OCR-best-effort", "inferred-from-context". Downstream skills consume this tag.
- **Sensitivity label travels with the content.** A `Confidential` PDF stays Confidential when its content lands in a memo.

## Common Pitfalls

- Treating an OCR'd scan as ground truth without spot-checking three random sentences.
- Re-flowing a multi-column PDF and not noticing the columns interleaved (very common with academic and legal docs).
- Losing footnotes / endnotes — that's often where the qualifications live.
- Tables that span pages reassembled with row offsets — totals end up off by one.
- Header/footer text (page number, doc title) interleaved into body text.
- Hyperlinks in the PDF lost during extraction.
- Encoding artifacts (`ﬁ` ligature, smart quotes, em-dash) that break downstream search/find.
- Redacted regions that OCR happily "reads" as random characters.

## Anti-Patterns

- Pasting screenshots of PDF pages into chat instead of attaching the file.
- Asking Copilot to "summarize" before extraction — you can't verify what was summarized.
- Trusting an exec summary's numbers without cross-checking the body of the document.
- Using the PDF's auto-generated outline as the section structure when the author obviously hand-numbered sections differently.

## Verify Before Hand-Off

- [ ] Source metadata captured (title, author, date, version, jurisdiction).
- [ ] Native / scanned classification recorded; OCR quality noted if scan.
- [ ] Sections numbered as the author numbered them (not auto-generated).
- [ ] Tables preserved with correct column alignment; totals tie out.
- [ ] Verbatim quotes flagged; paraphrases flagged separately.
- [ ] Footnotes / endnotes extracted with the body.
- [ ] Sensitivity label propagated to the downstream artifact.
- [ ] Citation format ready for downstream skills.

## Related

- [research-synthesis](../research-synthesis/SKILL.md), [document-summarization](../document-summarization/SKILL.md), [decision-memo](../decision-memo/SKILL.md)
- [cite-your-sources](../cite-your-sources/SKILL.md), [protect-sensitive-info](../protect-sensitive-info/SKILL.md)
- [context-gathering](../context-gathering/SKILL.md)
