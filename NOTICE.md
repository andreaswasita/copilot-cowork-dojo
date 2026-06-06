# NOTICE

This repository (copilot-cowork-dojo) is licensed under the MIT License (see `LICENSE`).

## Third-Party Attributions

Some skills in `skills/` are original-voice **translations** of open-source skills
released by Anthropic in the `anthropics/skills` repository
(https://github.com/anthropics/skills), licensed under the **Apache License,
Version 2.0** (http://www.apache.org/licenses/LICENSE-2.0). Each upstream skill
ships its own `LICENSE.txt` (Apache-2.0) in its source directory.

These dojo skills were rewritten in this repo's own structure and voice and
reframed for the Microsoft 365 / Copilot knowledge-worker context (Word,
PowerPoint, Outlook, Teams, Viva, SharePoint, OneDrive). The text is original;
the workflow concepts are adapted from the Apache-2.0 sources listed below.

| Dojo skill | Adapted from (anthropics/skills, Apache-2.0) |
|---|---|
| `skills/internal-comms` | `skills/internal-comms` |
| `skills/doc-coauthoring` | `skills/doc-coauthoring` |
| `skills/connector-builder` | `skills/mcp-builder` (renamed) |
| `skills/brand-consistency` | `skills/brand-guidelines` (renamed) |
| `skills/skill-creator` | `skills/skill-creator` (test-drive iteration loop and description-optimization methodology merged into our existing skill) |

No proprietary or source-available upstream content (the `docx`, `pdf`, `pptx`,
`xlsx` skills) was copied. Where this repo's existing skills were informed by
edge-case lists in those proprietary skills, only original-voice guidance was
written; no upstream text was reproduced.

Some skills were also enriched with methodology adapted from the
`anthropics/claude-plugins-official` repository
(https://github.com/anthropics/claude-plugins-official), whose plugins are
likewise licensed under the **Apache License, Version 2.0**. The upstream
material is in Claude Code plugin/command/agent format; the concepts were
re-expressed as dojo skills in this repo's own structure and voice and reframed
for the Microsoft 365 / Copilot knowledge-worker context. The plugin sources
each ship their own `LICENSE` (Apache-2.0) in their source directory.

| Dojo skill | Adapted from (anthropics/claude-plugins-official, Apache-2.0) |
|---|---|
| `skills/reviewing-output` | `plugins/code-review` + `plugins/pr-review-toolkit` (review workflow, confidence scoring, severity triage, specialized review passes) |
| `skills/meeting-recap` | `plugins/session-report` (windowed analysis, share-of-total finding framing, classified one-line findings, fixes tied to specific rows — reframed as a private recurring-meeting health readout) |

The names "Anthropic" and "Claude" appear in this file solely for accurate
attribution of upstream sources, as required by the Apache-2.0 license. They are
not used as skill names, branding, or endorsement anywhere in this repository's
skills.
