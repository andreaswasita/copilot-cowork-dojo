# Cowork Skills Specification

The format every skill in this dojo follows. Agents and humans both rely on the consistency.

## File location

```
skills/<kebab-case-name>/SKILL.md
```

Optional alongside `SKILL.md`:

- `examples/` — worked examples, one file per example.
- `references/` — supporting docs loaded on demand.

## YAML frontmatter (required)

```yaml
---
name: kebab-case-name
description: >-
  One paragraph. State precisely when the agent should activate this skill.
  Mention trigger phrases and contexts. Be specific — vague descriptions
  prevent auto-discovery.
---
```

- `name` — must equal the folder name.
- `description` — what Copilot uses to decide whether to activate the skill. The most important line in the file.

## Body sections (required)

In this order:

1. `# Title` — Title-cased, matches `name`.
2. One-line summary.
3. `## When to Use` — bullet list of triggers.
4. `## How to Use` — numbered steps or short procedure.
5. `## Examples` — concrete, anonymized.
6. `## Anti-Patterns` — what NOT to do, and why it fails.

## Style

- Plain markdown. No HTML, no wikilinks.
- No emojis in skill bodies.
- Length: a junior teammate reads it in under 60 seconds.
- Voice: imperative, direct, kind.

## Discoverability

- Index every skill in [skills.md](../skills.md) under the right belt.
- Add to the matching table in [README.md](../README.md).
- Cross-link related skills.

## Lifecycle

- New → tested in 1 real session → indexed → promoted to a belt table.
- Skills not used in 90 days are reviewed: refresh, merge, or retire.
