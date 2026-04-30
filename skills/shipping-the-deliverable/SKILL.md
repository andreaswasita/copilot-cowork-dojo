---
name: shipping-the-deliverable
description: >-
  Final QA gate before sending, sharing, or publishing a Copilot-assisted
  deliverable. Covers citations, sensitivity check, audience fit, and the
  human signature. Use as the last step of the pipeline.
---

# Shipping the Deliverable

The last gate. If the deliverable fails any check, it doesn't ship.

## How to Use

Run the SHIP checklist:

- [ ] **Verified** — every fact, name, number, quote checked against source (`verify-before-send`).
- [ ] **Cited** — every claim links to a source the reader can open (`cite-your-sources`).
- [ ] **Sensitivity** — passes the four-question gate (`protect-sensitive-info`).
- [ ] **Audience-fit** — reads as if the named audience is reading it.
- [ ] **Owned** — your name is on it. You stand behind it.
- [ ] **Logged** — lesson appended to `tasks/lessons.md` (`learn-from-every-session`).

Then ship.

## Anti-Patterns

- Shipping with "// TODO" or "[fill in]" placeholders.
- Forwarding Copilot output without removing prompt artifacts.
- Treating the ship gate as optional under deadline pressure. The gate exists *because* of deadline pressure.
