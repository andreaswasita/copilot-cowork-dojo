---
name: internal-comms
category: kumite-task
description: >-
  Write internal company communications in the formats your org expects:
  3P updates (Progress, Plans, Problems), company or team newsletters, FAQ
  roundups, leadership updates, and incident or project updates. Use when
  drafting recurring org comms for Outlook, Teams announcements, or Viva
  Engage. Triggers: "weekly update", "write the newsletter", "3P", "team
  update", "company FAQ", "leadership update", "announce this to the org".
---

# Internal Comms

Org comms have house formats. Match the format and the update reads as routine and trustworthy; freelance it and people stop reading.

---

## Quick Reference

| Comms type | Format | Surface | Length |
|---|---|---|---|
| 3P update | Progress / Plans / Problems, 1-3 sentences each | Teams channel post, Outlook | 30-60 sec read |
| Newsletter | ~20-25 linked bullets, clustered by theme | Viva Engage, Outlook | Skim in 2 min |
| FAQ roundup | Question / Answer pairs, org-wide concerns | SharePoint page, Teams | 1-2 sentences each |
| Leadership update | Headline, context, decision, what it means for you | Outlook, Viva Engage | 1 screen |
| Incident update | What happened / impact / status / next update time | Teams, Outlook | Tight, factual |

## When to Use

- A recurring update is due: weekly team 3P, monthly newsletter, leadership note.
- Many people are asking the same questions and need one authoritative answer.
- An incident or project needs a structured status the whole org can follow.
- Use [status-update](../status-update/SKILL.md) instead for a single-audience status; this skill is for org-wide or multi-team formats.

## How to Use

1. Name the type and the audience. 3P for a team, newsletter for the org, FAQ for shared confusion. Confirm the team name and the period covered (usually the past week for Progress/Problems, the next week for Plans).
2. Gather grounded source material. Pull from high-signal places: Teams channels with heavy reactions, Viva Engage announcements, widely-replied Outlook threads, SharePoint docs with many views, calendar items for all-hands or reviews. Cite or link what you use.
3. Draft to the house format below. Keep each item to 1-3 sentences, data-driven, matter-of-fact. Lead with impact, not narrative.
4. Cut to the read-time budget. A 3P is read in under a minute. A newsletter is skimmed. If it does not fit, cut the least company-wide item.
5. Verify every name, number, link, and owner against the source before posting.

### 3P format

```
[Team Name] (dates covered)
Progress: what shipped / milestones hit, with metrics
Plans: top priorities for the next period
Problems: blockers, gaps, risks slowing the team
```

### Newsletter format

Cluster ~20-25 bullets into 3-5 themed sections (for example Announcements, Progress on Priorities, Leadership, Social). Each bullet is 1-2 sentences in the "we" voice, with a link to the source post or doc.

## Examples

| Don't: Freelanced | Do: House format |
|---|---|
| "Lots of progress this week, team crushed it." | "Progress: shipped onboarding v2 (adoption +18% w/w); closed 3 of 5 launch blockers." |
| Newsletter bullet with no link | "We launched the FY26 planning hub - details in the [link] all-hands recap." |
| FAQ that answers one team's niche question | "Q: When does the new expense tool go live? A: Nov 17 org-wide; old tool read-only after." |
| Vague problem ("things are slow") | "Problems: hiring freeze leaves 2 roles open; design review is the critical-path bottleneck." |

## Critical Rules

- Match the house format exactly. Consistency is what makes recurring comms scannable.
- Be specific and data-driven. Metrics over adjectives in every section.
- Link to authoritative sources. A newsletter bullet without a link is a rumor.
- Right altitude for the audience. Bigger audience, less granular detail. Org news, not task logs.
- Verify owners, numbers, and links before posting. Comms errors travel fast.

## Common Pitfalls

- Pasting raw notes instead of formatting to 3P / newsletter / FAQ structure.
- Writing for your team when the audience is the whole org (or vice versa).
- Newsletters that read like one team's status instead of company-wide signal.
- Burying the announcement under throat-clearing preamble.
- FAQs that invent answers instead of flagging "needs an official response."

## Anti-Patterns

- Prose-heavy updates nobody finishes - the format exists to be skimmed.
- Inventing metrics to fill a section. Say "no change" or "blocked" honestly.
- Recycling last week's bullets without checking they still hold.
- Mixing personal commentary into factual status lines.

## Verify Before Posting

- [ ] Correct type and audience confirmed (team vs org).
- [ ] House format followed; each item 1-3 sentences.
- [ ] Every claim is data-driven and sourced.
- [ ] All links resolve; owners and numbers verified.
- [ ] Reads inside its time budget (3P under a minute).
- [ ] No sensitive info that breaches [protect-sensitive-info](../protect-sensitive-info/SKILL.md).

## Related

- [status-update](../status-update/SKILL.md) - single-audience status (this skill is org-wide formats)
- [meeting-recap](../meeting-recap/SKILL.md), [decision-memo](../decision-memo/SKILL.md)
- [teams-connector](../teams-connector/SKILL.md), [outlook-connector](../outlook-connector/SKILL.md)
- [cite-your-sources](../cite-your-sources/SKILL.md), [verify-before-send](../verify-before-send/SKILL.md)
