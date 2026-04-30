# Copilot Cowork Dojo — House Rules

These are the rules every Copilot session in this workspace follows. They apply to humans and to any agent invoked through Microsoft 365 Copilot Cowork.

## Mandatory Workflow

For any non-trivial deliverable, follow:

```
CLARIFY → PLAN → DRAFT → REVIEW → REFINE → SHIP → LEARN
```

Skip a step only when the task is genuinely trivial (one-line answer, no audience risk). Default to the full pipeline.

## Session start

1. Read [memory/INDEX.md](../memory/INDEX.md). Skim recent `memory/sessions/`.
2. Check `tasks/lessons.md` for relevant prior lessons.
3. Confirm the request with `clarify-the-ask` before opening a Copilot prompt.

## Skill discovery

Skills live in [skills/](../skills) and are indexed in [skills.md](../skills.md). Activate by name when the trigger phrases match the user's request.

## Behavioral governance (the six core kata)

- **clarify-the-ask** — Restate the request and confirm before drafting.
- **plan-before-prompt** — Outline the deliverable before opening Copilot.
- **verify-before-send** — Read every line. Check facts, citations, tone, omissions.
- **cite-your-sources** — Every claim links to a file, message, or URL the reader can open.
- **protect-sensitive-info** — Never paste regulated, personal, or confidential data into a prompt unless the workspace and audience are explicitly cleared.
- **learn-from-every-session** — Log lessons in `tasks/lessons.md`. Promote 3+ recurrences to `memory/patterns/`.

## Drafting standards

- **Audience first.** State who the reader is and what decision they need to make before drafting.
- **Altitude matches audience.** Executive = decision + 3 bullets. Working team = enough detail to act.
- **No invented facts.** If Copilot returns a stat, name, date, or quote — verify or remove.
- **No hidden assumptions.** Surface assumptions in a "What I assumed" line.
- **Plain language.** Default to grade-9 reading level unless the audience is technical.

## Sensitivity gates (escalate before proceeding)

| Trigger | Escalate to |
|---|---|
| Personal data of named individuals | Privacy / HR |
| Customer-identifying or contract data | Legal |
| Pre-announcement financials | Finance + Legal |
| Security incident details | Security |
| Anything you wouldn't paste in a public Teams channel | Manager |

See [governance/escalation.md](../governance/escalation.md).

## Multi-agent cowork

When chaining agents (e.g. an analyst agent → a comms agent), use [agent-handoff](../skills/agent-handoff/SKILL.md): pass a structured handoff packet (goal, context links, constraints, what was tried, what's next). Never assume the next agent retains prior context.

## Choose your function

The scenario packs ship for multiple functions — keep the ones you need:

- 👥 HR — onboarding, performance, policy
- 💰 Finance — variance, board pre-reads, audit
- 📈 Sales — account briefs, proposals, QBRs
- 📋 Project Management — status, risk, steerco

The six core kata are function-agnostic.

## Helper scripts

- `pwsh scripts/init.ps1` — scaffold `tasks/todo.md` and `tasks/lessons.md`
- `pwsh scripts/verify.ps1` — pre-ship checks (lessons file present, todo not template-default)
- `pwsh scripts/lesson-updater.ps1` — scan lessons for 3+ patterns and propose promotion to `memory/patterns/`

## Self-improvement

After every meaningful session, append to `tasks/lessons.md`:

```yaml
- date: 2026-04-30
  scenario: meeting-prep / steerco
  what_worked: pulling last 3 status decks before drafting
  what_failed: asked Copilot for risk owners by name — hallucinated
  rule: never accept named-person attributions without source
```

When the same rule appears 3+ times, run `pwsh scripts/lesson-updater.ps1` and promote it.
