---
name: verify-before-send
description: >-
  Read every line of Copilot output before sending, sharing, or pasting.
  Specifically check facts, names, numbers, dates, quotes, and any cited
  source. Use for every external-facing or decision-supporting output.
---

# Verify Before Send

Copilot is fluent. Fluent is not the same as correct. The cost of a hallucinated stat in an exec memo is much higher than the cost of a 60-second verification pass.

## When to Use

- Anything going to a person who isn't you.
- Any output containing: numbers, dates, names, titles, quotes, citations, links.
- Anything that supports a decision, even informally.

## How to Use

Run the verification pass in this order — fastest cuts first:

1. **Names & titles** — Are they real, spelled right, current?
2. **Numbers & dates** — Trace each one to a source. If you can't, remove it.
3. **Quotes** — Open the source. Did the person actually say that?
4. **Citations & links** — Click them. Do they resolve to what's claimed?
5. **Omissions** — What did Copilot leave out that the audience needs?
6. **Tone** — Read it aloud. Does it sound like you, or like nobody?

If any step fails, fix or remove. Never ship "probably right."

## Examples

- Variance commentary cites "$4.2M shortfall" — open the latest report, confirm or correct.
- Recap names a decision owner — confirm they actually owned it, not just attended.

## Anti-Patterns

- Skim-reading because the prose flows nicely.
- Trusting Copilot's confidence. It is always confident.
- "I'll check the link later." You won't.
