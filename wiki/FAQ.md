# FAQ

## Is this a tool I install?

No. It's a folder of markdown files plus a few PowerShell helper scripts. The "tool" is your discipline; the dojo is the scaffold for it.

## Do I need to use all 34 skills?

No. The **6 core kata** are the foundation. Beyond those, use whichever **kumite** map to the deliverables you actually produce. Most users live inside 8–10 skills.

## Does this work without Microsoft 365 Copilot?

The pipeline and skills are tool-agnostic — they apply to ChatGPT, Claude, Gemini, etc. Some references (Cowork sessions, Loop, Teams) are M365-specific; substitute equivalents.

## Will this slow me down?

Initial week: yes — by 10–20%. After the pipeline becomes habit (week 3–4): you're faster, because you're shipping in 1–2 review cycles instead of 4–5.

## Do I have to use the PowerShell scripts?

No. They're conveniences. You can write `tasks/todo.md` and `tasks/lessons.md` by hand. The scripts just save typing.

## What if my organization has its own RAI / data policy?

Defer to your org's policy where stricter. The [governance/](../governance) files are defaults — adapt them.

## Can I use this for personal (non-work) Copilot use?

Yes — though some skills (sensitivity gate, escalation) won't apply. The pipeline works for any structured deliverable.

## How is this different from "prompt engineering"?

Prompt engineering optimizes individual prompts. The dojo optimizes the **end-to-end workflow** — clarify → plan → draft → review → refine → ship → learn — of which prompting is one small step.

## How is this different from the Copilot Agents Dojo?

[Copilot Agents Dojo](https://github.com/andreaswasita/copilot-agents-dojo) trains AI **builders** (developers writing code with agents). Cowork Dojo trains AI **coworkers** (knowledge workers using Copilot). Same shape, different audience.

## Where do I contribute?

See [CONTRIBUTING.md](../CONTRIBUTING.md). New skills, scenarios, and prompt patterns welcome.

## What's the licensing?

[MIT](../LICENSE). Use it, fork it, rebrand it for your team.

## How do I know it's working?

By **week 4**, you should notice:

- Fewer "wait, that's wrong" moments after sending.
- Less time spent re-prompting.
- A non-empty `tasks/lessons.md`.
- At least one teammate using the same vocabulary as you ("did you frame the intent?", "what's the altitude?").

## What if my team won't engage?

See [10 — Roll Out](./10-Roll-Out-to-Your-Team.md). Don't mandate. Demonstrate value with a small pilot, then let demand pull others in.
