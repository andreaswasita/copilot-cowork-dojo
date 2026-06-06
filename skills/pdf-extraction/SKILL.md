---
name: pdf-extraction
category: kumite-office
description: >-
  Extract text, tables, citations, forms, and metadata from PDFs as grounded
  context for downstream M365 Copilot work. Use whenever a source for
  research-synthesis, decision-memo, or document-summarization arrives as a
  PDF (contracts, regulatory filings, policy documents, vendor reports,
  scanned forms, fillable intake forms, academic papers), including
  encrypted, permission-restricted, hybrid native-plus-scan, or large
  multi-hundred-page packs. Triggers: "extract from this PDF", "summarize
  this filing", "pull table from PDF", "OCR this scan", "read the fillable
  form", "this PDF is password-protected".
---

# PDF Extraction

PDFs are where evidence goes to die. Extract it cleanly before you synthesize, or you'll synthesize on top of OCR garbage.

> Cowork skill. The deliverable is *grounded context* for downstream skills (synthesis, memo, summary), not the PDF itself. For programmatic PDF parsing, use the agents dojo.

---

## Quick Reference

| Task | Approach |
|---|---|
| Triage a new PDF | Classify (native vs. scan); pull metadata; identify sections |
| Summarize a long filing | Section-by-section extraction -> synthesis, never one-shot summary |
| Pull a table | Request markdown / CSV; verify column alignment on a known row |
| Cite a clause | Quote verbatim with section reference, not page number |
| Multi-PDF research | Per-PDF metadata first -> cross-document synthesis matrix |
| Scanned doc | Verify OCR quality on three random sentences before trusting |
| Fillable form | Extract field values (not glyphs); pair each with its label; flag flattened forms |
| Encrypted / restricted | Note the restriction; request an unrestricted copy, don't OCR around copy-protection |
| Hybrid native + scan | Classify per section; OCR only the image pages; tag confidence per section |

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

## Hard Cases

Most PDFs extract cleanly with the steps above. These are the ones that quietly corrupt your evidence if you treat them like a plain native PDF.

**Fillable forms (intake forms, applications, government PDFs).** The thing you want is the *field value*, not the rendered glyphs sitting on top of the field. Extract values paired with their field labels (`Applicant Name: Jordan Lee`), not a free-floating list of strings. Two traps: a *flattened* form has been printed-to-PDF, so the values are now just text or an image and the label-to-value pairing is gone — treat it as native text or a scan and reconstruct pairs by position. A *live* form may also hold values you can't see on the page (cleared, off-page, or default-but-unsubmitted) — extract the visible answer and ignore stale defaults, and say so. Checkboxes and radio buttons read as state, not text: record `Citizen: Yes` / `[X] Married`, never the box character.

**Encrypted or permission-restricted PDFs.** If it asks for a password to open, you need the password — request it, don't guess. If it opens but blocks copy/extract (an owner-permission restriction), that is a signal, not a speed bump: do not OCR-screenshot around a copy restriction to launder protected content. Note the restriction in the context block and ask the owner for an extractable copy. Many "broken extraction" reports are really silent permission blocks.

**Hybrid native + scanned.** A native document with scanned exhibits stapled in (a typed contract with signed-signature-page images, a filing with photographed appendices) is the most-missed case. Classify *per section*, not per file: extract the native pages as text, OCR only the image pages, and tag confidence per section so downstream sees `Body: verbatim` next to `Exhibit C: OCR-best-effort`.

**Rotated, skewed, or multi-orientation pages.** Landscape tables dropped into a portrait filing, or a scan fed in sideways, will OCR into nonsense or reflow columns wrong. Confirm orientation before trusting any table from those pages.

**Large packs (hundreds of pages).** Don't one-shot a 400-page pack. Pull the metadata and the real section map first, then extract the sections the deliverable actually needs. A whole-document dump you can't verify is worse than three verified sections.

## Examples

| Don't: Anti-example | Do: Good example |
|---|---|
| "Summarize this PDF." | "Extract the executive summary, the risk-factors section, and Table 4 (revenue by segment) — preserve table structure." |
| Citing "page 7" of a 200-page filing. | Citing "Section 3.2 — Material Risks, paragraph 4." |
| Paraphrasing a contract clause for a memo. | Quoting the clause verbatim; paraphrasing only in the analysis around it. |
| Treating a scanned PDF as ground truth. | Verifying OCR on three random spots; flagging "OCR quality: medium" in the context block. |
| Dumping a fillable form's text as one flat list. | Pairing each value with its field label; recording checkbox state as `[X] Married`, not the box glyph. |
| OCR-screenshotting around a copy-restricted PDF. | Noting the permission restriction and requesting an extractable copy from the owner. |

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
- Flattened forms where the value-to-label pairing is already gone, read as a flat string list.
- A live form's stale default or off-page value extracted as if it were the submitted answer.
- A native filing with scanned exhibits classified once for the whole file, so the OCR'd exhibits get tagged `verbatim`.
- A permission-restricted PDF mistaken for a "broken" extraction instead of a deliberate copy block.

## Anti-Patterns

- Pasting screenshots of PDF pages into chat instead of attaching the file.
- Asking Copilot to "summarize" before extraction — you can't verify what was summarized.
- Trusting an exec summary's numbers without cross-checking the body of the document.
- Using the PDF's auto-generated outline as the section structure when the author obviously hand-numbered sections differently.

## Verify Before Hand-Off

- [ ] Source metadata captured (title, author, date, version, jurisdiction).
- [ ] Native / scanned classification recorded; OCR quality noted if scan. For hybrid files, classification + confidence recorded per section.
- [ ] Form fields extracted as label-value pairs; checkbox/radio state recorded as state; flattened-vs-live noted.
- [ ] Encryption / permission restriction noted; no copy-protection bypassed; extractable copy requested if blocked.
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
