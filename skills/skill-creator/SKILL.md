---
name: skill-creator
category: do
description: >-
  Meta-skill for creating new dojo skills. Use when you've found a workflow
  worth packaging — typically after a pattern recurs 3+ times in
  tasks/lessons.md. Triggers: "should this be a skill", recurring pattern,
  promoting a lesson, packaging a workflow.
---

# Skill Creator

A skill is a tested workflow with a name. Don't create one until the workflow has earned its name.

---

## Quick Reference (the skill-creation gate)

| Question | If "no" |
|---|---|
| Has the pattern recurred 3+ times in lessons? | Wait |
| Can you name 2–3 trigger phrases? | Wait |
| Does it fit a category (kata / waza / kumite / cowork / do)? | Re-shape |
| Survives one real scenario walkthrough? | Fix or delete |
| Different from existing skills? | Merge instead |

## When to Use

- A pattern in `tasks/lessons.md` shows up 3+ times.
- Multiple teammates independently develop the same workflow.
- A new connector / surface enters the team's stack.
- A scenario walkthrough reveals a missing skill.

## How to Use

1. **Find the trigger.** What 2–3 phrases, contexts, or asks should activate this skill? Be specific — vague triggers mean Copilot never picks the skill up.
2. **Pick the category** — `kata`, `waza`, `kumite-task`, `kumite-office`, `kumite-connector`, `cowork`, or `do`.
3. **Copy the template.** `cp template/SKILL.md skills/<name>/SKILL.md`.
4. **Fill the rich structure** — Quick Reference · When to Use · How to Use · Examples · Critical Rules · Common Pitfalls · Anti-Patterns · Verify Before Send · Related.
5. **Index it.** Add to [skills.md](../../skills.md) and the right table in [README.md](../../README.md).
6. **Walk it through one real scenario** before you ship it. If it doesn't survive contact with reality, fix or delete.

## Examples

| ❌ Premature skill | ✅ Earned skill |
|---|---|
| Created from theory, never used | Created from 3+ logged lessons |
| "Productivity tips" — vague trigger | "Triage an inbox returning from PTO" — specific |
| Overlaps 80% with existing skill | Merged or refined existing skill instead |
| No category | Category + trigger phrases + Related links |

## Critical Rules

- **Earn the name.** No skill until 3+ recurrences.
- **Specific triggers.** Vague descriptions = never auto-discovered.
- **One category.** Pick one; cross-references go in Related.
- **Walk it.** Untested skills are noise.
- **Index it.** Skills not in `skills.md` and `README.md` are invisible.

## Common Pitfalls

- Skills created from theory, not from lived sessions.
- Skills with vague descriptions — kills auto-discovery.
- Skills that overlap heavily with existing ones.
- Skipping the scenario walk → defects ship to teammates.
- Forgetting the index update.

## Anti-Patterns

- Skills created from theory, not from lived sessions.
- Skills with vague descriptions. Description is what triggers auto-discovery.
- Skills that overlap heavily with existing ones. Merge or refine.
- Skill bodies that read like essays.

## Verify Before Shipping the Skill

- [ ] 3+ recurrences in lessons.
- [ ] Specific trigger phrases in description.
- [ ] Category set in frontmatter.
- [ ] All required sections present (per [writing-skills](../writing-skills/SKILL.md)).
- [ ] Walked through one real scenario.
- [ ] Indexed in `skills.md` and `README.md`.
- [ ] Cross-references in Related section.

## Related

- [writing-skills](../writing-skills/SKILL.md) — the format spec
- [learn-from-every-session](../learn-from-every-session/SKILL.md) — source of patterns
- [template/SKILL.md](../../template/SKILL.md)
