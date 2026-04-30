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

## Step 3 — Install the skills into Cowork

The 34 skills under [`skills/`](../skills) are how Cowork knows what to do when you say *"draft a decision memo"* or *"build the steerco deck."* You need to load them into Cowork's personal-skills folder so Cowork can discover them across sessions.

### Option 1 — Upload via the Cowork chat (recommended)

1. Zip the `skills/` folder:

   ```powershell
   $zip = "$env:USERPROFILE\Desktop\copilot-cowork-skills.zip"
   if (Test-Path $zip) { Remove-Item $zip }
   Compress-Archive -Path .\skills\* -DestinationPath $zip
   ```

2. Drag the zip into a Cowork chat and tell it:

   > *Unzip this into my personal skills folder (`/mnt/user-config/.claude/skills/`). Each top-level folder contains a `SKILL.md` — preserve the structure. Then list what landed.*

3. Cowork confirms the 34 skills are installed. They persist across sessions.

### Option 2 — Point Cowork at the repo

If your repo is public, paste this into Cowork:

> *Clone `https://github.com/<owner>/copilot-cowork-dojo` and copy each folder under `skills/` into `/mnt/user-config/.claude/skills/`.*

> ℹ️ Cowork runs in a cloud sandbox — it can't read files from your local machine directly. The zip-upload (or repo-clone) flow is how you bridge that gap.

## Step 4 — Look around (90 seconds)

Open these three files. Don't read them all — just see what's where:

- [README.md](../README.md) — the front door.
- [skills.md](../skills.md) — the master skills index. See also the [Skill Catalog](./Skill-Catalog.md) wiki page.
- [.github/copilot-instructions.md](../.github/copilot-instructions.md) — the house rules Copilot follows in this workspace.

## Step 5 — Verify

```powershell
pwsh scripts/verify.ps1
```

You'll see:

- ✅ `tasks/lessons.md present`
- ⚠️ `tasks/todo.md still has the default template` ← this is **expected** until you write a plan
- ✅ `skills.md references 34 skills, all present`

## Step 6 — Sensitivity & data check

Before your first real session, skim:

- [governance/data-handling.md](../governance/data-handling.md) — the four-question gate.
- [governance/escalation.md](../governance/escalation.md) — when to stop and escalate.

You don't need to memorize them. You need to know they exist.

## Done

→ [03 — Your First Session](./03-Your-First-Session.md)
