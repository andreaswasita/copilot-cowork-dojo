# Scenario: Sales — Account Brief for QBR

**Persona:** Account Executive
**Trigger:** QBR with a top-10 customer next week.
**Goal:** Account brief — current state, value delivered, expansion opportunities, risks — that the customer's CIO will respect.

## Walkthrough

| # | Step | Skill | Prompt pattern | Verify |
|---|---|---|---|---|
| 1 | Clarify the ask | [clarify-the-ask](../../skills/clarify-the-ask/SKILL.md) | Audience: customer CIO + their team. Decision: continue, expand, restructure. Format: 6-slide deck + 1-page leave-behind. | Confirm with sales leader. |
| 2 | Gather context | [context-gathering](../../skills/context-gathering/SKILL.md) | Attach: contract, last QBR deck, support ticket trend, usage telemetry, recent exec emails. | Copilot lists sources. |
| 3 | Synthesize | [research-synthesis](../../skills/research-synthesis/SKILL.md) | Matrix: themes (adoption, ROI, satisfaction, risk) × sources. Then synthesis paragraph + so-what. | Disagreements between sources surfaced, not smoothed. |
| 4 | Draft brief | [drafting-with-copilot](../../skills/drafting-with-copilot/SKILL.md) | Slides: situation → value delivered → roadmap alignment → expansion → risks → ask. | Per-slide review. |
| 5 | Sensitivity gate | [protect-sensitive-info](../../skills/protect-sensitive-info/SKILL.md) | Strip any references to other customers or unannounced product features. | Public-channel test. |
| 6 | Review | [reviewing-output](../../skills/reviewing-output/SKILL.md) | Five-lens. Audience-fit: would the CIO learn anything new? | All 🟢. |
| 7 | Ship | [shipping-the-deliverable](../../skills/shipping-the-deliverable/SKILL.md) | Manager review → send. | Manager signs. |

## Common defects to watch

- Generic "leverage AI to drive value" slides — cut.
- Inventing a renewal date or contract value — verify.
- Expansion proposals that aren't tied to a customer-stated objective.
