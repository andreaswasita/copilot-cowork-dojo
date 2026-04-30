# Memory Vault — INDEX

> Agents read this first at session start. Humans, too.

The memory vault is the team's persistent knowledge graph. It accumulates what we've decided, what we've proven, what we prefer, and what happened in past sessions. Plain markdown + YAML frontmatter — queryable by any agent.

## Structure

| Folder | Holds | Promote when |
|---|---|---|
| [decisions/](./decisions/) | Architectural / process decisions with context, alternatives, consequences | One-time, when a decision is made |
| [patterns/](./patterns/) | Proven rules, promoted from `tasks/lessons.md` | A lesson recurs 3+ times |
| [preferences/](./preferences/) | Team or individual preferences (tone, format, cadence) | A preference is observed 3+ times with confidence |
| [sessions/](./sessions/) | Session summaries linking to artifacts produced | End of any meaningful session |

## How to use

1. **Session start** — skim recent `sessions/` and any `patterns/` tagged with the function you're working on.
2. **During work** — when a decision is made, draft a `decisions/<slug>.md`. When a preference solidifies, log it in `preferences/`.
3. **Session end** — write `sessions/<YYYY-MM-DD>-<slug>.md` linking everything you touched.
4. **Promotion** — when `tasks/lessons.md` shows a lesson 3+ times, promote it to `patterns/<rule-slug>.md` (helper: `pwsh scripts/lesson-updater.ps1`).

## File format

Every file starts with YAML frontmatter so agents can query without parsing prose:

```yaml
---
type: decision | pattern | preference | session
date: YYYY-MM-DD
tags: [tag1, tag2]
status: active | superseded | draft
links: [./other-file.md, ../skills/some-skill/SKILL.md]
---
```

## Templates

- [decisions/_template.md](./decisions/_template.md)
- [patterns/_template.md](./patterns/_template.md)
- [preferences/_template.md](./preferences/_template.md)
- [sessions/_template.md](./sessions/_template.md)
