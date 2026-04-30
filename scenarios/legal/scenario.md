# Scenario: Legal — NDA Triage & Multi-Party Redline Recap

**Persona:** In-house counsel / contracts manager
**Trigger:** Inbound NDA from a prospective vendor; counterparty has redlined our standard template.
**Goal:** A 1-page triage memo — risk rating, deviations from playbook, recommended position — that the GC can sign in under 10 minutes.

> Inspired by the public *Master Claude for Legal* skill pack pattern: NDA triage + multi-party version diff + citation verifier + status synthesis.

## Walkthrough

| # | Step | Skill | Prompt pattern | Verify |
|---|---|---|---|---|
| 1 | Clarify the ask | [clarify-the-ask](../../skills/clarify-the-ask/SKILL.md) | Audience: GC. Decision: accept / counter / escalate. Format: 1-page memo + redline summary. | Confirm with requesting BU. |
| 2 | Extract the documents | [pdf-extraction](../../skills/pdf-extraction/SKILL.md) | Pull both versions (our template + counterparty's redline) preserving section numbering. | Spot-check Section 7 (IP) and Section 11 (term). |
| 3 | Gather playbook | [context-gathering](../../skills/context-gathering/SKILL.md) | Attach: NDA playbook, fallback positions, last 3 signed NDAs with this counterparty's segment. | Copilot lists sources. |
| 4 | Diff & classify | [research-synthesis](../../skills/research-synthesis/SKILL.md) | Per clause: ours vs. theirs vs. playbook. Classify each deviation: green / yellow / red. | Counterparty's silent deletions surfaced (not just edits). |
| 5 | Citation verifier | [cite-your-sources](../../skills/cite-your-sources/SKILL.md) | Every "playbook says…" claim cites the playbook section. | Open every cited link. |
| 6 | Draft triage memo | [decision-memo](../../skills/decision-memo/SKILL.md) | Sections: Background, Material Deviations, Risk Rating, Recommendation, Fallbacks. | Recommendation has a clear default action. |
| 7 | Sensitivity gate | [protect-sensitive-info](../../skills/protect-sensitive-info/SKILL.md) | Confirm privilege markings on the memo; do not save outside the legal library. | Sensitivity label = `Confidential — Legal Privileged`. |
| 8 | Ship | [shipping-the-deliverable](../../skills/shipping-the-deliverable/SKILL.md) | GC review → counterparty response prepared in parallel. | GC signs / annotates. |

## Friday-newsletter status synthesis

End of week, the legal ops team produces a one-page status of all open NDAs, contracts in negotiation, and escalations. Use [status-update](../../skills/status-update/SKILL.md) with the Planner / contract-tracker connector ([planner-connector](../../skills/planner-connector/SKILL.md)) as the source.

## Common defects to watch

- Treating a counterparty's "redline" as ground truth when they actually deleted entire clauses (silent removal). The diff must surface deletions, not only edits.
- Summarizing privileged content into a less-protected surface (Teams chat, public channel). Privilege travels with the artifact.
- "Standard NDA, looks fine" — the most expensive sentence in legal ops. Force the deviation table even when the memo concludes "accept."
- Citing a playbook version that was superseded last quarter. Verify playbook version in the citation.
- Auto-translating a non-English counterparty draft and treating the translation as authoritative. Mark translations as such; rely on the original for binding interpretation.

## Reusable artefacts to put in `memory/patterns/`

- `nda-triage-memo.md` — 1-page memo template
- `clause-deviation-table.md` — green/yellow/red classification grid
- `legal-friday-newsletter.md` — the weekly status synthesis pattern
