---
name: jira-connector
category: kumite-connector
description: >-
  Drive Jira from Copilot — create / update issues, run JQL queries, manage
  sprints and boards, generate release notes. Use whenever engineering or
  delivery context is captured in Jira and needs to flow into a cowork
  deliverable (status, steerco, retro). Triggers: "Jira status", "JQL",
  "create issue", "release notes", "sprint summary".
---

# Jira Connector

JQL is the API. Master a small set of canonical queries and your status updates write themselves.

---

## Quick Reference

| Task | Approach |
|---|---|
| Status for a sprint | `project = X AND sprint in openSprints()` → group by status |
| Stuck items | `status = "In Progress" AND updated < -7d` |
| Release notes | `fixVersion = "vX.Y" AND status = Done` → group by component |
| Create from action | Pick project + parent epic; set priority + labels; link back |
| Bulk transition | Dry-run with one issue; verify automation didn't fire; then expand |
| Cross-tenant work | Re-resolve custom field IDs; don't carry IDs across instances |

## When to Use

- Pulling issue context into a [status-update](../status-update/SKILL.md), steerco pre-read, or release note.
- Creating issues from meeting actions ([meeting-recap](../meeting-recap/SKILL.md)) and linking back.
- Reconciling Jira vs. Planner / roadmap docs.
- Bulk-updating labels, fix versions, or components after a re-plan.

## Tool Sequence

1. **Frame with JQL.** Start narrow: project, sprint, status, assignee. Iterate.
2. **List** issues — pull only the fields you need (`summary`, `status`, `assignee`, `priority`, `labels`, `fixVersion`, `parent`, `customfield_xxxx`).
3. **Read** the issue body / comments only when synthesis requires it (cost / latency).
4. **Create / transition** with explicit fields. Transitions require the workflow's `transitionId`, not a status name.
5. **Verify** the result with a follow-up JQL — never trust the create response alone.

## Canonical JQL Patterns

| Goal | JQL |
|---|---|
| Open work for a sprint | `project = ABC AND sprint in openSprints()` |
| Stuck items | `project = ABC AND status = "In Progress" AND updated < -7d` |
| Release candidate | `fixVersion = "v2.4.0" AND status != Done` |
| My team's escalations | `project = ABC AND priority in (Highest, High) AND resolution = Unresolved` |
| Recently closed (release notes) | `project = ABC AND resolutiondate >= -14d AND status = Done` |
| Orphans (no epic) | `project = ABC AND "Epic Link" is EMPTY AND issuetype = Story` |

## Critical Rules

- **JQL first, fields second.** Don't list fields until the query is right.
- **Transitions need IDs, not names.** Status names look the same; workflow IDs differ per project.
- **Custom field IDs are tenant-scoped.** Re-resolve when moving between Jira instances.
- **Dry-run bulk updates.** Automation rules fire on transitions and can cascade.
- **Cite issues by key (`PROJ-123`)**, not by title — titles change.

## Common Pitfalls

- Custom field IDs differ between Jira instances — never hardcode `customfield_10001` across tenants.
- `assignee = currentUser()` returns the API user, not the human being asked.
- Bulk transitions can fire automation rules (Slack pings, escalations) — dry-run first.
- Pagination — default page size hides issues; iterate explicitly.
- Sprint IDs change between sprints; `openSprints()` is more durable.
- Comment markdown that looks fine in Jira renders raw in connector output.

## Anti-Patterns

- Using Jira summary text as the source-of-truth for an executive update — it's engineer shorthand. Translate.
- Creating issues without parent / epic links — orphan tickets get lost.
- Closing issues from Copilot without a closing comment explaining why.
- Pasting raw JQL output into an exec status without translation.

## Verify Before Roll-up

- [ ] JQL returns the expected count (sanity-check against a known view).
- [ ] No issues silently dropped by pagination.
- [ ] Status / priority / labels translated for the audience (not raw).
- [ ] Issue keys cited so readers can drill in.
- [ ] No Highest-priority items omitted from the summary.

## Related

- [status-update](../status-update/SKILL.md), [meeting-recap](../meeting-recap/SKILL.md), [research-synthesis](../research-synthesis/SKILL.md)
- [confluence-connector](../confluence-connector/SKILL.md) — for the design doc / RFC behind the issue
- [planner-connector](../planner-connector/SKILL.md) — when the project tracker is Planner
