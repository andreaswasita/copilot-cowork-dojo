# Glossary

Quick definitions for the terms used across the dojo.

## Pipeline & workflow

**Pipeline** — The mandatory 7 steps: CLARIFY → PLAN → DRAFT → REVIEW → REFINE → SHIP → LEARN.

**CLARIFY** — Restate the ask, surface assumptions, agree on the deliverable before prompting.

**PLAN** — Sketch the deliverable structure (sections, sources, length) before opening Copilot.

**DRAFT** — First-pass generation, section by section, with grounded context.

**REVIEW** — Critique the draft on the five lenses (facts, tone, omissions, bias, audience-fit).

**REFINE** — Targeted follow-up prompts (not "make it better").

**SHIP** — The final gate: verified, cited, sensitivity-cleared, audience-fit, owned, logged.

**LEARN** — Append a YAML lesson entry to `tasks/lessons.md`. Promote at 3+.

## Skill taxonomy (the belts)

**Kata (基本型)** — Behavioral skills. *How* you think. Style-agnostic.

**Waza (技)** — Flow skills that orchestrate the pipeline.

**Kumite (組手)** — Practical, task-specific skills (recap, brief, status, memo).

**Multi-agent / Cowork (共働)** — Skills for working with multiple agents and humans.

**Dō (道)** — Meta-skills for creating and curating other skills.

## Memory vault

**Memory vault** — The `memory/` folder. Persistent, structured, queryable team knowledge.

**Decision** — A recorded choice with context, alternatives, and consequences. Lives in `memory/decisions/`.

**Pattern** — A proven rule, promoted from `tasks/lessons.md` after 3+ occurrences. Lives in `memory/patterns/`.

**Preference** — A behavioral preference (tone, format, cadence) of a team or individual. Lives in `memory/preferences/`.

**Session** — A summary of a meaningful working session linking artifacts, decisions, and lessons. Lives in `memory/sessions/`.

**Promotion** — Moving a recurring lesson from `tasks/lessons.md` into `memory/patterns/`.

## Personas & agents

**Persona** — A role-shaped bundle of skills (analyst, project-coordinator, comms-lead, people-manager, executive-assistant). Lives in `agents/`.

**Cowork session** — A Microsoft 365 Copilot session shared with one or more humans (and possibly other agents).

**Handoff packet** — The structured context block passed when one agent or persona hands work to the next.

## Governance

**Sensitivity gate** — The four-question check before pasting anything into a prompt.

**Sensitivity classes** — Public, Internal, Confidential, Restricted.

**RAI** — Responsible AI. Fairness, reliability, privacy, inclusiveness, transparency, accountability.

**Disclosure** — Telling the audience that Copilot was involved when they'd reasonably want to know.

**Escalation** — Routing a sensitive or ambiguous case to the appropriate function (HR, Legal, Finance, Security).

## Output quality

**Altitude** — How zoomed-out the summary is. *30,000 ft* = one paragraph; *10,000 ft* = one page; *Ground* = section-by-section.

**Grounded context** — The actual source files/threads/messages Copilot has access to. The opposite of "from memory."

**Faithful extraction** — Quoting verbatim from a source instead of paraphrasing it.

**Five-lens review** — Facts, tone, omissions, bias, audience-fit.

**Hallucination** — A confident, fluent output that isn't true (invented name, date, quote, link).

## Files & scripts

**`skills.md`** — Master index of all skills. Auto-discovered by Copilot.

**`.github/copilot-instructions.md`** — The house rules every Cowork session follows.

**`tasks/todo.md`** — Your current plan. CI gate fails until you replace the template.

**`tasks/lessons.md`** — Append-only log of session lessons.

**`scripts/init.ps1`** — Scaffolds the `tasks/` folder.

**`scripts/verify.ps1`** — Pre-PR checks (mirrors the CI gate).

**`scripts/lesson-updater.ps1`** — Scans lessons for 3+ recurrences and proposes patterns.

## Cadences

**Daily** — Pipeline + lessons.

**Weekly** — `lesson-updater.ps1` scan; office hours.

**Monthly** — First pattern promotions.

**Quarterly** — Belt-up retro; skill audit; scenario refresh.
