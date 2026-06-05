---
name: skill-creator
category: do
description: >-
  Meta-skill for creating and improving dojo skills. Use when you've found a
  workflow worth packaging — typically after a pattern recurs 3+ times in
  tasks/lessons.md — or when an existing skill triggers unreliably and needs a
  test-driven tune-up. Triggers: "should this be a skill", recurring pattern,
  promoting a lesson, packaging a workflow, "this skill never fires", optimizing
  a skill description for discovery.
---

# Skill Creator

A skill is a tested workflow with a name. Don't create one until the workflow has earned its name — and once you have, prove it earns its keep by testing it against real prompts, not just by reading it back to yourself.

---

## Quick Reference (the skill-creation gate)

| Question | If "no" |
|---|---|
| Has the pattern recurred 3+ times in lessons? | Wait |
| Can you name 2-3 trigger phrases? | Wait |
| Does it fit a category (kata / waza / kumite / cowork / do)? | Re-shape |
| Survives one real scenario walkthrough? | Fix or delete |
| Different from existing skills? | Merge instead |

## When to Use

- A pattern in `tasks/lessons.md` shows up 3+ times.
- Multiple teammates independently develop the same workflow.
- A new connector / surface enters the team's stack.
- A scenario walkthrough reveals a missing skill.
- An existing skill exists but never fires when it should — its description needs optimization.

## How to Use

1. **Find the trigger.** What 2-3 phrases, contexts, or asks should activate this skill? Be specific — vague triggers mean Copilot never picks the skill up.
2. **Pick the category** — `kata`, `waza`, `kumite-task`, `kumite-office`, `kumite-connector`, `cowork`, or `do`.
3. **Copy the template.** `cp template/SKILL.md skills/<name>/SKILL.md`.
4. **Fill the rich structure** — Quick Reference, When to Use, How to Use, Examples, Critical Rules, Common Pitfalls, Anti-Patterns, Verify Before Send, Related.
5. **Index it.** Add to [skills.md](../../skills.md) and the right table in [README.md](../../README.md).
6. **Walk it through one real scenario** before you ship it. If it doesn't survive contact with reality, fix or delete.

## Writing Style

Explain *why* each instruction matters instead of stacking heavy-handed ALWAYS/NEVER rules. Today's Copilot has good theory of mind: when it understands the reason behind a step, it generalizes; when it only gets a rigid rule, it follows it literally and breaks on the first edge case. If you catch yourself writing all-caps MUSTs or rigid scaffolding, treat it as a yellow flag — reframe and explain the reasoning. Write a draft, then re-read it with fresh eyes and cut anything that isn't pulling its weight. Aim for a junior teammate reading it in under 60 seconds.

## Test-Drive the Skill (the iteration loop)

A skill that reads well can still fail in practice. Before promoting any non-trivial skill to a belt table, test it against realistic prompts and compare with-skill against without-skill output. The point is to build skills usable a thousand times across many prompts — not skills overfitted to the two examples you had in mind.

1. **Write 2-3 realistic test prompts.** The kind of thing a real coworker would actually type into Copilot — concrete, with a little backstory, file names, column names, a named stakeholder. Save them to `evals/evals.json` next to the skill. Share them with the owner: "Here are a few test cases I'd like to try — do these look right, or add more?"
2. **Run each prompt twice — with the skill and without it.** Drive both runs from the same Cowork session context so they finish together. For a brand-new skill the baseline is "no skill". For improving an existing skill, snapshot the current version first and use that as the baseline so you can measure the delta.
3. **Draft assertions while runs are in flight.** Good assertions are objectively verifiable and clearly named — "recap has exactly three sections", "every action names an owner". Don't force assertions onto subjective qualities (tone, design) — judge those by eye.
4. **Grade and compare.** For each assertion, mark pass/fail with the evidence. Lay the with-skill output beside the baseline. Did the skill actually move the needle, or did Copilot do just as well without it? A skill that doesn't beat baseline is noise — cut it or sharpen it.
5. **Read the transcripts, not just the outputs.** If all the test runs independently reinvented the same checklist or helper step, bundle that into the skill so every future use gets it for free. If the skill made Copilot waste time on unproductive detours, cut the part that caused it.
6. **Improve and rerun.** Apply changes, rerun all test cases, compare against the previous round. Keep going until the owner is happy, the output is reliably better than baseline, or you've stopped making meaningful progress. Resist fiddly overfit fixes — if one issue is stubborn, try a different metaphor or framing rather than another rigid rule.

