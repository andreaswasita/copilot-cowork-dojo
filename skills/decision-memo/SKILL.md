---
name: decision-memo
category: kumite-task
description: >-
  Produce a one-page decision memo: context, options, recommendation,
  risks, ask. Use when you need a leader to make or ratify a decision
  asynchronously. Triggers: "draft a decision memo", "we need a one-pager
  for X", async approval, exec ratification.
---

# Decision Memo

The format that turns 30-minute meetings into 5-minute approvals.

---

## Quick Reference (the structure)

| Section | Length | Purpose |
|---|---|---|
| Title | One line | Decision needed |
| TL;DR | ≤40 words | Recommendation + why |
| Context | 2–4 sentences | Why now |
| Options | 3 max | Pros · cons · cost |
| Recommendation | One option | Why this one |
| Risks & mitigations | 3 max | Top risks + mitigation |
| Ask | One line | What you need + by when |

## When to Use

- Async decision needed from an exec or sponsor.
- Decision worth recording (will be referenced later).
- Trade-off where options need to be visible before the choice.

## How to Use

Standard structure (Copilot will follow it if you name it):

```
TITLE — <decision needed>
TL;DR (≤40 words): recommendation + why
Context: <2–4 sentences>
Options: <3 max, each with pros / cons / cost>
Recommendation: <which option, why>
Risks & mitigations: <3 max>
Ask: <what you need from the reader, by when>
```

Cap at one page. If it doesn't fit, the options aren't sharp enough.

## Examples

| ❌ Memo failure | ✅ Memo success |
|---|---|
| "Let me know your thoughts." | "Ask: approve option B by Fri 11/14 EOD." |
| Two options where one is a strawman | Three real options with honest trade-offs |
| Recommendation buried after 3 pages | TL;DR on line 1; recommendation in TL;DR |
| Risks: "execution risk, market risk" | Risks: "vendor lock-in (mitigation: 2-year exit clause)" |

## Critical Rules

- **One page. No exceptions.** If it doesn't fit, the options aren't sharp.
- **Recommendation in the TL;DR.** Don't make the reader hunt.
- **Three options max, all real.** Strawmen erode trust.
- **Ask is specific and timed.** "Approve by Friday EOD" beats "thoughts?"
- **Risks have mitigations.** Naked risks are noise.

## Common Pitfalls

- Two-option memos where one option is a strawman.
- Recommendations buried after three pages of context.
- "Let me know your thoughts" — non-ask.
- Risks listed without mitigations.
- Cost stated for one option but not others.

## Anti-Patterns

- Two-option memos where one option is a strawman.
- Recommendations buried after three pages of context.
- "Let me know your thoughts." Specify the decision you need.
- Memo > 1 page.

## Verify Before Sending

- [ ] One page (count it).
- [ ] TL;DR has the recommendation.
- [ ] Three options, each with pros / cons / cost.
- [ ] Risks have mitigations.
- [ ] Ask names the action and the by-when.
- [ ] Decision-maker named.
- [ ] Sources cited for cost / risk figures.

## Related

- [research-synthesis](../research-synthesis/SKILL.md), [meeting-prep](../meeting-prep/SKILL.md)
- [word-authoring](../word-authoring/SKILL.md), [confluence-connector](../confluence-connector/SKILL.md)
- [verify-before-send](../verify-before-send/SKILL.md), [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md)
