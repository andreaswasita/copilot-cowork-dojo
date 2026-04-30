---
name: pdf-extraction
category: kumite-office
description: >-
  Extract text, tables, and metadata from PDFs as grounded context for
  downstream Copilot work. Use whenever a source for research-synthesis,
  decision-memo, or document-summarization arrives as a PDF (contracts,
  filings, policy documents, vendor reports, scanned forms).
---

# PDF Extraction

PDFs are where evidence goes to die. Extract it cleanly before you synthesize, or you'll synthesize on top of OCR garbage.

## When to Use

- Any PDF that will become a source citation in a downstream deliverable.
- Multi-PDF research (regulatory filings, vendor responses, academic papers).
- Tables embedded in PDFs (financial statements, pricing schedules, org charts).

## How to Use

1. **Classify the PDF first.** Native (selectable text) or scanned (image)? Scanned PDFs need OCR — flag if quality is poor.
2. **Pull metadata before content.** Title, author, date, version. Without these you cannot cite the source.
3. **Extract by structure, not by page.** Ask for sections/headings, not "page 3". Page numbers shift between versions.
4. **Tables as tables.** Request markdown or CSV — never paragraph form. Verify column alignment on a known row.
5. **Quote, don't paraphrase, when the citation matters.** Pull the verbatim sentence, then reference it in your synthesis.

## Examples

- ❌ "Summarize this PDF." → ✅ "Extract the executive summary, the risk-factors section, and Table 4 (revenue by segment) — preserve table structure."
- ❌ Citing "page 7" of a 200-page filing. → ✅ Citing "Section 3.2 — Material Risks, paragraph 4."

## Anti-Patterns

- Treating an OCR'd scan as ground truth without spot-checking three random sentences.
- Re-flowing a multi-column PDF and not noticing the columns interleaved.
- Losing footnotes and endnotes — that's often where the qualifications live.
- Paraphrasing a contract clause when downstream work requires the exact wording.
