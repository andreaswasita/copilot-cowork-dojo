# Skill Catalog

All **34 skills** in the dojo, grouped by category. Each row links to the skill folder in the repo. Skills follow the [rich Anthropic-style format](#about-the-skill-format) — frontmatter + Quick Reference + Examples + Verify checklist + cross-links.

## At a glance

| Category | Count | What it is |
|---|---|---|
| [Kata](#kata--core-disciplines) | 6 | Core disciplines you practice every session |
| [Waza](#waza--pipeline-techniques) | 6 | Pipeline techniques (one per CLARIFY → SHIP step) |
| [Kumite — task](#kumitetask--end-to-end-deliverables) | 7 | End-to-end task playbooks |
| [Kumite — office](#kumiteoffice--m365-app-deliverables) | 4 | M365 app deliverables (Word, Excel, PowerPoint, PDF) |
| [Kumite — connector](#kumiteconnector--ms-graph--external-systems) | 6 | MS Graph + external system connectors |
| [Cowork](#cowork--multi-agent--humanintheloop) | 3 | Multi-agent + human-in-the-loop patterns |
| [Do](#do--meta-skills) | 2 | Meta-skills (authoring + reviewing skills) |

---

## Kata — core disciplines

Practice these every session. Skip them and the rest of the system falls apart.

| Skill | One-liner |
|---|---|
| [cite-your-sources](../skills/cite-your-sources/SKILL.md) | Every factual claim links to a file, message, URL, or named source the reader can open. |
| [clarify-the-ask](../skills/clarify-the-ask/SKILL.md) | Restate the request, surface assumptions, and confirm the deliverable before opening Copilot. |
| [learn-from-every-session](../skills/learn-from-every-session/SKILL.md) | Log what worked, what failed, and the rule you'd give a teammate. |
| [plan-before-prompt](../skills/plan-before-prompt/SKILL.md) | Sketch the deliverable structure before opening a Copilot prompt. |
| [protect-sensitive-info](../skills/protect-sensitive-info/SKILL.md) | Know what you can and cannot paste into Copilot. |
| [verify-before-send](../skills/verify-before-send/SKILL.md) | Read every line — facts, names, numbers, dates, quotes — before sending. |

## Waza — pipeline techniques

One skill per pipeline step. The skeleton of every session.

| Skill | Pipeline step |
|---|---|
| [intent-framing](../skills/intent-framing/SKILL.md) | CLARIFY — frame audience, outcome, format, constraints |
| [context-gathering](../skills/context-gathering/SKILL.md) | CONTEXT — pull files, threads, people into the session |
| [drafting-with-copilot](../skills/drafting-with-copilot/SKILL.md) | DRAFT — section-by-section authoring |
| [reviewing-output](../skills/reviewing-output/SKILL.md) | REVIEW — inspect for facts, tone, omissions, bias |
| [refining-iteratively](../skills/refining-iteratively/SKILL.md) | REFINE — targeted, specific follow-ups |
| [shipping-the-deliverable](../skills/shipping-the-deliverable/SKILL.md) | SHIP — final QA gate before send/share/publish |

## Kumite — task

End-to-end playbooks for common deliverables.

| Skill | When to use |
|---|---|
| [decision-memo](../skills/decision-memo/SKILL.md) | One-page memo for async decisions: context, options, recommendation, risks, ask. |
| [document-summarization](../skills/document-summarization/SKILL.md) | Faithful summary at the right altitude for the audience. |
| [email-triage](../skills/email-triage/SKILL.md) | Triage an inbox/thread, surface what needs a reply, draft replies in your voice. |
| [meeting-prep](../skills/meeting-prep/SKILL.md) | Brief, agenda, and pre-reads 24–48h before a decision meeting. |
| [meeting-recap](../skills/meeting-recap/SKILL.md) | Recap of decisions, actions, and owners — not a transcript. |
| [research-synthesis](../skills/research-synthesis/SKILL.md) | Synthesize multiple sources into a single point of view with citations. |
| [status-update](../skills/status-update/SKILL.md) | Audience-tuned weekly/monthly/steerco status update. |

## Kumite — office

M365 app deliverables. Use after the matching task skill.

| Skill | App | When to use |
|---|---|---|
| [word-authoring](../skills/word-authoring/SKILL.md) | Word | Memos, policies, reports, redlines, board pre-reads. |
| [excel-analysis](../skills/excel-analysis/SKILL.md) | Excel | Pivots, variance, reconciliation, forecasts, Power Query. |
| [deck-building](../skills/deck-building/SKILL.md) | PowerPoint | QBRs, steerco, board pre-reads, all-hands. |
| [pdf-extraction](../skills/pdf-extraction/SKILL.md) | PDF | Pull text, tables, citations from contracts, filings, scanned forms. |

## Kumite — connector

MS Graph + external systems. Use when the source or destination of work lives in one of these tools.

> ⚠️ **These skills are playbooks, not the connectors themselves.** A `SKILL.md` cannot call Jira/Teams/etc. on its own — it assumes the underlying tools (MCP server, OAuth/API token, network egress, tenant trust) are already installed and visible to Cowork. M365 connectors (Outlook, Teams, OneDrive, Planner) are usually present out of the box on a licensed M365 tenant. **Atlassian connectors (Jira, Confluence) require a separate MCP server install** — see each skill's "Prerequisites" section. Without the connector, the skill degrades to a manual reference ("run this JQL yourself, paste the result back").

| Skill | System |
|---|---|
| [outlook-connector](../skills/outlook-connector/SKILL.md) | Outlook mail + calendar |
| [teams-connector](../skills/teams-connector/SKILL.md) | Microsoft Teams (channels, chats, meetings) |
| [onedrive-connector](../skills/onedrive-connector/SKILL.md) | OneDrive / SharePoint |
| [planner-connector](../skills/planner-connector/SKILL.md) | Microsoft Planner / Tasks / Project for the Web |
| [jira-connector](../skills/jira-connector/SKILL.md) | Jira (issues, JQL, sprints, release notes) |
| [confluence-connector](../skills/confluence-connector/SKILL.md) | Confluence (runbooks, decision records, RFCs) |

## Cowork — multi-agent + human-in-the-loop

Patterns specific to multi-agent Cowork sessions.

| Skill | When to use |
|---|---|
| [agent-handoff](../skills/agent-handoff/SKILL.md) | Pass context cleanly between Copilot agents (e.g. analyst → comms). |
| [agent-orchestration](../skills/agent-orchestration/SKILL.md) | Sequence specialist agents and humans around one goal. |
| [human-in-the-loop](../skills/human-in-the-loop/SKILL.md) | Define where a human must approve, edit, or intervene. |

## Do — meta-skills

For maintaining the dojo itself.

| Skill | When to use |
|---|---|
| [skill-creator](../skills/skill-creator/SKILL.md) | Package a recurring pattern into a new skill (after it shows up 3+ times in `lessons.md`). |
| [writing-skills](../skills/writing-skills/SKILL.md) | Format and spec compliance for `SKILL.md` files. |

---

## About the skill format

Every skill in this dojo follows the same template so Copilot Cowork (and you) can scan it fast:

```
---
name: <skill-name>
category: kata | waza | kumite-task | kumite-office | kumite-connector | cowork | do
description: >-
  One paragraph explaining when to use this skill, with explicit trigger phrases.
---

# Skill Title
> Tagline.

---

## Quick Reference            ← scannable table — outcome at a glance
## When to Use                 ← triggers + when NOT to use
## How to Use                  ← step-by-step
## Examples                    ← ❌ bad / ✅ good comparison table
## Critical Rules              ← non-negotiables
## Common Pitfalls             ← what goes wrong
## Anti-Patterns               ← what looks right but isn't
## Verify Before <action>      ← pre-ship checklist
## Related                     ← cross-links to other skills
```

The frontmatter `description` field is the **discovery surface**: Cowork uses it to decide which skill to load when you give it a task. That's why every description ends with explicit trigger phrases ("Triggers: 'draft a memo', 'build a deck', ...").

→ See [02 — Setup](./02-Setup.md#step-3--install-the-skills-into-cowork) for how to install these skills into your Cowork environment.
→ See [writing-skills](../skills/writing-skills/SKILL.md) if you're authoring new ones.
