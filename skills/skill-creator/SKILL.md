---
name: skill-creator
description: >-
  Meta-skill for creating new dojo skills. Use when you've found a workflow
  worth packaging — typically after a pattern recurs 3+ times in
  tasks/lessons.md.
---

# Skill Creator

A skill is a tested workflow with a name. Don't create one until the workflow has earned its name.

## How to Use

1. **Find the trigger.** What 2–3 phrases, contexts, or asks should activate this skill? Be specific — vague triggers mean Copilot never picks the skill up.
2. **Copy the template.** `cp template/SKILL.md skills/<name>/SKILL.md`.
3. **Fill four sections only:** *When to Use*, *How to Use*, *Examples*, *Anti-Patterns*. Resist adding more.
4. **Index it.** Add to [skills.md](../../skills.md) and the right table in [README.md](../../README.md).
5. **Walk it through one real scenario** before you ship it. If it doesn't survive contact with reality, fix or delete.

## Anti-Patterns

- Skills created from theory, not from lived sessions.
- Skills with vague descriptions. Description is what triggers auto-discovery.
- Skills that overlap heavily with existing ones. Merge or refine.
