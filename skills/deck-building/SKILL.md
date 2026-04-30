---
name: deck-building
category: kumite-office
description: >-
  Build PowerPoint decks with Copilot using approved templates, layouts, and
  slide-narrative discipline. Use for QBRs, steerco updates, board pre-reads,
  customer briefings — any deliverable that ships as a .pptx.
---

# Deck Building

A good deck has one idea per slide and a story across slides. Copilot will happily produce neither unless you force the structure.

## When to Use

- QBR, steerco, board pre-read, all-hands, customer pitch.
- Converting a memo into a deck (or vice versa).
- Refreshing an existing deck with new data while keeping brand/template.

## How to Use

1. **Storyboard first, slides second.** Write the slide titles as full sentences (the *takeaway* of each slide). 6–10 takeaways = 6–10 slides.
2. **Anchor the template.** Attach the team/tenant template. Tell Copilot which layouts exist ("Title", "Section Header", "Two Content", "Quote"). It will respect them.
3. **One slide at a time.** "Build Slide 4 — `Adoption is up 32% but support tickets doubled` — using the attached usage telemetry. Layout: Two Content."
4. **Speaker notes are part of the deliverable.** Ask for them explicitly — Copilot omits by default.
5. **Verify every chart, every number, every logo.** Hallucinated data on a slide is the highest-blast-radius defect in the dojo.

## Examples

- ❌ "Make me a 10-slide deck on our Q1 results." → ✅ Provide 10 takeaway titles + the source workbook, ask Copilot to build one slide per turn against the template.
- ❌ Accepting auto-generated icons / stock photos for an external customer deck. → ✅ Use only template-approved imagery; flag missing assets with a comment.

## Anti-Patterns

- "Make a nice deck" — guarantees off-brand, generic output.
- Letting Copilot pick the layout — you'll get inconsistent slide masters.
- Skipping speaker notes — the presenter improvises and goes off-message.
- Pasting a long memo and asking for "a deck version" without storyboarding first.
