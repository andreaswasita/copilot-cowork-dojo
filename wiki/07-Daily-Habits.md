# 07 — Daily Habits

> ⏱ **5 minutes** · 🎯 **Make the dojo automatic, not aspirational**

The pipeline only works if it becomes habit. Five small habits do the heavy lifting.

## The 5 daily habits

### 1. The 90-second pre-flight

Before any Copilot session longer than a one-liner, fill in:

```
Audience: ___
Outcome: ___
Format: ___
Constraints: ___
```

Pin it in the chat. Reference it in every follow-up.

### 2. The four-question gate (every paste)

Before pasting *anything* into a prompt:

1. Personal data of named individuals?
2. Regulated content?
3. Are all session participants cleared?
4. Would I post this in a public Teams channel?

Any "yes / unsure" → escalate. ([data-handling.md](../governance/data-handling.md))

### 3. One section at a time

Never "draft the whole thing." Always section-by-section. The compound rate of Copilot errors across a long draft is brutal.

### 4. The 60-second verify

Before sending anything Copilot-assisted:

- Names: real and current?
- Numbers: traceable to a source?
- Quotes: opened and confirmed?
- Links: clicked?

If any "no" → fix or remove.

### 5. The end-of-session lesson

Append to `tasks/lessons.md`. Even when nothing went wrong — log "what worked." Three "what worked" entries on the same theme is a pattern to promote.

```yaml
- date: 2026-04-30
  scenario: <skill or scenario>
  what_worked: <one line>
  what_failed: <one line>
  rule: <prevention rule>
  tags: [...]
```

---

## Weekly habit

**Friday 15-minute review.**

```powershell
pwsh scripts/lesson-updater.ps1
```

Look at the rule counts. Anything at 3+? → [08 — Promote Patterns](./08-Promote-Patterns.md).

Anything at 2? Keep watching.

---

## Habit anti-patterns

- **"I'll catch up on lessons next week."** No, you won't. The cost of an in-the-moment lesson is 60 seconds. The cost of reconstructing one is 20 minutes — so you'll skip it.
- **"This task is too small for the pipeline."** It almost never is. Even a 3-line email benefits from CLARIFY + REVIEW.
- **Reading the SKILL.md instead of running it.** Skills are checklists, not essays. Use them, don't study them.

## How to make it stick (real talk)

- Put `tasks/lessons.md` in your daily shutdown ritual — alongside closing tabs and clearing the desk.
- Pair with a teammate. Send each other your weekly lesson digest.
- Print the [pipeline diagram](./04-The-Pipeline-Explained.md) and pin it.
- After 3 weeks, the pipeline runs in your head. Trust the process.

→ [08 — Promote Patterns](./08-Promote-Patterns.md)
