---
name: excel-analysis
category: kumite-office
description: >-
  Analyze, transform, reconcile, and visualize tabular data in Excel with M365
  Copilot — formulas, pivots, charts, conditional formatting, Power Query.
  Use whenever the input or output is a spreadsheet (variance commentary,
  headcount roll-up, pipeline hygiene, budget reconciliation, cohort analysis,
  forecast). Triggers: "analyze this spreadsheet", "build a pivot",
  "reconcile", "variance", "forecast", ".xlsx".
---

# Excel Analysis

Excel mistakes ship to executives. Verify every formula and every total before the file leaves your hands.

> Cowork skill. Drives Copilot in Excel for human analysts. For programmatic .xlsx generation, use the agents dojo.

---

## Quick Reference

| Task | Approach |
|---|---|
| Summarize a sheet | Define schema first → ask Copilot for column-by-column profile |
| Pivot / cross-tab | Name rows, columns, values, filters explicitly |
| Reconcile two sources | Key column on both sides → `XLOOKUP` or merged Power Query, then exception list |
| Variance commentary | Pivot → top-N drivers → narrative grounded in the pivot, not vibes |
| Forecast | State assumptions, horizon, granularity; never accept hidden constants |
| Chart for a deck | Specify chart type, axes, units, sort order — never "make a nice chart" |
| Find a bug | Trace precedents/dependents; ask Copilot to explain the formula in English |

## When to Use

- Variance commentary, budget vs. actual, forecast roll-ups.
- Pipeline / funnel / cohort analysis.
- Reconciling two sources (HRIS vs. payroll, CRM vs. invoicing).
- Producing a chart or pivot for a deck or memo.
- Cleaning a vendor data dump before downstream synthesis.

## How to Use

1. **Show Copilot the schema first.** Headers, data types, key/foreign-key columns. *"Column A is employee ID — unique. Column F is FY26 budget in USD."*
2. **Convert to a Table** (`Ctrl+T`). Tables make ranges stable, formulas readable, and Copilot dramatically more accurate.
3. **Ask for a formula in plain English, then read it.** *"SUMIFS over column F where region = 'EMEA' and quarter = 'Q1'."* Read the returned formula before pasting.
4. **For pivots, name the dimensions and measures explicitly.** *"Rows: cost center. Columns: quarter. Values: sum of actual, sum of budget, variance %."*
5. **Always sanity-check totals against a known reference** — last month's reported figure, the source extract, a hand calculation on three rows.
6. **Charts: name axes, units, chart type, sort order.** Don't accept "make a nice chart."
7. **Lock the workbook** (protect sheets, hide intermediate tabs) before sharing externally.

## Examples

| ❌ Anti-example | ✅ Good example |
|---|---|
| "Analyze this spreadsheet." | "Build a pivot: rows = product line, cols = month, values = sum(net revenue). Then a 3-month rolling average column." |
| Trusting `XLOOKUP` without testing the unmatched case. | Test with a deliberately missing key; confirm the `if_not_found` argument. |
| "Make a chart of sales." | "Clustered column, x = quarter, y = revenue (USD millions), series = region, sorted by FY26 desc." |
| Pasting numbers into chat. | Attaching the workbook so Copilot sees columns, types, and named ranges. |

## Critical Rules

- **Convert ranges to Tables.** Named tables eliminate whole classes of formula errors.
- **No volatile functions in shared workbooks** (`OFFSET`, `INDIRECT`, `NOW`, `RAND`) — recalc storms and audit pain.
- **No hard-coded totals.** If it should be a formula, make it a formula. Hardcodes go stale silently.
- **Reconcile against a known control** before publishing any number.
- **Document assumptions in a dedicated `Assumptions` sheet** — every analyst will thank you.
- **Pivot tables must be refreshed** before the file leaves your hands (`Data → Refresh All`).
- **Never let Copilot invent units.** Currency, scale (millions vs. thousands), period — confirm explicitly.

## Common Pitfalls

- Accepting Copilot's row count without filtering blanks/headers/totals embedded in data.
- Hidden rows/columns that Copilot reads but you can't see — surfaces wrong totals.
- Merged cells that break sorting, filtering, and structured references. Unmerge before analyzing.
- `XLOOKUP` returning `#N/A` silently — set `if_not_found` to a sentinel ("MISSING") and filter for it.
- Using `SUM` over a column that contains text "0" instead of numeric `0`.
- Time-zone or date-format drift on imported CSVs (US vs. EU date order).
- Charts where the y-axis doesn't start at zero — visually misleading, especially in finance.
- Conditional formatting that survives sharing but slows the workbook to a crawl.

## Anti-Patterns

- Pasting raw spreadsheet data into a chat instead of attaching the file.
- "Just give me the answer" — no audit trail = no defensible analysis.
- Multi-sheet roll-ups that depend on cell positions (`'Q1'!B7`). Use named ranges or tables.
- Letting Copilot guess at currency conversion / FX rates. Source them, cite them, lock them.

## Verify Before Send

- [ ] Pivots refreshed, filters reset to expected defaults.
- [ ] All totals reconcile to a known control.
- [ ] No `#REF!`, `#N/A`, `#DIV/0!`, `#VALUE!` left visible.
- [ ] Hidden sheets / rows / columns intentional and labeled.
- [ ] Assumptions sheet up to date.
- [ ] Charts: correct axes, units, sort, color, legend.
- [ ] Sensitivity label set; external-share blocked if internal-only.
- [ ] Workbook size reasonable (kill stray formatting on 1M unused rows).

## Related

- [drafting-with-copilot](../drafting-with-copilot/SKILL.md), [reviewing-output](../reviewing-output/SKILL.md)
- [cite-your-sources](../cite-your-sources/SKILL.md), [verify-before-send](../verify-before-send/SKILL.md)
- [deck-building](../deck-building/SKILL.md) — when the chart goes into a deck
- [onedrive-connector](../onedrive-connector/SKILL.md) — file location and sharing
