---
name: onedrive-connector
category: kumite-connector
description: >-
  Read, write, search, and share files in OneDrive / SharePoint via Copilot
  connectors. Use whenever the deliverable lives in a document library or a
  user's OneDrive — including grounding Copilot on a specific file or folder.
  Triggers: "ground on this file", "save to SharePoint", "share with",
  "find the latest version", "OneDrive link".
---

# OneDrive / SharePoint Connector

The file is the unit of governance. Sensitivity label, retention, sharing scope — all attach to the file, not the chat.

---

## Quick Reference

| Task | Approach |
|---|---|
| Ground a session on a file | Resolve `driveId`+`itemId`; check sensitivity; attach |
| Save a deliverable | Write to a draft path -> verify -> move/promote to published path |
| Share with internal audience | *People in your org* (default for most artifacts) |
| Share with external party | *Specific people* link, expiry set, audit logged |
| Find latest version | Use version history, not file-naming guesswork |
| Bulk operation | Dry-run on a single item; verify; then expand |

## Prerequisites — this skill is a playbook, not the connector

> **A `SKILL.md` cannot call OneDrive / SharePoint on its own.** It assumes the platform already exposes Microsoft Graph as a tool. The skill teaches Cowork *how to use OneDrive / SharePoint well*; the connector itself is separate infrastructure.

Before this skill works end-to-end you need:

1. **A Microsoft Graph connector** — typically Copilot Cowork's built-in M365 connectivity, or an MCP server wrapping the Graph `/me/drive` and `/sites/{id}/drives` endpoints.
2. **Credentials** — your Entra ID session with `Files.Read.All` / `Files.ReadWrite.All` / `Sites.Read.All` scopes consented for the connector.
3. **Tenant policies** — sensitivity labels, DLP, and conditional access must permit the connector to read the files you reference.
4. **Tool discovery** — confirm Graph file tools are visible (ask Cowork: *"what file/SharePoint tools do you have?"*) before using this skill.

In Cowork on a properly licensed M365 tenant, this is usually present out of the box. On other surfaces (e.g. a stripped-down sandbox), you'll need an MCP connector explicitly installed.

## When to Use

- Grounding a Copilot session on a specific file, folder, or library.
- Saving a deliverable into the right library with the right label.
- Sharing a file with an internal/external audience under the right link policy.
- Versioning — comparing or restoring previous versions during review.

## How to Use

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
| `expirationDateTime` | External shares should default to time-bound. |

## Examples

| Don't: Anti-pattern | Do: Right move |
|---|---|
| Save in-progress Copilot work over the published filename | Write to a draft path, verify, then promote to the published path |
| Grant "Anyone with the link" by default | Default to "People in your org"; reserve anonymous links for a reasoned exception |
| Cite a SharePoint URL only you can open | Confirm the audience can open the link before citing it |
| Operate on a file by its friendly URL alone | Resolve `driveId` + `itemId` so the reference survives renames |

## Critical Rules

- **Sensitivity label travels with the file** — and with anything you copy out of it.
- **Sharing scope = audience contract.** "Anyone with the link" should require explicit reasoning, not be a default.
- **Drafts go to a draft path.** Never save Copilot-in-progress work to the published filename.
- **Version history is the audit trail.** Don't disable it to "clean up."
- **Library defaults beat per-file overrides.** Configure the library; let files inherit.

## Common Pitfalls

- Saving externally-shareable output into a confidential library and breaking inheritance.
- Reading from a SharePoint site you have access to but the audience does not — citing a URL nobody can open.
- Assuming "OneDrive" and "SharePoint" are the same surface — they share an API but have different governance defaults.
- Version explosion from autosave during a long Copilot session.
- File-name conflicts that auto-rename to `report (3).docx` and break inbound links.
- Overwriting a file someone else is editing (causes a fork, not an error).

## Anti-Patterns

- Mailing a file as an attachment when a OneDrive link would track access and revoke cleanly.
- Bulk renaming files via connector with no audit trail.
- Granting *Anyone with the link* on a file referenced from a public deck — accidental disclosure.
- Treating personal OneDrive as the team's source-of-truth.

## Verify Before Sharing

- [ ] File saved at the expected location with the expected name.
- [ ] Sensitivity label set and matches content.
- [ ] Sharing scope intentional; expiry set for external.
- [ ] Audience can actually open the link (test with one external recipient if external).
- [ ] Old versions / drafts not exposed via search to new audience.
- [ ] DLP policies satisfied (no blocking warnings).

## Related

- [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md), [protect-sensitive-info](../protect-sensitive-info/SKILL.md)
- [word-authoring](../word-authoring/SKILL.md), [excel-analysis](../excel-analysis/SKILL.md), [deck-building](../deck-building/SKILL.md)
- [teams-connector](../teams-connector/SKILL.md) — when sharing into a Teams channel
