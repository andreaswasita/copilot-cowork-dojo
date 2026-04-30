# Prompt Library

Reusable prompt patterns for the most common Cowork tasks. Copy, adapt, run.

> Every pattern below assumes you've already pinned an [intent frame](../skills/intent-framing/SKILL.md). Patterns reference `<placeholders>` you fill in.

---

## Frame & Plan

### Pin the intent frame
```
For this session:
- Audience: <who>
- Outcome: <what they decide or do>
- Format: <artifact>
- Constraints: <length, tone, must-include, must-avoid, deadline>
Confirm you understand the frame before drafting anything.
```

### Plan before prompt
```
Before drafting, propose a section-by-section outline for <deliverable>.
Per section: heading + one-line purpose + which source to use.
Do not draft until I approve the outline.
```

---

## Draft

### Section-by-section drafting
```
Draft section <N> only.
Purpose: <one line>.
Sources: <links>.
Length: <approx>.
Must include: <list>. Must avoid: <list>.
Do not invent names, dates, or numbers — if missing, say "TBD".
```

### Voice match
```
Here are 3 messages I sent recently: <paste>.
Match this voice — sentence length, vocabulary, formality.
```

---

## Summarize

### Altitude-controlled summary
```
Summarize <doc> at the <30,000 ft / 10,000 ft / ground> altitude for <audience>.
Preserve: <list>. Drop anything not relevant to <decision>.
Cite the section of <doc> for each preserved point.
```

### Faithful extraction
```
From <doc>, extract only:
- <item type 1>
- <item type 2>
For each: source quote (verbatim) + page/section reference.
Do not paraphrase. Do not infer.
```

---

## Synthesize

### Synthesis matrix
```
Sources: <list with links>.
Build a matrix: rows = themes you identify, columns = sources, cells = what each source says (1 line + citation).
Then write 1 paragraph naming agreements, disagreements, and contradictions.
Then 1 "so-what" paragraph: what should the reader do?
```

---

## Decide

### Decision memo
```
Produce a 1-page decision memo:
- TL;DR (≤40 words)
- Context (≤4 sentences)
- Options (3 max — pros / cons / cost each)
- Recommendation + why
- Risks & mitigations (3 max)
- Ask (what you need from the reader, by when)
Sources: <list>.
```

---

## Communicate

### Audience-tuned status
```
Audience: <exec / team / stakeholder>.
Pull diff vs. <last status>.
Use the <80 / 300 / 200>-word template.
End with a specific ask.
```

### Email triage
```
Bucket my unread mail into:
- Decide now (need my reply today)
- Delegate (with suggested delegate)
- Defer (with date)
- FYI (no action)
Per "Decide now": draft a reply in my voice (samples: <paste>).
Flag any commitments before I send.
```

### Meeting recap
```
From <transcript / notes>:
- Decisions (1 line each + who decided + effective when)
- Actions (owner + verb + artifact + due date)
- Open questions (who must answer)
Drop pleasantries and recap of the agenda.
Confirm every owner against the actual attendee list.
```

---

## Review & refine

### Five-lens review
```
Review the draft above on five lenses (facts, tone, omissions, bias, audience-fit).
Mark each 🟢/🟡/🔴 with a one-line reason.
Then list the top 3 changes I should make.
```

### Targeted refine
```
In <section>, the <Nth bullet/sentence> says "<quote>".
That's wrong because <reason>.
Replace with content matching this constraint: <constraint>.
```

---

## Anti-patterns to avoid

- "Make it better." → name what to change.
- "Write me a memo on X." → frame, plan, then draft.
- "Summarize this." → name the altitude and audience.
- "Just send it." → run the SHIP gate.
