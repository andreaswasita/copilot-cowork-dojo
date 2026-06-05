---
name: doc-coauthoring
category: kumite-task
description: >-
  Co-author a substantial structured document with Copilot through three
  stages: context gathering, section-by-section refinement, and reader
  testing. Use when writing a proposal, PRD, design doc, decision doc, RFC,
  technical spec, or any long-form doc in Word or on SharePoint. Triggers:
  "write a doc", "draft a proposal", "create a spec", "write up the PRD",
  "design doc", "decision doc", "help me write this".
---

# Doc Co-Authoring

A long document is built section by section, not generated in one shot. Guide the work through three stages so the finished doc actually works for the people who read it.

---

## Quick Reference

| Stage | Goal | You do | Copilot does |
|---|---|---|---|
| 1. Context gathering | Close the knowledge gap | Dump everything you know | Ask clarifying questions |
| 2. Refinement & structure | Build it section by section | Curate brainstormed options | Brainstorm, draft, edit surgically |
| 3. Reader testing | Catch blind spots | Pick reader questions | Answer cold, flag gaps |

## When to Use

- A substantial writing task: proposal, PRD, spec, RFC, decision doc, design doc.
- The doc will be read by others - especially if they will paste it into Copilot to understand it.
- You have lots of scattered context and need help shaping it into structure.
- For a short, single-purpose write (one email, one memo), use [drafting-with-copilot](../drafting-with-copilot/SKILL.md) instead.

## How to Use

Offer the three-stage workflow up front, then run it. If the person prefers freeform, write freeform.

### Stage 1 - Context gathering

1. Ask the meta-questions first: doc type, primary audience, desired impact when someone finishes reading, template to follow, other constraints.
2. Invite a stream-of-consciousness dump - background, prior decisions, why alternatives were rejected, org dynamics, timeline pressure, stakeholder concerns. Tell them not to organize it.
3. Pull context from connected sources where available: SharePoint or OneDrive docs, Teams threads, Outlook mail. If an existing doc has images without alt-text, flag that a reader's Copilot will not see them.
4. Ask 5-10 numbered clarifying questions targeting the gaps. Stop gathering when you can ask about edge cases and trade-offs without needing the basics re-explained.

### Stage 2 - Refinement & structure

1. Agree the section list. If unclear, propose 3-5 sections for the doc type. Create the doc in Word or on SharePoint with all headers and placeholder text.
2. Start with the section that has the most unknowns (usually the core proposal or technical approach). Leave summaries for last.
3. For each section: ask 5-10 clarifying questions, brainstorm 5-20 options, let them curate (keep/remove/combine), check for gaps, then draft.
4. Refine with surgical edits - change the named sentence or bullet, never reprint the whole doc. Ask them to describe the change rather than edit silently, so you learn their style for later sections.
5. After 80% of sections are drafted, re-read the whole doc for flow, contradictions, redundancy, and generic filler.

### Stage 3 - Reader testing

1. Predict 5-10 questions a real reader would ask of this doc.
2. Test cold: open the doc with a fresh Copilot session (or a sub-agent) that has none of your conversation context, and ask those questions. Note what it gets wrong or finds ambiguous.
3. Ask the cold reader what the doc assumes readers already know and where it contradicts itself. Loop back to Stage 2 to fix every gap.
4. Done when the cold reader answers correctly and surfaces no new ambiguity. Then do your own final read - you own the doc.

## Examples

| Don't: One-shot | Do: Three stages |
|---|---|
| Generate the whole doc in one prompt | Build section by section, hardest section first |
| Reprint the full doc on every edit | Surgical edit: "tighten the third paragraph of Risks" |
| Ship once it reads well to the author | Test cold with a fresh Copilot before others read it |
| "Looks done" | Cold reader answered 8/8 questions, no new ambiguity |

## Critical Rules

- Three stages, in order. Context before structure, structure before testing.
- Hardest section first. Summaries last, once the substance exists.
- Surgical edits only. Never regenerate the whole document for a small change.
- Test with a context-free reader. The author always understands their own doc; a cold reader reveals the blind spots.
- The author owns the final read. Copilot co-authors; it does not sign off.

## Common Pitfalls

- Skipping context gathering and drafting on thin information.
- Letting context gaps accumulate instead of asking as they surface.
- Brainstorming in the document itself - that belongs in chat, not the artifact.
- Treating the first good-looking draft as finished, skipping reader testing.
- Editing the doc directly without telling Copilot, so it never learns your style.

## Anti-Patterns

- One-shot generation of a 10-page doc - structure and nuance both collapse.
- Reader testing in your own head - you cannot un-know your own context.
- Rushing stages to "save time" and shipping a doc that confuses every reader.
- Appendix-dumping raw context into the main body instead of linking it.

## Verify Before Sharing

- [ ] Audience and desired impact were named in Stage 1.
- [ ] Every section built section-by-section, hardest first.
- [ ] Whole-doc re-read done for flow and contradictions.
- [ ] Cold reader test passed with no unresolved ambiguity.
- [ ] Author did a final read and checked facts, links, and details.
- [ ] Sensitive content cleared per [protect-sensitive-info](../protect-sensitive-info/SKILL.md).

## Related

- [drafting-with-copilot](../drafting-with-copilot/SKILL.md) - for short, single-purpose writes
- [clarify-the-ask](../clarify-the-ask/SKILL.md), [context-gathering](../context-gathering/SKILL.md)
- [decision-memo](../decision-memo/SKILL.md), [word-authoring](../word-authoring/SKILL.md)
- [reviewing-output](../reviewing-output/SKILL.md), [verify-before-send](../verify-before-send/SKILL.md)
