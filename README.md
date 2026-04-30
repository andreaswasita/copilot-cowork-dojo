<div align="center">

# Copilot Cowork Dojo 🏯

# A discipline framework for<br/>your Microsoft 365 Copilot work.

---

*End-to-end framework to take knowledge workers from casual Copilot use to measurable, repeatable business value.*

[**Start Here**](./wiki/01-Start-Here.md) · [**Quickstart**](./wiki/03-Your-First-Session.md) · [**Wiki**](./wiki/Home.md) · [**Scenarios**](./scenarios) · [**Prompts**](./prompts/library.md) · [**Skills**](./skills.md)

![license](https://img.shields.io/badge/license-MIT-1f6feb?style=flat-square)
![version](https://img.shields.io/badge/version-1.0-3fb950?style=flat-square)
![pipeline](https://img.shields.io/badge/pipeline-7%20steps-1f6feb?style=flat-square)
![skills](https://img.shields.io/badge/skills-24-d2691e?style=flat-square)
![scenarios](https://img.shields.io/badge/scenarios-4-8b5cf6?style=flat-square)
![personas](https://img.shields.io/badge/personas-5-14b8a6?style=flat-square)
![prompts](https://img.shields.io/badge/prompt%20patterns-15%2B-ec4899?style=flat-square)

---

</div>

> *Your knowledge workers are untrained. Time to put them through the dojo.*

A **skills & discipline framework for Microsoft 365 Copilot Cowork** — for the people who *use* Copilot every day to draft, decide, summarize, plan, brief, and ship knowledge work alongside agents.

Where the [Copilot Agents Dojo](https://github.com/andreaswasita/copilot-agents-dojo) trains AI **builders**, this dojo trains AI **coworkers**: analysts, project coordinators, comms leads, people managers, executive assistants, and the power users helping them.

Drop `skills/` + `prompts/` + `.github/copilot-instructions.md` into your team space → Copilot Cowork sessions auto-discover and follow the workflow.

> 🆕 **New here?** Start with the step-by-step [**Wiki**](./wiki/Home.md) — a 5-min orientation, your first session in 15 min, and persona-based shortcuts.

## Includes

- 24 production skills (6 core kata + 6 flow waza + 7 practical kumite + 3 multi-agent cowork + 2 meta dō)
- Mandatory **CLARIFY → PLAN → DRAFT → REVIEW → REFINE → SHIP → LEARN** pipeline
- Real-world scenario packs — HR, Finance, Sales, Project Management
- Prompt library — patterns for the 80% of recurring knowledge work
- Multi-agent cowork patterns — agent handoff, orchestration, human-in-the-loop
- Governance — responsible AI, data handling, escalation playbooks
- Memory vault — persistent, linked knowledge graph (decisions, patterns, preferences)
- Facilitator guide — run the dojo as a half-day or multi-week workshop
- PowerShell `scripts/` for setup, verification, and lesson promotion

---

## The Mandatory Workflow

Every non-trivial Cowork task follows this pipeline — no skipping, no improvising:

```
CLARIFY → PLAN → DRAFT → REVIEW → REFINE → SHIP → LEARN
```

| # | Skill | Purpose |
|---|---|---|
| 1 | clarify-the-ask | Restate the request, surface assumptions, agree on the deliverable |
| 2 | plan-before-prompt | Break the work down before opening a Copilot session |
| 3 | drafting-with-copilot | Generate the first cut with grounded context |
| 4 | reviewing-output | Critically inspect — facts, tone, omissions, bias |
| 5 | refining-iteratively | Targeted follow-ups, not vague "make it better" prompts |
| 6 | shipping-the-deliverable | Final checks: citations, sensitivity, audience fit |
| 7 | learn-from-every-session | Log what worked, promote repeating patterns |

---

## Skill Sets

- [skills/](./skills) — Individual skill folders (kata + waza + kumite + dō)
- [agents/](./agents) — Cowork agent personas for different roles
- [scenarios/](./scenarios) — End-to-end scenarios by function (HR, Finance, Sales, PM)
- [prompts/](./prompts) — Prompt patterns and a reusable library
- [skills.md](./skills.md) — Master index — auto-discovered by Copilot
- [spec/](./spec) — The Cowork Skills specification
- [template/](./template) — Starter template for creating new skills

---

## Core Kata — 基本型

Behavioral skills that govern *how* a knowledge worker thinks with Copilot.

| Skill | Belt |
|---|---|
| [clarify-the-ask](./skills/clarify-the-ask/SKILL.md) | 🥋 Restate the request before prompting |
| [plan-before-prompt](./skills/plan-before-prompt/SKILL.md) | 🥋 Plan the deliverable before opening Copilot |
| [verify-before-send](./skills/verify-before-send/SKILL.md) | 🥋 Never ship Copilot output unread |
| [cite-your-sources](./skills/cite-your-sources/SKILL.md) | 🥋 Ground every claim in a referenceable artifact |
| [protect-sensitive-info](./skills/protect-sensitive-info/SKILL.md) | 🥋 Know what not to paste, share, or surface |
| [learn-from-every-session](./skills/learn-from-every-session/SKILL.md) | 🥋 Log lessons → promote patterns |

## Flow Waza — 流れ技

Skills that orchestrate the mandatory pipeline.

| Skill | |
|---|---|
| [intent-framing](./skills/intent-framing/SKILL.md) | Frame audience, outcome, format, constraints |
| [context-gathering](./skills/context-gathering/SKILL.md) | Pull the right files, threads, and people in |
| [drafting-with-copilot](./skills/drafting-with-copilot/SKILL.md) | First-pass generation with grounded context |
| [reviewing-output](./skills/reviewing-output/SKILL.md) | Structured critique — facts, tone, gaps, bias |
| [refining-iteratively](./skills/refining-iteratively/SKILL.md) | Targeted follow-ups, not "redo it" |
| [shipping-the-deliverable](./skills/shipping-the-deliverable/SKILL.md) | Final QA gate before send |

## Practical Kumite — 実践組手

Task-specific skills for the most common knowledge work.

| Skill | |
|---|---|
| [meeting-prep](./skills/meeting-prep/SKILL.md) | Brief, agenda, pre-reads from scattered context |
| [meeting-recap](./skills/meeting-recap/SKILL.md) | Decisions, actions, owners — not transcripts |
| [email-triage](./skills/email-triage/SKILL.md) | Triage, draft replies, escalate cleanly |
| [document-summarization](./skills/document-summarization/SKILL.md) | Faithful summaries with the right altitude |
| [research-synthesis](./skills/research-synthesis/SKILL.md) | Multi-source synthesis with traceable citations |
| [decision-memo](./skills/decision-memo/SKILL.md) | Context, options, recommendation, risks |
| [status-update](./skills/status-update/SKILL.md) | Audience-tuned status (exec, team, stakeholder) |

## Multi-Agent Cowork — 共働

Patterns for working *with multiple Copilot agents* and humans together.

| Skill | |
|---|---|
| [agent-handoff](./skills/agent-handoff/SKILL.md) | Pass context cleanly between agents |
| [agent-orchestration](./skills/agent-orchestration/SKILL.md) | Sequence specialist agents around one goal |
| [human-in-the-loop](./skills/human-in-the-loop/SKILL.md) | Where humans must approve, edit, or intervene |

## Meta Dō — 道

| Skill | |
|---|---|
| [skill-creator](./skills/skill-creator/SKILL.md) | Meta-skill for creating new dojo skills |
| [writing-skills](./skills/writing-skills/SKILL.md) | SKILL.md template + spec compliance |

---

## Specialized Cowork Personas

Agent personas in [agents/](./agents) — combine relevant skills for a role:

| Persona | Combines |
|---|---|
| [analyst](./agents/analyst.md) | research-synthesis + document-summarization + decision-memo |
| [project-coordinator](./agents/project-coordinator.md) | meeting-prep + meeting-recap + status-update |
| [comms-lead](./agents/comms-lead.md) | drafting-with-copilot + reviewing-output + audience tuning |
| [people-manager](./agents/people-manager.md) | 1:1 prep, feedback drafts, decision memos |
| [executive-assistant](./agents/executive-assistant.md) | email-triage + meeting-prep + briefings |

---

## Scenario Packs

End-to-end walkthroughs in [scenarios/](./scenarios):

- [HR](./scenarios/hr/scenario.md) — onboarding plans, performance review prep, policy Q&A
- [Finance](./scenarios/finance/scenario.md) — variance commentary, board pre-reads, audit responses
- [Sales](./scenarios/sales/scenario.md) — account briefs, proposal drafts, QBR decks
- [Project Management](./scenarios/project-management/scenario.md) — status, risk logs, steerco prep

---

## Governance

Non-negotiables in [governance/](./governance):

- [responsible-ai.md](./governance/responsible-ai.md) — fairness, transparency, accountability
- [data-handling.md](./governance/data-handling.md) — what to paste, what never to
- [escalation.md](./governance/escalation.md) — when to involve a human, legal, or security

---

## Facilitator Guide

Run the dojo as a workshop — see [facilitator/workshop-guide.md](./facilitator/workshop-guide.md) and [facilitator/agendas/half-day.md](./facilitator/agendas/half-day.md).

---

## Memory Vault 🧠

The `memory/` directory is the team's persistent knowledge graph — decisions, patterns, preferences, session logs. Plain markdown + YAML frontmatter, queryable by any agent.

```
memory/
├── INDEX.md
├── decisions/_template.md
├── patterns/_template.md
├── preferences/_template.md
└── sessions/_template.md
```

---

## Enter the Dojo

1. Copy this repo (or fork it) into your team space.
2. Place `skills.md` and `.github/copilot-instructions.md` where Copilot can discover them.
3. Run `pwsh scripts/init.ps1` — scaffolds `tasks/todo.md` and `tasks/lessons.md`.
4. Pick one [scenario](./scenarios/) and run it end-to-end with your team.
5. Log lessons after every session. Promote 3+ recurrences into [memory/patterns/](./memory/patterns/).
6. Author your own skills with [template/SKILL.md](./template/SKILL.md).

---

## Why Train Your Coworkers?

Untrained Copilot users:

- Paste in vague asks and accept the first reply
- Ship hallucinations because nobody verified the citations
- Leak sensitive content into prompts they shouldn't
- Repeat the same mistakes across every team
- Treat Copilot as a magic answer box instead of a coworker

Trained Copilot coworkers operate like seasoned professionals — clarify the ask, plan the deliverable, draft with grounded context, verify the output, ship with confidence, learn every round.

---

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License

[MIT](./LICENSE)

⭐ Star this dojo if you're done watching your team copy-paste prompts. Fork it, train your coworkers, earn your belt.
