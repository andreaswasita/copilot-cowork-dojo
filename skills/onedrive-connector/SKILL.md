---
name: onedrive-connector
category: kumite-connector
description: >-
  Read, write, search, and share files in OneDrive / SharePoint via Copilot
  connectors. Use whenever the deliverable lives in a document library or a
  user's OneDrive — including grounding Copilot on a specific file or folder.
---

# OneDrive / SharePoint Connector

The file is the unit of governance. Sensitivity label, retention, sharing scope — all attach to the file, not the chat.

## When to Use

- Grounding a Copilot session on a specific file, folder, or library.
- Saving a deliverable into the right library with the right label.
- Sharing a file with an internal/external audience under the right link policy.
- Versioning — comparing or restoring previous versions during review.

## Tool Sequence

1. **Resolve the location** — `driveId` + `itemId` (or site + library + path). Never operate by friendly URL alone.
2. **Check the sensitivity label** before reading. Confidential / Highly Confidential content has handling rules — see [governance/data-handling.md](../../governance/data-handling.md).
3. **Read / write** through the connector. For writes, save to a draft path first, not the published one.
4. **Set sharing scope explicitly** — *People in your org*, *Specific people*, or *Anyone with the link* (rarely). Default link policy ≠ correct policy.
5. **Verify** the file landed at the expected path, with the expected label, with the expected sharing.

## Parameter Guidance

| Parameter | Why it matters |
|---|---|
| `driveId` / `itemId` | Stable identifiers; survives renames. |
| `sensitivityLabel` | Inherited from container — overriding requires rights. |
| `sharingScope` | Anonymous links may be tenant-blocked; check before promising. |
| `conflictBehavior` | `rename` vs. `replace` vs. `fail` — pick deliberately. |

## Known Pitfalls

- Saving externally-shareable output into a confidential library and breaking inheritance.
- Reading from a SharePoint site you have access to but the audience does not — citing a URL nobody can open.
- Assuming "OneDrive" and "SharePoint" are the same surface — they share an API but have different governance defaults.
- Version explosion from autosave during a long Copilot session.

## Anti-Patterns

- Mailing a file as an attachment when a OneDrive link would track access and revoke cleanly.
- Bulk renaming files via connector with no audit trail.
- Granting *Anyone with the link* on a file referenced from a public deck — accidental disclosure.
