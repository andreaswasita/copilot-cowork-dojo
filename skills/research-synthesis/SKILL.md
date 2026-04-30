---
name: research-synthesis
category: kumite-task
description: >-
  Synthesize multiple sources into a single point of view with traceable
  citations. Use for competitive analyses, policy reviews, market scans,
  due-diligence summaries. Triggers: "synthesize these sources", "what's
  the takeaway across…", "build the matrix", "compare these reports".
---

# Research Synthesis

Synthesis ≠ summary. A synthesis takes a position. A summary repeats.

---

## Quick Reference (the synthesis pipeline)

| Step | Output |
|---|---|
| 1. List sources | 3–10 sources, each named |
| 2. Extract per source | Claim · evidence · date · confidence |
| 3. Synthesis matrix | Rows = themes, cols = sources, cells = each source's view |
| 4. Synthesis paragraph | Where they agree, disagree, contradict |
| 5. So-what | What the reader should *do* differently |

## When to Use

- Competitive analyses, market scans, policy reviews, due-diligence.
- When 3+ sources need a single point of view.
- When the reader needs a recommendation, not a literature review.

## How to Use

1. List sources up front (3–10 is the sweet spot).
2. Ask Copilot to extract, *per source*: claim, evidence, date, confidence.
3. Then ask for a **synthesis matrix**: rows = themes, cols = sources, cells = what each source says.
4. Then ask for the **synthesis paragraph**: where do sources agree, disagree, contradict?
5. Then ask for the **so-what**: what should the reader do given the synthesis?

Every claim in the final output cites which source supports it.

## Examples

| ❌ Summary masquerading as synthesis | ✅ Real synthesis |
|---|---|
| "All four reports agree growth is slowing." | "Reports A, B agree on slowing; C disagrees citing different methodology; synthesis: directionally slowing, magnitude contested." |
| No so-what | "So-what: hold off the Q4 expansion plan until the C methodology is replicated." |
| No matrix; conclusions invented | Matrix attached; every cell traceable |
| Skipping disagreement | Disagreement is signal — name it |

## Critical Rules

- **Synthesis takes a position.** No position = no synthesis.
- **Every claim cites which source.** Inline.
- **Disagreement is signal.** Don't paper over it.
- **The so-what is mandatory.** What does the reader do differently?
- **Matrix is reproducible.** A second analyst with the same sources should land within 90% of the same matrix.

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

## Common Pitfalls

- Synthesizing without naming the sources first.
- Letting Copilot invent agreement that isn't there.
- Synthesis with no recommendation — that's a literature review.
- Skipping the matrix — it's the audit trail.
- Hook that opens with methodology instead of finding.

## Anti-Patterns

- Synthesizing without naming the sources first.
- Letting Copilot invent agreement that isn't there. Disagreement is signal.
- Synthesis with no recommendation. That's a literature review.
- Treating Copilot's first-pass synthesis as the synthesis.

## Verify Before Sending

- [ ] Sources listed (3–10).
- [ ] Per-source extraction complete.
- [ ] Matrix attached.
- [ ] Every claim cites source(s).
- [ ] Disagreements named, not papered over.
- [ ] Hook leads with finding + magnitude.
- [ ] So-what names what the reader does differently.

## Related

- [document-summarization](../document-summarization/SKILL.md), [decision-memo](../decision-memo/SKILL.md)
- [cite-your-sources](../cite-your-sources/SKILL.md), [verify-before-send](../verify-before-send/SKILL.md)
- [confluence-connector](../confluence-connector/SKILL.md), [onedrive-connector](../onedrive-connector/SKILL.md)
