---
name: plan-before-prompt
category: kata
description: >-
  Sketch the deliverable structure before you open a Copilot prompt. Use for
  any output longer than a paragraph: memos, briefs, decks, recaps, status
  updates, proposals. Skip only for one-line answers. Triggers: "draft a
  memo", "build a deck", "write a brief", second time reprompting.
---

# Plan Before Prompt

Copilot drafts beautifully when you give it shape. It rambles when you don't.

---

## Quick Reference

| Deliverable | Skeleton time | Sections to pre-name |
|---|---|---|
| Decision memo | 60s | TL;DR · Context · Options · Reco · Risks · Ask |
| Status update | 60s | RAG · Wins · Risks · Ask |
| Research synthesis | 2min | Sources · Themes · Synthesis · So-what |
| Deck | 3min | One title per slide; one decision per deck |
| Email reply | 30s | Acknowledge · Answer · Next step |

## When to Use

- Any deliverable longer than ~150 words.
- Any deliverable with more than one section or audience.
- When you've already prompted twice and don't like either output — stop, plan, then re-prompt.

## How to Use

Write the skeleton in two minutes before opening Copilot:

```
TITLE
Audience: <who>
Decision/Action: <what they should do after reading>
Sections:
  1. <heading> — <one-line purpose>
  2. <heading> — <one-line purpose>
  3. ...
Sources to cite: <files, links, threads>
Tone: <executive / collegial / formal / direct>
Length: <approx>
```

Then ask Copilot to draft *one section at a time*, feeding it the relevant source per section. Stitch at the end.

## Examples

| ❌ Unplanned | ✅ Planned |
|---|---|
| "Write me a 2-page memo on X" | Skeleton with Context / Options / Reco named, then "draft section 2 from [source]" |
| Reprompting "make it shorter" 5 times | Skeleton with explicit word budget per section |
| Letting Copilot pick headings | You pick headings; Copilot fills under each |
| One mega-prompt | Section-by-section, each with its own source |

## Critical Rules

- **Two minutes of planning saves twenty of reprompting.**
- **You pick the structure**, not Copilot. Structure encodes judgment.
- **Section-by-section drafting**, not one-shot. Each section gets its own source.
- **If you've reprompted twice and still don't like it, stop.** Re-plan.

## Common Pitfalls

- Planning in your head, not on paper — the structure drifts.
- Over-planning a 2-paragraph reply.
- Letting the Copilot draft retrofit the structure (you'll inherit its choices).
- Skipping the "what to leave out" line — the most-skipped, highest-leverage line.

## Anti-Patterns

- "Write me a 2-page memo on X" — you're outsourcing the thinking, not the typing.
- Planning in your head only. Write it down. The act of writing forces clarity.
- Over-planning. Two minutes, not twenty.

## Verify Before Prompting

- [ ] Skeleton written down.
- [ ] Audience and decision named.
- [ ] Each section has a one-line purpose.
- [ ] Sources mapped to sections.
- [ ] Length budget set per section.

## Related

- [clarify-the-ask](../clarify-the-ask/SKILL.md), [intent-framing](../intent-framing/SKILL.md)
- [drafting-with-copilot](../drafting-with-copilot/SKILL.md)
- [refining-iteratively](../refining-iteratively/SKILL.md)
