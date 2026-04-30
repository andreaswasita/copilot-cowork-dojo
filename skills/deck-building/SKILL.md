---
name: deck-building
category: kumite-office
description: >-
  Build PowerPoint (.pptx) decks with M365 Copilot using approved templates,
  layouts, and slide-narrative discipline. Use for QBRs, steerco updates,
  board pre-reads, customer briefings, all-hands — any deliverable that ships
  as a slide deck. Triggers: "build a deck", "make slides", "QBR deck",
  "steerco", "board pre-read", "PowerPoint", ".pptx".
---

# Deck Building

A good deck has one idea per slide and a story across slides. Copilot will happily produce neither unless you force the structure.

> Cowork skill. Drives Copilot in PowerPoint for human presenters. For programmatic .pptx generation, use the agents dojo.

---

## Quick Reference

| Task | Approach |
|---|---|
| New deck from scratch | Storyboard takeaway titles first → one slide per Copilot turn |
| Refresh existing deck with new data | Anchor the template; replace data slide-by-slide; verify charts |
| Memo → deck | Storyboard the deck — don't auto-convert; the memo's structure ≠ slide structure |
| Deck → memo | Extract takeaway titles + speaker notes → expand into prose |
| Add speaker notes | Always ask explicitly — Copilot omits notes by default |
| Tighten a long deck | Cut to 6–10 takeaway titles; collapse appendix; respect the time box |

## When to Use

- QBR, steerco, board pre-read, all-hands, customer pitch.
- Converting a memo into a deck (or vice versa).
- Refreshing an existing deck with new data while keeping brand/template fidelity.
- Building an executive read-out of a longer analysis.

## How to Use

1. **Storyboard first, slides second.** Write the slide titles as full sentences (the *takeaway* of each slide). 6–10 takeaways = 6–10 slides.
2. **Anchor the template.** Attach the team/tenant template. Tell Copilot which layouts exist ("Title", "Section Header", "Two Content", "Quote", "Comparison").
3. **One slide at a time.** *"Build Slide 4 — `Adoption is up 32% but support tickets doubled` — using the attached usage telemetry. Layout: Two Content."*
4. **Speaker notes are part of the deliverable.** Ask for them explicitly. They are how the presenter stays on-message.
5. **Charts via Excel, not PowerPoint.** Build the chart in Excel ([excel-analysis](../excel-analysis/SKILL.md)), paste-link into the slide. Source-of-truth stays in one place.
6. **Verify every chart, every number, every logo.** Hallucinated data on a slide is the highest-blast-radius defect in the dojo.
7. **Time-box rehearsal.** 1 minute / slide is a useful planning constant. Cut, don't shrink the font.

## Examples

| ❌ Anti-example | ✅ Good example |
|---|---|
| "Make me a 10-slide deck on our Q1 results." | Provide 10 takeaway titles + the source workbook; ask Copilot to build one slide per turn against the template. |
| Accepting auto-generated stock photos for an external customer deck. | Use only template-approved imagery; flag missing assets with a comment. |
| "Convert this memo into a deck." | Storyboard the deck independently — pick the 6 takeaways the audience needs. |
| 14-bullet slides in 12pt font. | One headline, one chart, one sentence of context. The rest goes in speaker notes. |

## Critical Rules

- **Takeaway titles only.** "Q1 Results" is a topic; "Q1 revenue grew 18% on EMEA expansion" is a takeaway. Always the latter.
- **One layout family.** Don't mix template versions or legacy slide masters. Inconsistency reads as carelessness.
- **Charts are linked, not pasted as images** — unless the underlying data is too sensitive to ship.
- **Speaker notes for every content slide.** Section dividers can skip.
- **Build an appendix.** Anything you'd reference under questioning lives there. Don't pad the main flow.
- **No new content on the final slide.** Q&A, contact, or thank-you only.
- **Sensitivity label** before any external share. Decks leak more than memos.

## Common Pitfalls

- "Make a nice deck" — guarantees off-brand, generic output.
- Letting Copilot pick the layout — inconsistent slide masters across the deck.
- Skipping speaker notes — the presenter improvises and goes off-message.
- Pasting a long memo and asking for "a deck version" without storyboarding first.
- Auto-resized charts that crop axis labels or legends.
- Embedded video that doesn't play in the venue's PowerPoint version.
- Animations that read as juvenile in front of a board.
- Smart-art clusters that look great on the laptop and unreadable on a projector.

## Anti-Patterns

- One slide per memo paragraph — destroys narrative arc.
- Reusing yesterday's deck without auditing for stale data, departed people, sunset products.
- Customer logos on slides without explicit reuse permission. Legal incident waiting to happen.
- Deep colors on dark template backgrounds — fails accessibility contrast.

## Verify Before Send

- [ ] Every slide has a takeaway-style title.
- [ ] Every chart has correct axes, units, source citation, and matches the underlying workbook.
- [ ] Speaker notes present on every content slide.
- [ ] Template + master + fonts consistent throughout.
- [ ] No placeholder text, no `[insert metric here]`, no Lorem ipsum.
- [ ] Sensitivity label set; correct classification banner.
- [ ] Logos / customer references reuse-approved.
- [ ] Rehearsed within the time box — slides cut, not crammed.

## Related

- [drafting-with-copilot](../drafting-with-copilot/SKILL.md), [reviewing-output](../reviewing-output/SKILL.md), [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md)
- [excel-analysis](../excel-analysis/SKILL.md) — source the charts there
- [research-synthesis](../research-synthesis/SKILL.md) — the takeaways come from synthesis, not vibes
- [cite-your-sources](../cite-your-sources/SKILL.md), [protect-sensitive-info](../protect-sensitive-info/SKILL.md)
