---
name: confluence-connector
category: kumite-connector
description: >-
  Read, search, create, and update Confluence pages from Copilot. Use when
  the team's durable knowledge — runbooks, decision records, design docs,
  meeting archives — lives in Confluence rather than SharePoint. Triggers:
  "find the runbook", "publish the decision", "Confluence page", "RFC",
  "wiki page".
---

# Confluence Connector

Confluence is wiki-as-knowledge-graph. Use page hierarchy and labels — they're the schema your synthesis depends on.

---

## Quick Reference

| Task | Approach |
|---|---|
| Find prior art | CQL by `space` + `label` + `lastmodified` — before creating |
| Publish a decision | Resolve `parentId` → create with `decision` label → link to RFC |
| Update a runbook | Read `storage` representation → edit → publish with version bump |
| Find duplicates | `title ~ "..."` across the space; merge before adding |
| Cross-link to Jira | Use Jira macro by issue key — not raw URL |
| Archive an old page | Add `archived` label, move to archive parent — don't delete |

## When to Use

- Grounding [research-synthesis](../research-synthesis/SKILL.md) on a space's existing decisions / RFCs.
- Publishing a [decision-memo](../decision-memo/SKILL.md) or [meeting-recap](../meeting-recap/SKILL.md) into the team's space.
- Updating a runbook with a new step from a recent incident.
- Cross-linking a new page to its parents and siblings.

## Tool Sequence

1. **Resolve the space + parent page.** `spaceKey` + `parentId`. New pages without a parent become orphans.
2. **Search** with CQL before creating — duplicates are the #1 Confluence pathology.
3. **Read** the page (storage format / ADF) — not just the rendered view; macros matter.
4. **Create / update** with proper headings, labels, and links to parents / RFCs.
5. **Verify** the page renders correctly — macros (Jira, Excerpt, ToC) often break on first publish.

## Canonical CQL Patterns

| Goal | CQL |
|---|---|
| Recent decisions in a space | `space = ENG AND label = "decision" AND lastmodified > now("-30d")` |
| Find duplicates of a title | `space = ENG AND title ~ "incident response"` |
| RFCs awaiting review | `space = ARCH AND label = "rfc" AND label = "review"` |
| Stale runbooks | `space = OPS AND label = "runbook" AND lastmodified < now("-180d")` |
| Pages by an author | `space = ENG AND creator = "username"` |

## Parameter Guidance

| Parameter | Why it matters |
|---|---|
| `spaceKey` | Spaces have permissions — wrong space = wrong audience. |
| `parentId` | Determines breadcrumb / tree placement. |
| `labels` | Drive your CQL hygiene. Standardize across the team. |
| `representation` | `storage` for round-trippable edits, `wiki` for quick markdown-ish. |
| `version.number` | Required for concurrency-safe updates. |

## Critical Rules

- **Search before create.** Duplicates fragment knowledge.
- **Every page has a parent.** Orphans don't get found.
- **Labels are your schema.** Standardize them; document them; enforce them.
- **Storage format for edits**, not the rendered HTML.
- **Decision records are immutable.** Supersede with a new page; don't rewrite history.

## Common Pitfalls

- Editing a page without setting `version.number` correctly — concurrency conflict.
- Macros that depend on app-specific permissions (Jira issues macro) silently render empty for other readers.
- Personal spaces vs. team spaces — auto-created personal pages are the source of most "I can't find it" complaints.
- Lossy round-trip when converting markdown → storage → markdown.
- Page titles that don't surface in CQL `title ~` because of stop-word stripping.
- Comments and inline reactions lost when copy-pasting from rendered view.

## Anti-Patterns

- Long Confluence pages that should be split — Copilot synthesis loses signal in 10k-word blobs.
- Pasting Copilot output without labels — kills future discoverability.
- Creating decision records in Confluence and *also* in SharePoint — pick one source of truth per team.
- Using personal spaces for team artifacts.

## Verify Before Publishing

- [ ] Space + parent + labels correct.
- [ ] No duplicate page already exists for this topic.
- [ ] Macros render (refresh after publish; check as a different user if possible).
- [ ] Cross-links to Jira / other Confluence pages resolve.
- [ ] Page title is searchable (no all-caps, no special chars).
- [ ] Sensitivity / restrictions set if needed.

## Related

- [research-synthesis](../research-synthesis/SKILL.md), [decision-memo](../decision-memo/SKILL.md), [meeting-recap](../meeting-recap/SKILL.md)
- [jira-connector](../jira-connector/SKILL.md) — for linking to engineering work
- [onedrive-connector](../onedrive-connector/SKILL.md) — when SharePoint is the wiki instead
