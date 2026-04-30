---
name: planner-connector
category: kumite-connector
description: >-
  Manage Microsoft Planner / Tasks (and the Planner Premium / Project for the
  Web surface) from Copilot — create tasks, update assignments, roll up
  status, generate steerco views. Use for project-coordinator workflows and
  meeting-action tracking. Triggers: "create tasks from this", "Planner
  status", "assign to", "due date", "roll up tasks".
---

# Planner Connector

A status update is only as good as the underlying task data. Make Planner the source of truth, then let Copilot do the rolling-up.

---

## Quick Reference

| Task | Approach |
|---|---|
| Convert meeting actions to tasks | Resolve `planId`+`bucketId` → create with owner + due → link back |
| Roll up status for steerco | Filter by bucket / label / owner → render as table |
| Reassign departed colleague's tasks | Bulk update with audit comment; never silent |
| Spot drift | Tasks past due > 14d, or unowned for > 7d → flag |
| Reconcile two trackers | Pick one as canonical; mirror only one direction |
| Recurring template | Save the checklist as a Planner template, not as instructions in chat |

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

## Critical Rules

- **Every task has a single owner.** Multi-assign blurs accountability.
- **Every task has a due date.** "Someday" tasks become drift.
- **Departed-colleague check.** Before bulk operations, verify owners are still in the directory.
- **Audit trail via task comments.** Bulk Copilot updates without a comment trail leave the plan owner blind.
- **Pick one tracker per project.** Sync issues kill more projects than missed deadlines.

## Common Pitfalls

- Bulk-importing tasks without owners — they vanish from "Assigned to me" views.
- Updating a Planner that someone else owns without a comment trail — they lose context.
- Treating completed tasks as deletable — they're the audit trail.
- Sync lag with To Do / Outlook Tasks — verify in Planner UI after a Copilot bulk write.
- Due dates that ignore weekends, holidays, or owner TZ.
- Labels invented per task instead of standardized — kills roll-up.

## Anti-Patterns

- Creating duplicate plans for the same project (one in Planner, one in Loop, one in Excel) — pick one.
- Using Planner for portfolio reporting — that's Project for the Web or Power BI territory.
- Letting Copilot guess due dates from vague verbal commitments. Ask, then assign.
- Letting an unowned task sit in "Assigned to no-one" — orphans never get done.

## Verify Before Roll-up

- [ ] All tasks have a current, single owner.
- [ ] Due dates respect dependencies and owner availability.
- [ ] Labels are standardized across tasks (not free-text).
- [ ] Roll-up filters intentional (sprint? quarter? all open?).
- [ ] Status counts match the plan view (no hidden filters).
- [ ] Comment trail explains any bulk Copilot operation.

## Related

- [meeting-recap](../meeting-recap/SKILL.md), [status-update](../status-update/SKILL.md)
- [jira-connector](../jira-connector/SKILL.md) — if engineering work is in Jira
- [teams-connector](../teams-connector/SKILL.md) — for posting roll-ups into channels
