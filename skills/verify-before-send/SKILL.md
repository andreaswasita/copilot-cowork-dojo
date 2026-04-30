---
name: verify-before-send
category: kata
description: >-
  Read every line of Copilot output before sending, sharing, or pasting.
  Specifically check facts, names, numbers, dates, quotes, and any cited
  source. Use for every external-facing or decision-supporting output.
  Triggers: any send / share / publish action; before pasting Copilot output
  into a channel or email.
---

# Verify Before Send

Copilot is fluent. Fluent is not the same as correct. The cost of a hallucinated stat in an exec memo is much higher than the cost of a 60-second verification pass.

---

## Quick Reference (verification pass order — fastest cuts first)

| Order | Check | Why first |
|---|---|---|
| 1 | Names & titles | Hallucinated people are the most embarrassing defect |
| 2 | Numbers & dates | Each must trace to a source |
| 3 | Quotes | Open the source; verify verbatim |
| 4 | Citations & links | Click them; do they resolve? |
| 5 | Omissions | What's missing that the audience needs? |
| 6 | Tone | Read aloud; does it sound like you? |

## When to Use

- Anything going to a person who isn't you.
- Any output containing: numbers, dates, names, titles, quotes, citations, links.
- Anything that supports a decision, even informally.
- Any output you'd be embarrassed to see screenshotted.

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

| ❌ Skipped | ✅ Verified |
|---|---|
| "Variance commentary cites $4.2M shortfall" — sent | Open the latest report → confirmed $4.17M → corrected |
| Recap names "Priya owns risk mitigation" — sent | Confirmed Priya wasn't even at the meeting → reassigned |
| "Per the Gartner study…" — sent | Couldn't find the study → cut the sentence |
| "Click here for details" link sent | Opened the link → 404 → fixed before send |

## Critical Rules

- **Names and numbers carry the most defect risk.** Check them first.
- **Trace every number to a source you opened.** Memory of a number ≠ verification.
- **Quotes get opened, not assumed.** Copilot paraphrases that look like quotes are common.
- **Click every link.** "I'll check it later" — you won't.
- **Never ship "probably right."**

## Common Pitfalls

- Skim-reading because the prose flows nicely — fluency masks defects.
- Trusting Copilot's confidence. It is always confident.
- Verifying numbers but not the *direction* (revenue up vs. down).
- Forgetting to verify dates that look right by season ("last quarter" vs. actual range).
- Citation that links to the right doc but the wrong section.

## Anti-Patterns

- Skim-reading because the prose flows nicely.
- Trusting Copilot's confidence. It is always confident.
- "I'll check the link later." You won't.
- Verifying only the parts you wrote yourself.

## Verify-Before-Send Checklist

- [ ] Every name spelled right and current.
- [ ] Every number traced to a source.
- [ ] Every quote opened in the source.
- [ ] Every link clicked and resolves.
- [ ] No prompt artifacts ("As an AI…", "Sure, here's…").
- [ ] No "[fill in]" or "// TODO" placeholders.
- [ ] Tone matches audience.
- [ ] Sensitivity / classification appropriate.

## Related

- [cite-your-sources](../cite-your-sources/SKILL.md), [reviewing-output](../reviewing-output/SKILL.md)
- [shipping-the-deliverable](../shipping-the-deliverable/SKILL.md)
- [protect-sensitive-info](../protect-sensitive-info/SKILL.md)
