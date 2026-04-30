# Scenario: Finance — Monthly Variance Commentary

**Persona:** FP&A Analyst
**Trigger:** Month-end close. Finance leadership needs variance commentary by EoD tomorrow.
**Goal:** A one-page commentary by cost center: actuals vs. budget, drivers, outlook adjustment.

## Walkthrough

| # | Step | Skill | Prompt pattern | Verify |
|---|---|---|---|---|
| 1 | Clarify the ask | [clarify-the-ask](../../skills/clarify-the-ask/SKILL.md) | Audience: CFO + cost-center owners. Decision: outlook adjustments. Format: 1-pager + appendix. | Confirm format with CFO's chief of staff. |
| 2 | Gather context | [context-gathering](../../skills/context-gathering/SKILL.md) | Attach: variance workbook, prior-month commentary, latest forecast, OKR doc. | Copilot lists the workbook tabs it can see. |
| 3 | Sensitivity gate | [protect-sensitive-info](../../skills/protect-sensitive-info/SKILL.md) | This is pre-publication financial data — confirm Cowork session is in a Finance-cleared workspace. | Four-question gate passes. |
| 4 | Draft | [drafting-with-copilot](../../skills/drafting-with-copilot/SKILL.md) | Per cost center: variance %, top 3 drivers, outlook change. Cap each section at 80 words. | Spot-check 3 numbers against workbook. |
| 5 | Cite | [cite-your-sources](../../skills/cite-your-sources/SKILL.md) | Every variance number links to the workbook cell or query. | Click each link. |
| 6 | Review | [reviewing-output](../../skills/reviewing-output/SKILL.md) | Five-lens. Pay extra attention to facts (numbers) and omissions (any cost center skipped?). | All 🟢. |
| 7 | Ship | [shipping-the-deliverable](../../skills/shipping-the-deliverable/SKILL.md) | Send to FP&A lead for co-sign before CFO. | Co-signed. |

## Common defects to watch

- Copilot smoothing variances ("largely on track") that hide real signal.
- Invented driver explanations. If you can't trace it, it's a hypothesis, not a driver.
- Outlook changes Copilot suggested without owner confirmation.
