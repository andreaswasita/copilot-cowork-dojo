# 02 — Setup

> ⏱ **10 minutes** · 🎯 **Get the dojo running on your machine**

You only do this once.

## Prerequisites

- Windows, macOS, or Linux.
- **PowerShell 7+** (for the helper scripts). On Windows you likely have it already as `pwsh`. [Install if needed](https://learn.microsoft.com/powershell/scripting/install/installing-powershell).
- **Git** (any recent version).
- A Microsoft 365 account with **Copilot Cowork** enabled.

## Step 1 — Get the dojo

Pick the option that matches you.

### Option A — You're the first person on your team

```powershell
git clone https://github.com/<your-org>/copilot-cowork-dojo.git
cd copilot-cowork-dojo
```

(Or fork this repo first, then clone your fork.)

### Option B — Your team already has a dojo repo

```powershell
git clone <your-team's-dojo-url>
cd <repo-name>
git pull
```

### Option C — Just looking, no git yet

Download the repo as a ZIP from GitHub → unzip → open the folder.

## Step 2 — Initialize

From the repo root:

```powershell
pwsh scripts/init.ps1
```

You should see:

```
Created: .../tasks
Created: .../tasks/todo.md
Exists:  .../tasks/lessons.md (left untouched)

Dojo initialized. Next: pick a scenario from scenarios/ and run the pipeline.
```

> ℹ️ `tasks/todo.md` is intentionally seeded with `REPLACE THIS WITH YOUR PLAN`. The CI gate fails until you replace it. That's the gate that forces you to actually plan.

## Step 3 — Look around (90 seconds)

Open these three files. Don't read them all — just see what's where:

- [README.md](../README.md) — the front door.
- [skills.md](../skills.md) — the master skills index.
- [.github/copilot-instructions.md](../.github/copilot-instructions.md) — the house rules Copilot follows in this workspace.

## Step 4 — Verify

```powershell
pwsh scripts/verify.ps1
```

You'll see:

- ✅ `tasks/lessons.md present`
- ⚠️ `tasks/todo.md still has the default template` ← this is **expected** until you write a plan
- ✅ `skills.md references 24 skills, all present`

## Step 5 — Sensitivity & data check

Before your first real session, skim:

- [governance/data-handling.md](../governance/data-handling.md) — the four-question gate.
- [governance/escalation.md](../governance/escalation.md) — when to stop and escalate.

You don't need to memorize them. You need to know they exist.

## Done

→ [03 — Your First Session](./03-Your-First-Session.md)
