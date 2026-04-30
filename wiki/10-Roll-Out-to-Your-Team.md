# 10 — Roll Out to Your Team

> ⏱ **30 minutes to plan, 90 days to embed** · 🎯 **Move from a workshop moment to a team operating rhythm**

A workshop is a spark. A rollout is the fire that keeps burning.

## The rollout arc

```
Week 0   →   Week 1–2   →   Week 3–4   →   Month 2   →   Month 3
Pilot       Workshop      Office       First         Embed in
team        wave          hours        promotions    onboarding
```

## Step 1 — Pilot team (Week 0)

Pick **3–6 people** who will be your first cohort.

- Mix functions if possible (analyst + PM + EA, for example).
- Pick people who already use Copilot heavily — not skeptics.
- One must be a **manager** — middle-management adoption is the leading indicator for team adoption.

Run [03 — Your First Session](./03-Your-First-Session.md) with them, individually, before any group event.

## Step 2 — Workshop wave (Week 1–2)

Run the half-day workshop ([09 — Workshop](./09-Run-a-Team-Workshop.md)) with the broader team.

Keep cohorts small (≤ 24). Bigger groups become lectures.

## Step 3 — Office hours (Week 3–4)

30-minute weekly drop-in. No agenda. People bring stuck moments.

You'll hear:

- "Copilot keeps inventing X — what do I do?" → it's a verify gap, point at [verify-before-send](../skills/verify-before-send/SKILL.md).
- "I don't know which scenario fits." → walk them through [05 — Choose Your Path](./05-Choose-Your-Path.md).
- "This works for memos but not for slides." → great input for a new scenario.

Capture every recurring question in `tasks/lessons.md`. By week 4, you'll have your first promotable patterns.

## Step 4 — First promotions (Month 2)

Run the lesson review:

```powershell
pwsh scripts/lesson-updater.ps1
```

Promote 1–3 patterns to `memory/patterns/` and announce them in the team channel. *Visible* promotion is what makes patterns feel real.

→ [08 — Promote Patterns](./08-Promote-Patterns.md)

## Step 5 — Embed in onboarding (Month 3)

This is what makes the dojo *outlast you*.

- Add the [README](../README.md) and [wiki/01](./01-Start-Here.md) to your team's new-hire pack.
- Make running [03 — Your First Session](./03-Your-First-Session.md) part of the first-week checklist.
- Pair every new hire with a "dojo buddy" from the pilot team.

## Step 6 — Quarterly belt-up

Once a quarter, 60 minutes:

- Which patterns landed? Which didn't?
- What new scenarios emerged that should be added to `scenarios/`?
- Are sensitivity gates still appropriate, or has the data classification changed?
- Which skills got dusty — refresh, merge, or retire.

## Metrics that actually matter

Don't obsess over usage counts. Watch the leading indicators:

| Indicator | Why it matters | Healthy signal |
|---|---|---|
| Lessons/week per person | Engagement with LEARN | ≥ 1 by week 4 |
| Patterns promoted/month | Team is compounding learning | ≥ 1 by month 2 |
| Revisions on Copilot-assisted deliverables | Quality | Trending down |
| New scenarios contributed | Maturity | ≥ 1 in quarter 1 |
| Sensitivity escalations | Awareness, not anxiety | Some are good — zero means people aren't checking |

## Rollout anti-patterns

- **Mass-email the README and call it adoption.** No. Run the workshop.
- **Mandate it.** Mandated frameworks die. Demonstrated value sticks.
- **Skip the pilot team.** You'll discover org-specific friction in front of 30 people instead of 5.
- **No office hours.** Without the safety valve, people quietly go back to vague prompting.
- **Punish lessons.** Lessons must be safe to log, including the embarrassing ones. If logging a lesson hurts careers, no one logs.

## Talking points for leadership buy-in

- "This is *not* a tool — it's a small framework on top of the Copilot we're already paying for."
- "It surfaces the bad outputs we'd ship today, before they go out."
- "It captures what works, so we stop re-learning the same lessons across teams."
- "It pairs with our existing RAI/data classification — doesn't replace them."
- "Cost: a half-day workshop + 5 min/person/day. Payback: visible by week 4."

→ Browse the [FAQ](./FAQ.md) and [Troubleshooting](./Troubleshooting.md) for the questions that come up next.
