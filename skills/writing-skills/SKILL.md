---
name: writing-skills
category: do
description: >-
  Format and spec compliance for SKILL.md files. Use when authoring or
  reviewing a skill. Triggers: "review this skill", new skill drafted,
  format check, "does this match the dojo standard".
---

# Writing Skills

A SKILL.md must look the same across the dojo so agents can parse it without surprise.

---

## Quick Reference (required structure)

| Slot | Required? |
|---|---|
| YAML frontmatter (`name`, `category`, `description`) | ✅ |
| `# Title` | ✅ |
| One-line tagline | ✅ |
| `## Quick Reference` (table) | ✅ |
| `## When to Use` | ✅ |
| `## How to Use` | ✅ |
| `## Examples` (❌/✅ table) | ✅ |
| `## Critical Rules` | ✅ |
| `## Common Pitfalls` | ✅ |
| `## Anti-Patterns` | ✅ |
| `## Verify Before <action>` (checklist) | ✅ |
| `## Related` | ✅ |

## When to Use

- Authoring a new skill (after [skill-creator](../skill-creator/SKILL.md) gate passes).
- Reviewing a teammate's skill PR.
- Refactoring older skills to current spec.

## How to Use

### Required Format

```yaml
---
name: kebab-case-name
category: kata | waza | kumite-task | kumite-office | kumite-connector | cowork | do
description: >-
  One paragraph. Specific about when the agent should activate this skill.
  Mention trigger phrases, contexts, and the typical scenario.
---

# Title Case Name

One-line summary.

---

## Quick Reference
| col | col |
|---|---|
| ... | ... |

## When to Use
- Trigger 1
- Trigger 2

## How to Use
Step-by-step or numbered list.

## Examples
| ❌ Anti | ✅ Pro |

## Critical Rules
- ...

## Common Pitfalls
- ...

## Anti-Patterns
- ...

## Verify Before <action>
- [ ] ...

## Related
- [other-skill](../other-skill/SKILL.md)
```

### Rules

- `name` matches the folder name exactly.
- `category` is one of: `kata`, `waza`, `kumite-task`, `kumite-office`, `kumite-connector`, `cowork`, `do`.
- `description` is what Copilot uses to activate the skill — be specific; include trigger phrases.
- Body is short — a junior teammate can read it in under 90 seconds.
- No emojis in skill bodies (✅ / ❌ in the Examples table are allowed; they're structural).
- No invented stats or external links unless verified.

## Examples

| ❌ Format failure | ✅ Format success |
|---|---|
| Missing `category` | `category: kata` (or appropriate) |
| `description` says "use this skill for stuff" | `description` lists 3 trigger phrases + scenario |
| Body opens with backstory | Body opens with one-line tagline |
| Anti-Patterns lists examples without "why" | Anti-Patterns names the failure mode |
| No Related links | Related lists 3–5 sibling skills |

## Critical Rules

- **Frontmatter is non-negotiable.** Missing `name` / `category` / `description` = broken auto-discovery.
- **Description carries triggers.** Without them, Copilot won't pick the skill up.
- **Tables in Quick Reference and Examples.** Prose loses scanability.
- **Verify checklist matches the action**, not "verify before send" generically.
- **Related links to actual sibling skills.**

## Common Pitfalls

- Long backstory before the rules.
- Describing the skill's history instead of how to use it.
- Anti-Patterns that lists examples without saying *why* they fail.
- Vague description → never triggered.
- No Related → siblings invisible.

## Anti-Patterns

- Long backstory before the rules.
- Describing the skill's history instead of how to use it.
- Anti-Patterns section that lists examples without saying *why* they fail.
- Skill bodies > 200 lines without a strong reason.

## Verify Before Merging a Skill

- [ ] `name` matches folder.
- [ ] `category` set to a valid value.
- [ ] `description` includes specific trigger phrases.
- [ ] All required sections present (see Quick Reference).
- [ ] Examples uses ❌ / ✅ table.
- [ ] Critical Rules + Common Pitfalls + Anti-Patterns are distinct (not duplicated).
- [ ] Verify checklist matches the action.
- [ ] Related links resolve.
- [ ] Body reads in < 90 seconds.

## Related

- [skill-creator](../skill-creator/SKILL.md)
- [template/SKILL.md](../../template/SKILL.md)
- [skills.md](../../skills.md) — index where new skills land
