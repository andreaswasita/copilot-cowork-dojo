---
name: teams-connector
category: kumite-connector
description: >-
  Drive Microsoft Teams from Copilot via Graph / Teams Copilot connectors —
  post messages, summarize channels, retrieve meeting context, manage chats.
  Use whenever the source or destination of work is a Teams channel, chat, or
  meeting.
---

# Teams Connector

Teams is where the conversation lives. Treat it as a first-class data source — and a first-class delivery surface.

## When to Use

- Pulling channel/chat history as grounded context for a recap or status update.
- Posting a recap, decision, or status into a channel from a Copilot session.
- Bridging a meeting transcript into downstream artifacts (memo, action list).

## Tool Sequence (Graph / Copilot connectors)

1. **Identify scope** — team ID, channel ID, chat ID, or meeting ID. Never operate by display name; names collide.
2. **Read** before write: list recent messages, get the meeting transcript, list participants.
3. **Compose** the artifact in a draft surface (Word, Loop) — never directly in the channel post.
4. **Post** via the connector with explicit `@` mentions resolved against the participant list.
5. **Verify** the post landed in the right channel, with the right mentions, and no truncation.

## Parameter Guidance

| Parameter | Why it matters |
|---|---|
| `teamId` / `channelId` | Use IDs, not names. Two channels can share a name across teams. |
| `chatId` | Group chats and 1:1s have different permission shapes. |
| `mentions` | Must be resolved to AAD object IDs to actually notify. |
| `subject` | Optional but improves channel scannability. |
| `importance` | `urgent` triggers persistent notifications — use sparingly. |

## Known Pitfalls

- Posting to General when you meant a private channel.
- `@channel` mentions to 800-person channels — escalation incident.
- Pulling a transcript before the meeting has finished processing (empty result, not an error).
- Sensitivity labels on a channel may block automation — see [governance/data-handling.md](../../governance/data-handling.md).

## Anti-Patterns

- Bot-style posts with no human review (violates [verify-before-send](../verify-before-send/SKILL.md)).
- Cross-posting the same message to many channels — use a Loop component instead.
- Treating chat history as durable record — it is, but the *intent* often isn't. Cite carefully.
