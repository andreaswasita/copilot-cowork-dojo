---
name: research-synthesis
description: >-
  Synthesize multiple sources into a single point of view with traceable
  citations. Use for competitive analyses, policy reviews, market scans,
  due-diligence summaries.
---

# Research Synthesis

Synthesis ≠ summary. A synthesis takes a position. A summary repeats.

## How to Use

1. List sources up front (3–10 is the sweet spot).
2. Ask Copilot to extract, *per source*: claim, evidence, date, confidence.
3. Then ask for a **synthesis matrix**: rows = themes, cols = sources, cells = what each source says.
4. Then ask for the **synthesis paragraph**: where do sources agree, disagree, contradict?
5. Then ask for the **so-what**: what should the reader do given the synthesis?

Every claim in the final output cites which source supports it.

## Anti-Patterns

- Synthesizing without naming the sources first.
- Letting Copilot invent agreement that isn't there. Disagreement is signal.
- Synthesis with no recommendation. That's a literature review.

## Citation Discipline

Every factual claim in the final output is one of:

1. **Direct quote** — verbatim from a source, in quotes, with section / page reference.
2. **Paraphrase with cite** — your wording, source named inline, link to the artifact.
3. **Synthesis claim** — your inference across multiple sources, *labeled as such* ("Synthesis: "), and reproducible from the matrix.

No fourth category. If a claim doesn't fit one of the three, it's a guess — cut it or downgrade it to an open question.

See [cite-your-sources](../cite-your-sources/SKILL.md) for the canonical citation format.

## Hook & So-What Discipline

A synthesis that opens with "This document covers…" gets skipped. Force these two beats:

- **Hook (first 2 sentences):** the single most consequential finding, stated in the reader's vocabulary, with the magnitude. Not the methodology.
- **So-what (closing paragraph):** what the reader should *do differently* on Monday because of this synthesis. If there's nothing to do, the synthesis isn't done.

Ask Copilot for these two beats *separately* from the body — they need different prompting and different review.
