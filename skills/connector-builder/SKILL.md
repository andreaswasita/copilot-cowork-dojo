---
name: connector-builder
category: kumite-connector
description: >-
  Phased workflow for building a high-quality connector or MCP server that
  lets Copilot act on an external system (an internal API, a line-of-business
  app, a SaaS tool). Use when planning, designing, or reviewing custom
  connector tools for Copilot or M365 agents. Triggers: "build a connector",
  "MCP server", "expose our API to Copilot", "custom tool for Copilot",
  "connect Copilot to <system>", "Graph connector design".
---

# Connector Builder

A connector is judged by one thing: can Copilot use it to finish real work? Design the tools for the agent's success, not for API completeness on paper.

---

## Quick Reference

| Phase | Focus | Output |
|---|---|---|
| 1. Research & plan | Understand the system and modern tool design | Endpoint list, tool plan |
| 2. Implement | Build tools with clear schemas and errors | Working connector |
| 3. Review & test | Quality pass + live exercise | Verified tools |
| 4. Evaluate | Realistic task questions the agent must solve | 10 eval questions |

## When to Use

- You are exposing an internal API or app to Copilot or an M365 agent as callable tools.
- You are designing or reviewing an MCP server or Graph connector.
- An agent keeps failing at a task because the tools are awkward, under-described, or too coarse.
- This is a builder skill. For *using* an already-installed connector, see the connector playbooks like [jira-connector](../jira-connector/SKILL.md).

## How to Use

### Phase 1 - Research and plan

1. Study the target system's API: key endpoints, auth, data models, rate limits, pagination.
2. Decide coverage vs workflow tools. Comprehensive endpoint coverage gives the agent flexibility to compose; workflow tools bundle a common multi-step task. When unsure, favor coverage.
3. Plan tool names with consistent, action-oriented prefixes (for example `crm_create_lead`, `crm_list_accounts`) so the agent finds the right tool fast.
4. Review the MCP specification and your SDK (TypeScript SDK is the well-supported default; Python works too) before writing code.

### Phase 2 - Implement

1. Build shared infrastructure once: authenticated API client, error helpers, response formatting, pagination.
2. For each tool define a typed input schema (Zod or Pydantic) with constraints, descriptions, and examples in field descriptions. Define an output schema for structured data where possible.
3. Write concise tool descriptions and actionable error messages - every error tells the agent what to do next, not just what failed.
4. Set tool annotations honestly: read-only, destructive, idempotent, open-world. These guide when the agent (and the human approving it) trusts the call.

### Phase 3 - Review and test

1. Review for DRY code, consistent error handling, full type coverage, and clear descriptions.
2. Build and smoke-test with the MCP Inspector. Exercise each tool with a real call and confirm pagination and errors behave.

### Phase 4 - Evaluate

1. Write 10 evaluation questions the agent must answer using only the connector. Make each independent, read-only, complex (multiple tool calls), realistic, verifiable, and stable.
2. Solve each yourself to confirm the answer. Run the agent against them and fix the tools wherever it struggles.

## Examples

| Don't: API-shaped | Do: Agent-shaped |
|---|---|
| `getData`, `doThing` - vague names | `orders_list`, `orders_get`, `orders_refund` - prefixed, action-oriented |
| Error: "Request failed" | Error: "No order with that ID; list orders first to get a valid ID" |
| One mega-tool with 20 optional params | Focused tools with typed schemas and clear descriptions |
| Ship after it compiles | Ship after 10 realistic eval questions pass |

## Critical Rules

- Optimize for agent task success, not API surface area.
- Names and descriptions are the discovery surface. Consistent prefixes, action verbs, concise descriptions.
- Every error message is actionable - it names the next step.
- Annotate destructive and read-only correctly - approval gates depend on it.
- No connector is done until an agent solves realistic tasks with it.

## Common Pitfalls

- Mirroring the raw API one-to-one and leaving the agent to figure out the workflow.
- Returning huge unfiltered payloads that blow the agent's context - paginate and filter.
- Vague tool descriptions, so the agent never selects the right tool.
- Skipping evaluations and discovering the gaps in production.
- Unlabeled destructive tools that an agent calls without a human gate.

## Anti-Patterns

- "Expose everything and hope" - coverage without naming or description discipline.
- Swallowing errors into generic failures the agent cannot recover from.
- Stateful, streaming transport when stateless HTTP would scale more simply.
- Treating the connector as done at "it compiles" instead of "the agent succeeds."

## Verify Before Shipping the Connector

- [ ] Tool names use consistent prefixes and action verbs.
- [ ] Every tool has a typed input schema with descriptions and examples.
- [ ] Error messages are specific and tell the agent the next step.
- [ ] Read-only / destructive annotations are set correctly.
- [ ] Pagination and filtering keep responses focused.
- [ ] 10 realistic eval questions pass against the live connector.

## Related

- [jira-connector](../jira-connector/SKILL.md), [confluence-connector](../confluence-connector/SKILL.md) - using installed connectors
- [teams-connector](../teams-connector/SKILL.md), [outlook-connector](../outlook-connector/SKILL.md)
- [agent-orchestration](../agent-orchestration/SKILL.md), [human-in-the-loop](../human-in-the-loop/SKILL.md)
- [skill-creator](../skill-creator/SKILL.md)
