---
name: confluence-connector
category: kumite-connector
description: >-
  Read, search, create, and update Confluence pages from Copilot. Use when the
  team's durable knowledge — runbooks, decision records, design docs, meeting
  archives — lives in Confluence rather than SharePoint.
---

# Confluence Connector

Confluence is wiki-as-knowledge-graph. Use page hierarchy and labels — they're the schema your synthesis depends on.

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

## Canonical CQL patterns

| Goal | CQL |
|---|---|
| Recent decisions in a space | `space = ENG AND label = "decision" AND lastmodified > now("-30d")` |
| Find duplicates of a title | `space = ENG AND title ~ "incident response"` |
| RFCs awaiting review | `space = ARCH AND label = "rfc" AND label = "review"` |

## Parameter Guidance

| Parameter | Why it matters |
|---|---|
| `spaceKey` | Spaces have permissions — wrong space = wrong audience. |
| `parentId` | Determines breadcrumb / tree placement. |
| `labels` | Drive your CQL hygiene. Standardize across the team. |
| `representation` | `storage` for round-trippable edits, `wiki` for quick markdown-ish. |

## Known Pitfalls

- Editing a page without setting `version.number` correctly — concurrency conflict.
- Macros that depend on app-specific permissions (Jira issues macro) silently render empty for other readers.
- Personal spaces vs. team spaces — auto-created personal pages are the source of most "I can't find it" complaints.
- Lossy round-trip when converting markdown → storage → markdown.

## Anti-Patterns

- Long Confluence pages that should be split — Copilot synthesis loses signal in 10k-word blobs.
- Pasting Copilot output without labels — kills future discoverability.
- Creating decision records in Confluence and *also* in SharePoint — pick one source of truth per team.
