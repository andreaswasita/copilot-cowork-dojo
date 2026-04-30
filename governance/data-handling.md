# Data Handling

Where the line is. Defer to your org's data classification policy if stricter.

## Classification quick map

| Class | Examples | OK to paste in a Cowork prompt? |
|---|---|---|
| Public | Press releases, public docs | ✅ |
| Internal | Org charts, internal memos | ✅ if session is internal-only |
| Confidential | Strategy decks, customer lists | ⚠️ only in cleared workspaces; never share session externally |
| Restricted | PII, PHI, financials pre-announce, contracts under negotiation | 🚫 escalate before pasting |

## The four-question gate

Before pasting *anything* into a prompt:

1. Personal data of named individuals?
2. Regulated content (legal, financial, security, health)?
3. Are all session participants cleared to see this?
4. Would I post this in a public Teams channel?

Any "yes" / unsure → escalate (see [escalation.md](./escalation.md)).

## Outputs

Copilot output inherits the sensitivity of its input. A summary of confidential data is itself confidential.

## Cross-tenant & external

- Never paste content from another tenant or customer environment.
- Never share a Cowork session link with an external party without IT/security review.
