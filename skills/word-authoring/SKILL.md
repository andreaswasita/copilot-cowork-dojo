---
name: word-authoring
category: kumite-office
description: >-
  Author, edit, and review Word documents with Copilot — using styles, tracked
  changes, comments, and section structure. Use whenever the deliverable is a
  .docx (memo, policy, report, contract redline, briefing pack), not a chat
  message.
---

# Word Authoring

Word is not a long email. Use structure: styles, headings, comments, and tracked changes — that's how Word docs get reviewed and approved in the real world.

## When to Use

- Drafting any deliverable longer than one screen.
- Editing an existing document where the reviewer expects tracked changes.
- Producing branded, template-conformant docs (board memo, policy, SOW).

## How to Use

1. **Anchor the template first.** Open the document or attach it before prompting. Tell Copilot which heading styles exist (`Heading 1`, `Heading 2`, `Quote`).
2. **Draft section by section, not all at once.** "Draft Section 2 — Background — using the attached briefing as source." Each section is a verifiable unit.
3. **Use Copilot for revisions as tracked changes**, not silent overwrites. Ask: *"Apply these edits as tracked changes I can accept individually."*
4. **Comments for open questions.** When Copilot is unsure, instruct it to insert a Word comment rather than guess.
5. **Verify the table of contents and cross-references** after every structural edit.

## Examples

- ❌ "Write me a 5-page strategy doc." → ✅ "Using the attached one-pager, draft Section 3 (Risks) with three Heading-2 risks, each with mitigation in a sub-bullet."
- ❌ Pasting Copilot output into a blank doc and emailing it. → ✅ Drafting into the team's approved template, accepting/rejecting tracked changes, then sending.

## Anti-Patterns

- One mega-prompt for the whole document — impossible to review.
- Bypassing tracked changes on a doc someone else owns. They can't see what you changed.
- Auto-formatted bullets where the template uses numbered headings — breaks downstream tooling.
