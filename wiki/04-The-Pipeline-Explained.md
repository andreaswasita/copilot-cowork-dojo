# 04 — The Pipeline Explained

> ⏱ **10 minutes** · 🎯 **Understand the 7 steps and why none can be skipped**

```
CLARIFY → PLAN → DRAFT → REVIEW → REFINE → SHIP → LEARN
```

Every step exists because, somewhere, somebody shipped a bad deliverable from skipping it. The cost of each step is small. The cost of skipping it is the embarrassment of an exec catching a hallucinated number.

## The 7 steps

### 1. CLARIFY — Restate the ask before prompting

**Why:** You can't draft what you can't define. Vague asks waste 10 prompts.
**How:** Frame audience, outcome, format, constraints. Confirm before drafting.
**Skill:** [clarify-the-ask](../skills/clarify-the-ask/SKILL.md)

### 2. PLAN — Sketch the deliverable before opening Copilot

**Why:** Copilot drafts beautifully when given shape. It rambles when it isn't.
**How:** Two-minute outline — sections, sources, length.
**Skill:** [plan-before-prompt](../skills/plan-before-prompt/SKILL.md)

### 3. DRAFT — First cut, section by section, with grounded context

**Why:** "Write the whole memo" outputs more text to fix than to write yourself.
**How:** One section at a time. Attach the relevant source per section.
**Skill:** [drafting-with-copilot](../skills/drafting-with-copilot/SKILL.md)

### 4. REVIEW — Five-lens critique

**Why:** Fluent ≠ correct. Copilot is always confident; that's not the same as right.
**How:** Facts, tone, omissions, bias, audience-fit. Mark 🟢/🟡/🔴.
**Skill:** [reviewing-output](../skills/reviewing-output/SKILL.md)

### 5. REFINE — Targeted follow-ups

**Why:** "Try again" teaches Copilot nothing. Specificity gets you to ship in 2 prompts, not 20.
**How:** Name *what* to change, *why*, *what good looks like*.
**Skill:** [refining-iteratively](../skills/refining-iteratively/SKILL.md)

### 6. SHIP — Final QA gate

**Why:** Deadlines pressure you to skip the last check. The last check is exactly when the gate matters most.
**How:** Verified, cited, sensitivity-cleared, audience-fit, owned, logged.
**Skill:** [shipping-the-deliverable](../skills/shipping-the-deliverable/SKILL.md)

### 7. LEARN — Log a lesson, every time

**Why:** Without LEARN, the dojo is just a checklist. With LEARN, it gets sharper every week.
**How:** Append a YAML entry to `tasks/lessons.md`. Promote when patterns repeat.
**Skill:** [learn-from-every-session](../skills/learn-from-every-session/SKILL.md)

## Visualizing the pipeline

```
        ┌───────────┐
        │ CLARIFY   │  Restate. Confirm.
        └─────┬─────┘
              ▼
        ┌───────────┐
        │ PLAN      │  Sections. Sources. Length.
        └─────┬─────┘
              ▼
        ┌───────────┐
        │ DRAFT     │  Section by section.
        └─────┬─────┘
              ▼
        ┌───────────┐         ◀── refine in tight loops ──┐
        │ REVIEW    │  Five lenses.                       │
        └─────┬─────┘                                     │
              ▼                                           │
        ┌───────────┐                                     │
        │ REFINE    │  Targeted only. ────────────────────┘
        └─────┬─────┘
              ▼
        ┌───────────┐
        │ SHIP      │  Gate. Verified. Cited. Owned.
        └─────┬─────┘
              ▼
        ┌───────────┐
        │ LEARN     │  Log. Promote at 3+.
        └───────────┘
```

## When can I skip steps?

Honest answer: rarely.

| Situation | Skip? |
|---|---|
| One-line answer, no audience risk | ✅ Skip the whole pipeline |
| Reply to a teammate, internal, no decisions | ⚠️ Light pipeline (CLARIFY in head, REVIEW always) |
| Anything external, anything decision-supporting, anything to your boss's boss | 🚫 Full pipeline |

The mistake almost everyone makes is **skipping REVIEW because the draft "looks good."** It always looks good. That's the point.

→ [05 — Choose Your Path](./05-Choose-Your-Path.md)
