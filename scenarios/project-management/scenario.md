# Scenario: Project Management — Steerco Pre-Read

**Persona:** Project Manager
**Trigger:** Steering committee in 48h. They expect a 2-page pre-read with status, decisions needed, and risks.

## Walkthrough

| # | Step | Skill | Prompt pattern | Verify |
|---|---|---|---|---|
| 1 | Clarify the ask | [clarify-the-ask](../../skills/clarify-the-ask/SKILL.md) | Decisions needed from steerco (be explicit — "approve", "advise", "FYI"). | Confirm with steerco chair. |
| 2 | Gather context | [context-gathering](../../skills/context-gathering/SKILL.md) | Attach: last steerco pre-read, current risk log, milestone tracker, this week's status. | Copilot lists. |
| 3 | Plan | [plan-before-prompt](../../skills/plan-before-prompt/SKILL.md) | Sections: TL;DR · RAG · Decisions needed · Risks (top 5) · Next milestones · Asks. | Skeleton fits 2 pages. |
| 4 | Draft | [drafting-with-copilot](../../skills/drafting-with-copilot/SKILL.md) | Per risk: description → likelihood × impact → owner → mitigation. | Owner verified — not invented. |
| 5 | Diff | [status-update](../../skills/status-update/SKILL.md) | Highlight what changed since the last steerco. Diff is the news. | Spot-check against last pre-read. |
| 6 | Review | [reviewing-output](../../skills/reviewing-output/SKILL.md) | Five-lens. RAG status defensible? | All 🟢. |
| 7 | Ship | [shipping-the-deliverable](../../skills/shipping-the-deliverable/SKILL.md) | Send 24h before steerco. | Sent on time. |
| 8 | Recap follow-up | [meeting-recap](../../skills/meeting-recap/SKILL.md) | Within 24h of steerco — decisions, actions, owners. | Sent. |

## Common defects to watch

- "Green" status with no evidence.
- Risks copy-pasted from last pre-read without re-rating.
- Decisions framed as "discussion items" — steerco time is for decisions.
