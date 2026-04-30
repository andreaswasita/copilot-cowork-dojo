# Contributing to Copilot Cowork Dojo

Thanks for sharpening the dojo. A few rules of the mat.

## Ground rules

- **Skills are for knowledge workers using Copilot Cowork** — not for AI builders. If a skill assumes the reader writes code, it belongs in the [Copilot Agents Dojo](https://github.com/andreaswasita/copilot-agents-dojo).
- **One skill = one folder** under `skills/` with a `SKILL.md` (YAML frontmatter + body). Use [template/SKILL.md](./template/SKILL.md).
- **Earn the belt.** A skill must show *when to use*, *how to use*, *examples*, and *anti-patterns*. No theory-only skills.
- **Cite sources** for any claim about Copilot behavior, capabilities, or Microsoft 365 features. Behavior changes — link to docs.

## How to add a skill

1. Copy `template/SKILL.md` → `skills/<your-skill-name>/SKILL.md`.
2. Fill in the frontmatter `name` and `description` (description is what triggers auto-discovery — be specific about phrases and contexts).
3. Add the skill to the right table in [README.md](./README.md) and [skills.md](./skills.md).
4. If 3+ people would use it, add a one-liner example under `examples/`.

## How to add a scenario

1. Create `scenarios/<function>/scenario.md` with: *Persona*, *Trigger*, *Goal*, *Walkthrough* (one row per step → which skill, what prompt pattern, what to verify).
2. Real, anonymized situations only. No invented enterprises.

## Lessons → patterns

After running a session, drop entries in `tasks/lessons.md`. When a lesson recurs 3+ times, promote it to `memory/patterns/<pattern-name>.md`.

## Style

- Plain markdown, no wikilinks.
- YAML frontmatter for any file in `memory/`.
- Avoid emojis in skill bodies. Save them for the README belts.
- Audience: a smart non-developer. No jargon without a one-line definition.

## License

By contributing you agree your contribution is licensed under [MIT](./LICENSE).
