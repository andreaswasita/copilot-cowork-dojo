---
name: context-gathering
category: waza
description: >-
  Pull the right files, threads, and people into the Cowork session before
  drafting. Use whenever the deliverable depends on prior work that lives
  scattered across email, Teams, SharePoint, OneDrive, or Loop. Triggers:
  before any non-trivial draft; "Copilot doesn't know about…"; when context
  lives in 3+ places.
---

# Context Gathering

Copilot is only as good as the context it can see. Spend the two minutes to bring the relevant artifacts into the session.

---

## Quick Reference

| Source type | How to bring it in |
|---|---|
| Document | Attach the file (don't paste long text) |
| Teams thread | Link the conversation; cite by message |
| Email thread | Use [outlook-connector](../outlook-connector/SKILL.md) by `conversationId` |
| Spreadsheet data | Attach the workbook or paste the *narrow* range |
| Person's view | Pull a recent message; don't paraphrase from memory |
| Prior version | Attach the last version of *this* deliverable |

## When to Use

- Any deliverable that builds on prior work.
- When the requester says "you know the context" — you don't; gather it.
- When Copilot starts inventing details — it lacks context; supply more.
- Multi-source synthesis (research, status, recap).

## How to Use

1. **List the sources** the deliverable depends on (decks, prior memos, threads, data exports).
2. **Attach or link** them in the Cowork session — don't paste long text if you can attach the file.
3. **Name what's missing.** If the source doesn't exist, decide: gather it now, or flag the gap in the deliverable.
4. **Confirm Copilot can see it.** Ask it to list the sources it can access before drafting.

## Examples

| ❌ Context-light | ✅ Context-gathered |
|---|---|
| "Draft a recap" with no transcript | Attach transcript + attendee list + last week's recap |
| "Update the deck" with no deck attached | Attach the deck; cite the slide numbers being updated |
| Pasting an email body into chat | Use the connector → reply uses thread context |
| "Summarize what Priya said" from memory | Pull Priya's actual message; cite |

## Critical Rules

- **Attach beats paste.** Files retain structure; pastes lose it.
- **Confirm Copilot sees it.** Ask it to list sources before drafting.
- **Name the gaps.** Missing context becomes an open question, not a guess.
- **Prior version of the deliverable is context too.** Attach it.

## Common Pitfalls

- Pasting walls of text instead of attaching a file Copilot can index.
- Asking Copilot to draft without giving it the prior version of the deliverable.
- Assuming Copilot read your inbox. It didn't.
- Attaching 50 files when 3 would do — context dilution.
- Forgetting time-sensitive context (today's market, this week's policy change).

## Anti-Patterns

- Pasting walls of text instead of attaching a file Copilot can index.
- Asking Copilot to draft without giving it the prior version of the deliverable.
- Assuming Copilot read your inbox. It didn't.
- Over-context: 30 sources for a 1-page memo.

## Verify Before Drafting

- [ ] Each source attached or linked.
- [ ] Copilot has confirmed it can access them.
- [ ] Prior version of the deliverable (if any) attached.
- [ ] Gaps named, not silently guessed.
- [ ] Sensitivity check passed for each source.

## Related

- [clarify-the-ask](../clarify-the-ask/SKILL.md), [intent-framing](../intent-framing/SKILL.md)
- [onedrive-connector](../onedrive-connector/SKILL.md), [outlook-connector](../outlook-connector/SKILL.md), [teams-connector](../teams-connector/SKILL.md)
- [protect-sensitive-info](../protect-sensitive-info/SKILL.md)
