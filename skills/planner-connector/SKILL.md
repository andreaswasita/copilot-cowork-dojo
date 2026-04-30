---
name: planner-connector
category: kumite-connector
description: >-
  Manage Microsoft Planner / Tasks (and the Planner Premium / Project for the
  Web surface) from Copilot — create tasks, update assignments, roll up status,
  generate steerco views. Use for project-coordinator workflows.
---

# Planner Connector

A status update is only as good as the underlying task data. Make Planner the source of truth, then let Copilot do the rolling-up.

## When to Use

- Converting meeting actions into Planner tasks with owners and due dates.
- Rolling up plan status for a [status-update](../status-update/SKILL.md) or steerco pre-read.
- Reconciling Planner vs. a separate tracker (Excel, Loop, Jira).
- Creating recurring task templates from a kata-style checklist.

## Tool Sequence

1. **Resolve the plan / bucket** — `planId`, `bucketId`. Bucket = workstream; choose deliberately.
2. **Read** open tasks filtered by assignee, due date, label.
3. **Create / update** tasks with owner (AAD ID), due date, checklist, and label. Empty owner = unowned task = drift risk.
4. **Roll up** by bucket / label / owner — render as table or burndown.
5. **Verify** that owners are *current* (not departed colleagues) and that due dates respect dependencies.

## Parameter Guidance

| Parameter | Why it matters |
|---|---|
| `planId` / `bucketId` | Identify the right plan; users often have several. |
| `assignments` | Multi-assign is allowed but blurs accountability — prefer single owner. |
| `appliedCategories` | Color labels are the cheap way to slice (e.g., risk vs. action). |
| `dueDateTime` | Time component is rarely meaningful — normalize to end-of-day in the owner's TZ. |
| `priority` | 1=urgent … 9=low. Reserve `1` for genuine escalations. |

## Known Pitfalls

- Bulk-importing tasks without owners — they vanish from "Assigned to me" views.
- Updating a Planner that someone else owns without a comment trail — they lose context.
- Treating completed tasks as deletable — they're the audit trail.
- Sync lag with To Do / Outlook Tasks — verify in Planner UI after a Copilot bulk write.

## Anti-Patterns

- Creating duplicate plans for the same project (one in Planner, one in Loop, one in Excel) — pick one.
- Using Planner for portfolio reporting — that's Project for the Web or Power BI territory.
- Letting Copilot guess due dates from vague verbal commitments. Ask, then assign.
