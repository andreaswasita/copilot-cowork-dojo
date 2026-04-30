# Scenario: HR — New-Hire 30/60/90 Plan

**Persona:** People Manager
**Trigger:** New hire starting in 2 weeks. You need a credible 30/60/90 day plan that sets them up for success without micromanaging.
**Goal:** A 1-page 30/60/90 the new hire can read on day 1 and the skip-level can co-sign.

## Walkthrough

| # | Step | Skill | Prompt pattern | Verify |
|---|---|---|---|---|
| 1 | Clarify the ask | [clarify-the-ask](../../skills/clarify-the-ask/SKILL.md) | Restate: role, team mission, what success looks like at 90 days, skip-level expectations. | Confirm with the hiring manager and the new hire's would-be peers. |
| 2 | Gather context | [context-gathering](../../skills/context-gathering/SKILL.md) | Attach: JD, team OKRs, last hire's 30/60/90, onboarding checklist. | Copilot lists the sources back. |
| 3 | Plan the plan | [plan-before-prompt](../../skills/plan-before-prompt/SKILL.md) | Sections: 30 (learn), 60 (contribute), 90 (own). Per phase: focus, deliverables, who to meet. | Skeleton fits one page. |
| 4 | Draft | [drafting-with-copilot](../../skills/drafting-with-copilot/SKILL.md) | Section by section. Each deliverable: verb + artifact + measurable. | Read each section before next prompt. |
| 5 | Sensitivity gate | [protect-sensitive-info](../../skills/protect-sensitive-info/SKILL.md) | Strip any peer comparisons or comp references. | Four-question gate. |
| 6 | Review | [reviewing-output](../../skills/reviewing-output/SKILL.md) | Five-lens: facts (real OKRs?), tone (welcoming, not corporate), omissions (skip-level expectations?), bias, audience-fit. | All lenses 🟢. |
| 7 | Ship | [shipping-the-deliverable](../../skills/shipping-the-deliverable/SKILL.md) | Send to skip-level for co-sign before sending to the new hire. | Skip-level signs. |
| 8 | Learn | [learn-from-every-session](../../skills/learn-from-every-session/SKILL.md) | Log lesson re anything Copilot invented (peers, dates). | Lesson appended. |

## Common defects to watch

- Invented peer names — strip and verify.
- Generic "learn the codebase" deliverables — replace with the team's actual artifacts.
- 90-day deliverables that the new hire has no authority to do.
