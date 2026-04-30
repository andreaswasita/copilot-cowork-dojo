# 03 — Your First Session

> ⏱ **15 minutes** · 🎯 **Ship one real deliverable through the full pipeline**

The fastest way to learn the dojo is to **stop reading and run it once**. We'll use the smallest possible scenario: a meeting recap.

## Before you start

You need:

- ✅ A meeting that happened in the last 7 days where you took notes (or had a transcript).
- ✅ Microsoft 365 Copilot open.
- ✅ 15 minutes uninterrupted.

If you don't have one — pick an upcoming meeting and come back here right after it.

---

## The 7 steps (do them in order, don't skip)

### 1. CLARIFY (1 min)

Open [skills/clarify-the-ask/SKILL.md](../skills/clarify-the-ask/SKILL.md). Fill in:

```
Deliverable: meeting recap
Audience: <who needs to read this — be specific>
So they can: <what they should DO after reading>
By: <when>
Constraints: ≤200 words, decisions + actions + open questions
```

### 2. PLAN (2 min)

Open [skills/plan-before-prompt/SKILL.md](../skills/plan-before-prompt/SKILL.md). Sketch:

```
Sections:
1. Decisions  — 1 line each, who decided, effective when
2. Actions    — owner, action, due date
3. Open       — what's unresolved, who must answer
```

### 3. DRAFT (3 min)

In Copilot, paste:

> Use the **Meeting recap** pattern from `prompts/library.md` — copy the prompt and replace the placeholders with your meeting's transcript or notes.

Read what Copilot gives you. **Don't ship it yet.**

### 4. REVIEW (3 min)

Run the **five-lens review** from [skills/reviewing-output/SKILL.md](../skills/reviewing-output/SKILL.md):

| Lens | Mark |
|---|---|
| Facts — every name/date/number traceable? | 🟢/🟡/🔴 |
| Tone — sounds like the audience expects? | 🟢/🟡/🔴 |
| Omissions — what's missing? | 🟢/🟡/🔴 |
| Bias — whose view is over/under-represented? | 🟢/🟡/🔴 |
| Audience-fit — will the reader act correctly? | 🟢/🟡/🔴 |

> 🎯 **Most likely failure:** an action owner that wasn't actually in the meeting. This is the #1 hallucination in recaps. Check the attendee list.

### 5. REFINE (2 min)

For each 🔴 / 🟡, write a **targeted refine prompt** (see [skills/refining-iteratively/SKILL.md](../skills/refining-iteratively/SKILL.md)):

> ❌ "Make it better." → ✅ "In Actions, the third item attributes to Priya — verify against attendee list; if not present, replace with 'owner TBD'."

### 6. SHIP (2 min)

Run the SHIP checklist from [skills/shipping-the-deliverable/SKILL.md](../skills/shipping-the-deliverable/SKILL.md):

- [ ] Verified
- [ ] Cited
- [ ] Sensitivity-cleared (no personal/regulated content)
- [ ] Audience-fit
- [ ] Owned (your name)
- [ ] Logged (next step)

Send it. 🥋

### 7. LEARN (2 min)

Open `tasks/lessons.md` and append:

```yaml
- date: 2026-04-30
  scenario: meeting-recap / <your meeting>
  what_worked: <one line>
  what_failed: <one line — even if small>
  rule: <the prevention rule you'd give a teammate>
  tags: [recap, ...]
```

If nothing failed, your review wasn't strict enough. Try harder.

---

## You just earned your first belt 🥋

You now know:

- The **CLARIFY → PLAN → DRAFT → REVIEW → REFINE → SHIP → LEARN** pipeline.
- Where to find skills, prompts, and the SHIP gate.
- How to log lessons.

## What to do tomorrow

Run **one more scenario**. Pick the one that matches a real deliverable you owe:

→ [05 — Choose Your Path](./05-Choose-Your-Path.md)

Or, if you want to understand *why* the pipeline is what it is:

→ [04 — The Pipeline Explained](./04-The-Pipeline-Explained.md)
