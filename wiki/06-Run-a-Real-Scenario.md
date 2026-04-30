# 06 — Run a Real Scenario

> ⏱ **30 minutes** · 🎯 **Take a real deliverable end-to-end, not a toy example**

This is where the dojo earns its keep. You'll pick a scenario from [scenarios/](../scenarios) and run it on your own work.

## Before you start

- ✅ You've done [03 — Your First Session](./03-Your-First-Session.md). The pipeline is no longer brand-new.
- ✅ You have a real deliverable owed in the next 7 days.
- ✅ You have access to the source artifacts (decks, threads, prior versions).

## Pick your scenario

| Scenario | Use it when… |
|---|---|
| [HR — 30/60/90](../scenarios/hr/scenario.md) | New hire starting; performance plan needed |
| [Finance — variance commentary](../scenarios/finance/scenario.md) | Month-end; variance vs. budget needs explaining |
| [Sales — QBR account brief](../scenarios/sales/scenario.md) | Customer review meeting; account state + asks |
| [PM — steerco pre-read](../scenarios/project-management/scenario.md) | Steering committee; status + decisions + risks |

Don't see yours? Pick the closest match — the **shape** transfers.

## How to run it

Each scenario has the same structure:

1. **Persona** — who's this for
2. **Trigger** — what kicks it off
3. **Goal** — what "done" looks like
4. **Walkthrough** — a numbered table mapping each step to a skill, a prompt pattern, and a verification check
5. **Common defects** — what usually goes wrong

> 🎯 Run the walkthrough table **row by row**. Don't jump ahead. The friction is the point.

## Tips for the first real run

- **Time-box.** 30 min for a 1-page deliverable, 60 min for a multi-section one. If you're past 90 min, your CLARIFY was wrong — go back to step 1.
- **Pin the intent frame.** Write audience + outcome + format + constraints into the Cowork session and reference it ("per the frame, ≤200 words").
- **Attach files, don't paste.** Long pastes degrade Copilot's grounding. Attach the source.
- **One section at a time.** Resist "draft the whole thing."
- **Be ruthless in REVIEW.** Find at least one defect. There always is one.

## When your scenario doesn't fit

Adapt. The walkthrough table is a template:

```
| # | Step | Skill | Prompt pattern | Verify |
|---|---|---|---|---|
| 1 | CLARIFY | clarify-the-ask | <your prompt> | <your check> |
| ... |
```

If you adapt successfully and the scenario doesn't exist yet — **contribute it.** See [CONTRIBUTING.md](../CONTRIBUTING.md).

## After you ship

Two non-negotiables:

1. **Log a lesson** in `tasks/lessons.md`.
2. **Note any source you wish had been available.** That's a context-gathering improvement for next time.

→ [07 — Daily Habits](./07-Daily-Habits.md)
