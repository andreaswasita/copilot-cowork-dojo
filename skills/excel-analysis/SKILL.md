---
name: excel-analysis
category: kumite-office
description: >-
  Analyze, transform, and visualize tabular data in Excel with Copilot —
  formulas, pivots, charts, conditional formatting. Use whenever the input or
  output is a spreadsheet (variance analysis, headcount roll-up, pipeline
  hygiene, budget reconciliation).
---

# Excel Analysis

Excel mistakes ship to executives. Verify every formula and every total before the file leaves your hands.

## When to Use

- Variance commentary, budget vs. actual, forecast roll-ups.
- Pipeline / funnel / cohort analysis.
- Reconciling two sources (HRIS vs. payroll, CRM vs. invoicing).
- Producing a chart or pivot for a deck or memo.

## How to Use

1. **Show Copilot the schema first.** Headers, data types, key/foreign-key columns. "Column A is employee ID — unique. Column F is FY26 budget in USD."
2. **Ask for a formula in plain English, then read it.** "SUMIFS over column F where region = 'EMEA' and quarter = 'Q1'." Read the returned formula before pasting.
3. **For pivots, name the dimensions and measures explicitly.** "Rows: cost center. Columns: quarter. Values: sum of actual, sum of budget, variance %."
4. **Always sanity-check totals against a known reference** — last month's reported figure, the source system extract, a hand calculation on three rows.
5. **Charts: name the axes and the chart type.** Don't accept "make a nice chart."

## Examples

- ❌ "Analyze this spreadsheet." → ✅ "Build a pivot: rows = product line, cols = month, values = sum(net revenue). Then a 3-month rolling average column."
- ❌ Trusting a Copilot-generated `XLOOKUP` without testing the unmatched case. → ✅ Test with a deliberately missing key and confirm the `if_not_found` argument.

## Anti-Patterns

- Pasting numbers into a chat instead of attaching the file — Copilot loses precision and column context.
- Accepting Copilot's row-count without filtering blanks/headers.
- Using volatile functions (`OFFSET`, `INDIRECT`) in a workbook that will be shared — performance and recalc risk.
- Hard-coding totals that should be formulas. They go stale silently.
