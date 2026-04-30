# 08 — Promote Patterns

> ⏱ **10 minutes** · 🎯 **Turn recurring lessons into team rules**

A lesson learned three times stops being a lesson. It's a rule. Promote it.

## Why promotion matters

- **Lessons** live in `tasks/lessons.md`. They're individual, scratch-pad, low-trust.
- **Patterns** live in `memory/patterns/`. They're team-wide, vetted, high-trust.

Patterns are what new teammates inherit on day 1. Without promotion, every new hire re-learns the same mistakes.

## The promotion trigger

A pattern is ready to promote when:

- ✅ The same `rule:` appears **3+ times** in `tasks/lessons.md`.
- ✅ The lessons span **at least 2 different scenarios** (otherwise it's scenario-specific, not a pattern).
- ✅ You can state the rule in one imperative sentence.

## The promotion workflow

### Step 1 — Scan

```powershell
pwsh scripts/lesson-updater.ps1
```

Output:

```
Promotable rules (>= 3 occurrences):

  Rule:        never accept named-person attributions without source
  Occurrences: 4
  Propose:     create memory/patterns/never-accept-named-person-attributions-without-source.md
```

### Step 2 — Copy the template

```powershell
Copy-Item memory/patterns/_template.md memory/patterns/<slug>.md
```

### Step 3 — Fill it in

```yaml
---
type: pattern
date: 2026-04-30
tags: [hallucination, owners, recap]
status: active
occurrences: 4
links:
  - ../../skills/verify-before-send/SKILL.md
  - ../../skills/meeting-recap/SKILL.md
---

# Pattern: Never accept named-person attributions without source

## Why this is a pattern
Source lessons (4):
- tasks/lessons.md 2026-04-12 — recap invented an action owner
- tasks/lessons.md 2026-04-18 — status update attributed a quote
- tasks/lessons.md 2026-04-25 — brief named a "supporter" of an option
- tasks/lessons.md 2026-04-29 — recap mis-named the decision-maker

## The rule
If Copilot attributes anything to a named person, verify against the actual
attendee list, message, or document before keeping the attribution.
If it can't be verified, replace with "owner TBD" or remove.

## How to apply
1. In every REVIEW pass, search the draft for proper names.
2. For each, open the source the name should appear in.
3. If absent → strip or replace.

## Anti-patterns this prevents
- Recaps with imaginary action owners.
- Status updates with imaginary champions.
- Briefs with imaginary "alignment."
```

### Step 4 — Cross-link

- Add a one-line reference in the most affected SKILL.md(s).
- Mention the new pattern in your team's next standup or comms channel.

### Step 5 — Optional: archive the source lessons

In `tasks/lessons.md`, add a `# promoted →` annotation next to each source line so they don't get re-counted.

## How often should I promote?

In month 1, you'll promote 1–2 patterns. By month 3, you'll have 5–10. After that, promotion slows — most of the recurring stuff is already a rule.

If you go 3 months without promoting anything, either:

- The team has matured (great), or
- People stopped logging lessons (bad — investigate).

## Promotion anti-patterns

- **Promoting a one-off.** Wait for the third occurrence.
- **Promoting from a single person's lessons.** Ideally the lesson recurs across 2+ teammates.
- **Vague patterns.** "Be more careful" is not a rule. State the trigger and the action.
- **Patterns that contradict an existing pattern.** Reconcile or supersede the old one explicitly.

→ [09 — Run a Team Workshop](./09-Run-a-Team-Workshop.md)
