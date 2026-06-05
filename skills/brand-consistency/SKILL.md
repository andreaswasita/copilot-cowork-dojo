---
name: brand-consistency
category: kumite-office
description: >-
  Apply your organization's brand - colors, typography, logo, and tone - 
  consistently across Copilot-generated deliverables in Word, PowerPoint,
  Teams, and Viva. Use when polishing a deck, document, or post so it looks
  on-brand and accessible. Triggers: "make it on-brand", "apply our branding",
  "brand colors", "company template", "style this deck", "corporate identity",
  "match our style guide".
---

# Brand Consistency

On-brand work signals it came from your org, not from a generic template. Capture the brand once as tokens, then apply them the same way every time.

---

## Quick Reference

| Element | Where the value lives | Apply to |
|---|---|---|
| Primary / dark color | Your brand style guide | Headings, dark backgrounds |
| Light / background color | Style guide | Page and slide backgrounds |
| Accent colors (2-3) | Style guide | Shapes, charts, callouts - cycle them |
| Heading font | Style guide (with safe fallback) | Titles 24pt+ |
| Body font | Style guide (with safe fallback) | Body text |
| Logo + clear-space rule | Brand assets | Title slide, doc header, footer |

## When to Use

- Finishing a deck, document, or post that goes to customers, leadership, or the whole org.
- Converting a rough Copilot draft into something that matches the company template.
- Standardizing a set of deliverables so they look like one consistent family.
- Skip for internal scratch work and quick notes - brand polish is for things others see.

## How to Use

1. Capture your brand tokens once. From your org's style guide, record the exact color hex values, the heading and body fonts (with system-safe fallbacks), and the logo with its clear-space rule. Keep this token list where Copilot can read it (a SharePoint page or the project's reference doc).
2. Start from the official template. Use the corporate Word or PowerPoint template rather than restyling a blank file - it already carries master styles.
3. Apply the type hierarchy. Heading font for titles 24pt and up, body font for everything else. Let the fallback fonts apply automatically if the brand fonts are not installed.
4. Apply color with intent. Primary for text and structure, accents only for shapes, charts, and callouts. Cycle the 2-3 accents rather than inventing new ones.
5. Check accessibility. Verify text-to-background contrast meets WCAG AA (4.5:1 for body text). On-brand never overrides readable.
6. Place the logo per the clear-space rule and keep it consistent across every deliverable in the set.

## Examples

| Don't: Off-brand | Do: On-brand |
|---|---|
| Random hex colors picked by eye | Exact brand hex values from the style guide |
| Default Calibri everywhere | Heading font 24pt+, body font for text, per the guide |
| Five accent colors on one slide | The org's 2-3 accents, cycled consistently |
| Light gray text on white "because it looks clean" | Contrast checked to WCAG AA before shipping |
| Logo stretched into the corner | Logo placed with its defined clear-space |

## Critical Rules

- Tokens come from the official style guide - never approximate brand colors by eye.
- Build on the corporate template, not a blank file.
- Accents are for non-text elements; primary/neutral carry the text.
- Accessibility wins ties. If on-brand color fails contrast, adjust until it passes.
- One brand, one set of tokens, applied identically across the whole deliverable set.

## Common Pitfalls

- Hardcoding one project's colors as if they were the brand - read the current style guide.
- Forgetting font fallbacks, so the doc renders in a default font on other machines.
- Over-accenting until the deck looks like a color test page.
- Ignoring contrast and shipping text nobody can read on a projector.
- Inconsistent logo size or placement across slides in the same deck.

## Anti-Patterns

- Treating "on-brand" as decoration applied last instead of structure applied throughout.
- Copying another company's palette (including a vendor's) instead of using your own.
- Letting brand styling degrade legibility or accessibility.
- Re-deriving the tokens from memory each time instead of reading the source of truth.

## Verify Before Sharing

- [ ] Colors match the style guide's exact values.
- [ ] Heading and body fonts applied, with safe fallbacks.
- [ ] Accents used only on non-text elements, limited to the brand set.
- [ ] Text-to-background contrast meets WCAG AA.
- [ ] Logo placed per clear-space rule, consistent across the set.
- [ ] Built on the official template, not a blank file.

## Related

- [deck-building](../deck-building/SKILL.md), [word-authoring](../word-authoring/SKILL.md)
- [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md)
- [internal-comms](../internal-comms/SKILL.md) - on-brand org posts
- [protect-sensitive-info](../protect-sensitive-info/SKILL.md)
