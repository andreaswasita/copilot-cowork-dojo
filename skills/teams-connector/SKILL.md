---
name: teams-connector
category: kumite-connector
description: >-
  Drive Microsoft Teams from Copilot via Graph / Teams Copilot connectors —
  post messages, summarize channels, retrieve meeting context, manage chats.
  Use whenever the source or destination of work is a Teams channel, chat, or
  meeting. Triggers: "post to Teams", "summarize this channel", "pull
  meeting transcript", "@mention", "Teams chat".
---

# Teams Connector

Teams is where the conversation lives. Treat it as a first-class data source — and a first-class delivery surface.

---

## Quick Reference

| Task | Approach |
|---|---|
| Read channel context | Resolve `teamId`+`channelId` → list recent messages → cite |
| Read meeting transcript | Wait until processing complete → pull by `meetingId` |
| Post a recap to a channel | Compose in Word/Loop draft → verify → post via connector |
| @mention real people | Resolve display name → AAD object ID, then mention |
| Cross-team digest | Read each channel separately; cite per channel; never merge silently |
| Find duplicates / prior decisions | Search by keyword + `from:` + date range before posting |

## Prerequisites — this skill is a playbook, not the connector

> ⚠️ **A `SKILL.md` cannot call Teams on its own.** It assumes the platform already exposes Microsoft Graph Teams as tools. The skill teaches Cowork *how to use Teams well*; the connector itself is separate infrastructure.

Before this skill works end-to-end you need:

1. **A Microsoft Graph / Teams connector** — typically Copilot Cowork's built-in M365 connectivity, or an MCP server wrapping `/teams/{id}/channels/{id}/messages`, `/chats`, and `/onlineMeetings` endpoints.
2. **Credentials** — your Entra ID session with `ChannelMessage.Send` / `Chat.ReadWrite` / `OnlineMeetings.Read` scopes consented for the connector.
3. **Membership** — you must be a member of the team / chat you're posting to or reading from.
4. **Meeting transcripts** — require the meeting organizer to have enabled transcription/recording, and your role must allow access.
5. **Tool discovery** — confirm Teams tools are visible (ask Cowork: *"what Teams tools do you have?"*) before using this skill.

In Cowork on a properly licensed M365 tenant, this is usually present out of the box. On other surfaces, you'll need an MCP connector explicitly installed.

## When to Use

- Pulling channel/chat history as grounded context for a recap or status update.
- Posting a recap, decision, or status into a channel from a Copilot session.
- Bridging a meeting transcript into downstream artifacts (memo, action list).
- Retrieving meeting attendees and roles for a [meeting-recap](../meeting-recap/SKILL.md).

## Tool Sequence

1. **Identify scope** — `teamId`, `channelId`, `chatId`, or `meetingId`. Never operate by display name; names collide.
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

## Critical Rules

- **IDs, not names.** Display names are reused across tenants and teams.
- **Compose elsewhere, post here.** Direct-to-channel composition skips review.
- **Resolve mentions before posting.** Unresolved `@John` is silent — no notification.
- **Sensitivity-labeled channels** may block automation; check policy before assuming the post will land.
- **No bulk cross-posting.** One canonical channel + a Loop component beats five copies that drift.

## Common Pitfalls

- Posting to General when you meant a private channel.
- `@channel` mentions to 800-person channels — escalation incident.
- Pulling a transcript before the meeting has finished processing (empty result, not an error).
- Sensitivity labels on a channel may block automation — see [governance/data-handling.md](../../governance/data-handling.md).
- Markdown that renders fine in chat but breaks in channel posts (different parser).
- Time-zone display in messages — Teams renders in viewer's TZ, not the author's.

## Anti-Patterns

- Bot-style posts with no human review (violates [verify-before-send](../verify-before-send/SKILL.md)).
- Cross-posting the same message to many channels — use a Loop component instead.
- Treating chat history as durable record — it is, but the *intent* often isn't. Cite carefully.
- Replying in a thread you didn't read first.

## Verify Before Posting

- [ ] Right team, right channel (or right chat).
- [ ] All `@mentions` resolve to real, current people.
- [ ] No accidental `@channel` / `@team` on a large audience.
- [ ] Sensitivity label of content matches sensitivity policy of the channel.
- [ ] Links open for the audience (not just for you).
- [ ] No prompt artifacts ("As an AI…", template placeholders).

## Related

- [meeting-prep](../meeting-prep/SKILL.md), [meeting-recap](../meeting-recap/SKILL.md), [status-update](../status-update/SKILL.md)
- [outlook-connector](../outlook-connector/SKILL.md), [planner-connector](../planner-connector/SKILL.md)
- [protect-sensitive-info](../protect-sensitive-info/SKILL.md), [verify-before-send](../verify-before-send/SKILL.md)
