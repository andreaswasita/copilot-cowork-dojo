---
name: writing-skills
description: >-
  Format and spec compliance for SKILL.md files. Use when authoring or
  reviewing a skill.
---

# Writing Skills

A SKILL.md must look the same across the dojo so agents can parse it without surprise.

## Required Format

```yaml
---
name: kebab-case-name
description: >-
  One paragraph. Specific about when the agent should activate this skill.
  Mention trigger phrases, contexts, and the typical scenario.
---

# Title Case Name

One-line summary.

## When to Use
- Trigger 1
- Trigger 2

## How to Use
Step-by-step or numbered list.

## Examples
Concrete, anonymized.

## Anti-Patterns
What NOT to do — and why.
```

## Rules

- `name` matches the folder name exactly.
- `description` is what Copilot uses to activate the skill — be specific.
- Body is short — a junior teammate can read it in under 60 seconds.
- No emojis in skill bodies. They belong in the README belts.
- No invented stats or external links unless verified.

## Anti-Patterns

- Long backstory before the rules.
- Describing the skill's history instead of how to use it.
- Anti-Patterns section that lists examples without saying *why* they fail.