## Description Optimization (make the skill actually fire)

The `description` field is the single mechanism that decides whether Copilot consults a skill. A perfect body is worthless if the skill never triggers. After creating or improving a skill, tune its description against trigger tests.

1. **Write ~20 trigger queries — a mix of should-fire and should-not-fire.** Make them realistic: lowercase, abbreviations, casual phrasing, real file names and stakeholder context. For should-fire (8-10), cover different phrasings of the same intent — formal and casual — including cases where the user never names the skill or file type but clearly needs it. For should-not-fire (8-10), the valuable ones are near-misses: queries that share keywords with the skill but actually need something else. Avoid obviously-irrelevant negatives — they test nothing.
2. **Review the query set with the owner** before optimizing. Bad eval queries lead to bad descriptions.
3. **Test the current description against every query** (run each a few times — triggering has variance). Note which should-fire queries miss and which should-not-fire queries falsely match.
4. **Rewrite the description to fix the misses, then re-test.** Split your queries so you tune on some and validate on the rest — pick the description that scores best on the held-out set, not the one that overfits the queries you tuned against. Iterate a few rounds.
5. **Keep one thing in mind about triggering:** Copilot only reaches for a skill on tasks it can't trivially handle alone. Simple one-step asks ("read this file") may not fire a skill no matter how well the description matches — so make your test queries substantive enough that consulting a skill is genuinely worth it.
6. **Apply the winner.** Update the frontmatter `description`, show the owner before/after, and keep it trigger-explicit and under 1024 characters.

## Examples

| Don't: Premature / untested skill | Do: Earned and proven skill |
|---|---|
| Created from theory, never used | Created from 3+ logged lessons |
| "Productivity tips" - vague trigger | "Triage an inbox returning from PTO" - specific |
| Overlaps 80% with existing skill | Merged or refined existing skill instead |
| Shipped because it reads well | Shipped because with-skill beat baseline on real prompts |
| Description never tested against queries | Description tuned on should-fire / should-not-fire set |
| No category | Category + trigger phrases + Related links |

## Critical Rules

- **Earn the name.** No skill until 3+ recurrences.
- **Specific triggers.** Vague descriptions = never auto-discovered.
- **One category.** Pick one; cross-references go in Related.
- **Walk it, then test it.** Untested skills are noise; prove it beats baseline before promoting.
- **Explain the why.** Reasoning generalizes; rigid all-caps rules break on edge cases.
- **Index it.** Skills not in `skills.md` and `README.md` are invisible.

## Common Pitfalls

- Skills created from theory, not from lived sessions.
- Skills with vague descriptions — kills auto-discovery.
- Skills that overlap heavily with existing ones.
- Overfitting the skill to your two example prompts so it fails on the third.
- Shipping a skill that reads well but never beats the no-skill baseline.
- A great body behind a description that never triggers.
- Skipping the scenario walk, so defects ship to teammates.
- Forgetting the index update.

## Anti-Patterns

- Skills created from theory, not from lived sessions.
- Skills with vague descriptions. Description is what triggers auto-discovery — tune it.
- Skills that overlap heavily with existing ones. Merge or refine.
- Stacking rigid ALWAYS/NEVER rules instead of explaining the reasoning.
- Skill bodies that read like essays.

## Verify Before Shipping the Skill

- [ ] 3+ recurrences in lessons.
- [ ] Specific trigger phrases in description; tuned against should-fire / should-not-fire queries.
- [ ] Category set in frontmatter.
- [ ] All required sections present (per [writing-skills](../writing-skills/SKILL.md)).
- [ ] Walked through one real scenario; with-skill output beats baseline on the test prompts.
- [ ] Indexed in `skills.md` and `README.md`.
- [ ] Cross-references in Related section.

## Related

- [writing-skills](../writing-skills/SKILL.md) — the format spec
- [learn-from-every-session](../learn-from-every-session/SKILL.md) — source of patterns
- [reviewing-output](../reviewing-output/SKILL.md) — the review lens applied to skill drafts
- [template/SKILL.md](../../template/SKILL.md)
