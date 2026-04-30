# Troubleshooting

## Setup

### `pwsh: command not found`

PowerShell 7+ isn't installed. [Install it](https://learn.microsoft.com/powershell/scripting/install/installing-powershell). On Windows you can also try `powershell` (Windows PowerShell 5.1) — the scripts are compatible.

### `scripts/init.ps1` says "execution policy"

Run once per session:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

Or invoke explicitly:

```powershell
pwsh -ExecutionPolicy Bypass -File scripts/init.ps1
```

### `verify.ps1` fails on `tasks/todo.md`

That's **expected** until you replace `REPLACE THIS WITH YOUR PLAN` with a real plan. The CI gate is intentional.

### `verify.ps1` says a skill referenced in `skills.md` is missing

Either the SKILL.md was deleted, or `skills.md` has a typo. Open both and reconcile.

---

## Pipeline

### My CLARIFY keeps stalling — the requester won't answer

You're allowed to **state your assumption explicitly** and proceed:

> "I'm assuming the audience is the exec team and the deliverable is a 1-pager — let me know in the next hour if that's wrong."

That's better than waiting indefinitely or guessing silently.

### PLAN feels heavy for short outputs

Use the lighter version: 30-second skeleton in your head, not on paper. PLAN is mandatory only for outputs that have **structure** (multiple sections, multiple audiences, ≥150 words).

### DRAFT keeps producing too-long output

You're prompting the whole thing instead of section-by-section. Re-read [drafting-with-copilot](../skills/drafting-with-copilot/SKILL.md).

### REVIEW finds nothing wrong

Either you didn't really review, or your draft was small enough to skip. Re-run the five lenses out loud to a teammate. Something will surface.

### REFINE turns into infinite tweaking

Cap at **2 refine passes**. If you're past that, your CLARIFY or PLAN was wrong. Go back, don't soldier on.

### SHIP keeps catching the same defects

That's the dojo working. Log the defect type as a lesson. After 3 occurrences → promote it as a pattern.

### LEARN feels pointless when nothing went wrong

Then log "what worked." Three "what worked" entries on the same theme = a pattern worth promoting.

---

## Copilot behavior

### Copilot keeps hallucinating names

Two fixes, in order:

1. **Attach the source** (attendee list, email thread). Don't just describe it.
2. **Constrain the prompt:** *"Only use names that appear in [source]. If a role isn't filled by a named person in the source, write 'TBD'."*

### Copilot ignores my pinned intent frame

Re-paste the frame at the top of each follow-up prompt for the first few exchanges. Copilot context-retention is finite.

### Copilot summary changes the meaning

Switch to **faithful extraction** instead of summarization (see [prompts/library.md](../prompts/library.md) → "Faithful extraction"). It quotes verbatim instead of paraphrasing.

### The output is fluent but generic

You skipped CLARIFY (no audience) or didn't attach source context. Generic in → generic out.

### Copilot won't access a file I've referenced

Make sure:
- The file is in a location Copilot is permitted to index.
- You're in the right Cowork workspace.
- The file isn't restricted by sensitivity labels.
Ask Copilot: *"List the sources you can access right now."*

---

## Sensitivity & governance

### I'm not sure if my content is "sensitive"

Run the four-question gate ([data-handling.md](../governance/data-handling.md)). If you're unsure on **any** question, escalate. The cost of escalation is 5 minutes; the cost of a leak is much more.

### My escalation contact is unavailable and I have a deadline

Default to **hold the artifact**. Send a holding reply ("I'll have this for you tomorrow EOD"). Better to be late than to leak.

### Copilot output contains content I didn't intend

Strip it. Don't ship "almost-right" output. Re-prompt with explicit *must avoid* constraints.

---

## Team adoption

### My team uses the framework inconsistently

Normal in weeks 1–4. Run office hours. By week 4, the variance shrinks dramatically.

### Lessons aren't getting logged

Two likely causes:
1. Logging feels like blame — make it explicit that lessons are safe.
2. There's no end-of-day ritual. Add `tasks/lessons.md` to the daily shutdown.

### Patterns aren't getting promoted

Run `pwsh scripts/lesson-updater.ps1` weekly. If nothing has hit 3+ but you *know* the same things keep going wrong — your team is logging too vaguely. Coach on writing crisper rules.

### Skills are growing out of control

Audit quarterly: which skills got referenced in the last 90 days? Merge or retire the rest.

---

## Still stuck?

Open an issue on the repo with:

- What you tried
- What happened
- What you expected

Or check the [FAQ](./FAQ.md).
