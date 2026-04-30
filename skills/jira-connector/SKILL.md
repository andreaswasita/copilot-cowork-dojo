---
name: jira-connector
category: kumite-connector
description: >-
  Drive Jira from Copilot — create / update issues, run JQL queries, manage
  sprints and boards, generate release notes. Use whenever engineering or
  delivery context is captured in Jira and needs to flow into a cowork
  deliverable (status, steerco, retro).
---

# Jira Connector

JQL is the API. Master a small set of canonical queries and your status updates write themselves.

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

## Canonical JQL patterns

| Goal | JQL |
|---|---|
| Open work for a sprint | `project = ABC AND sprint in openSprints()` |
| Stuck items | `project = ABC AND status = "In Progress" AND updated < -7d` |
| Release candidate | `fixVersion = "v2.4.0" AND status != Done` |
| My team's escalations | `project = ABC AND priority in (Highest, High) AND resolution = Unresolved` |

## Known Pitfalls

- Custom field IDs differ between Jira instances — never hardcode `customfield_10001` across tenants.
- `assignee = currentUser()` returns the API user, not the human being asked.
- Bulk transitions can fire automation rules (Slack pings, escalations) — dry-run first.
- Pagination — default page size hides issues; iterate explicitly.

## Anti-Patterns

- Using Jira summary text as the source-of-truth for an executive update — it's engineer shorthand. Translate.
- Creating issues without parent / epic links — orphan tickets get lost.
- Closing issues from Copilot without a closing comment explaining why.
