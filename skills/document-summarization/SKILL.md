---
name: document-summarization
description: >-
  Faithfully summarize a long document at the right altitude for the audience.
  Use for board pre-reads, exec briefs, policy reviews, RFP responses.
---

# Document Summarization

Summarization is the easiest thing for Copilot to do badly. The fix is altitude.

## How to Use

State the altitude explicitly:

- **30,000 ft** — one paragraph: what it is, why it matters, what to do.
- **10,000 ft** — one page: structure mirrors the source, key points only.
- **Ground** — section-by-section, no compression.

Then prompt:

> *"Summarize [doc] at the 10,000 ft altitude for [audience]. Preserve [these specific items]. Drop anything not directly relevant to [decision]."*

Verify by spot-checking three claims against the source. If any drift, re-prompt with corrections.

## Anti-Patterns

- "Summarize this." That's an altitude-less ask.
- Summaries that invent emphasis the source didn't have.
- Skipping verification because the summary "sounds right."
