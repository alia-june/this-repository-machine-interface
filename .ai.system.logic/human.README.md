# This Repository Machine Interface

mARS provides machine-readable reference material for AI handling repository requests in chat across the alia-june GitHub account.

- [ai.landing.pad.json](../ai.landing.pad.json) is the first machine entry point. It describes repository discovery and indexes the kinds of requests an AI might receive.
- [ai.launch.pad.json](../ai.launch.pad.json) describes how to identify the requested operations, locate evidence, give an answer or lookup steps, and return control to the calling AI.

Both files are reference data. The calling AI uses the handoff to continue under the user's instructions and applicable repository rules.

## Systems Deployment

[Grow a workplace, instrument a tool, and eject a seed](human.SYSTEMS_DEPLOYMENT.md). Start with the instrumentation warning and follow the worked Mill Factory example.
## Lattice entry points

Read each machine record from **construct.block-2.arbitrary-data**. The four root files have distinct roles.

- [Landing pad](../ai.landing.pad.json) establishes repository context.
- [Launch pad](../ai.launch.pad.json) describes the requested operation and handoff.
- [Ingress](../ai.ingress.json) describes what may enter and the conditions for accepting it.
- [Egress](../ai.egress.json) describes what may leave and the evidence and disclosure conditions that accompany it.

The [encoding notes](human.ENCODING_NOTES.md) document the site-local context-index and context-records pair and the preserved [Lattice template](ai.Lattice_Universal_Construct_Empty_Blocks.json).

See the [paired repository lookup examples](exchange/examples/) for a cited answer, a clarification request, and a disclosure block.

See the [JSON reference and composition contract](construction/contracts/ai.json-reference-composition.json) and the [repository lookup composition example](construction/examples/ai.repository-lookup-composition.json).

## Where the detailed rules live

The [root chooser](../README.md) routes heuristic engines, AIs, and people to the same reference contracts. Both machine landing pads point to ingress, launch, and egress. The pads establish context, ingress admits a request, launch selects the applicable operation contract, and egress governs the response and disclosure.

The [memory-state orchestration index](ai.MEMORY_STATE_ORCHESTRATION.json) points to separate records for the state contract, sentinel transitions, receiving-system bindings, and the History refresh example. Follow the index for the current record locations.

See the [site lexicon](terminology/lexicons/ai.site-lexicon.json) for shared terms. Find a term by its ID under construct.block-2.arbitrary-data.terms. Follow its source references for the governing material.

See the [safe-copy contract](construction/contracts/ai.safe-copy.json) and [receipt form](construction/receipts/ai.safe-copy-receipt.json) for the source, destination, and verification boundaries of a bundle copy.

## Human-readable JSON records

Use the [project JSON map](human.PROJECT_JSON_MAP.md) to follow the records by function, find their companions, and locate direct dependencies.

- [Lattice Universal Construct template](human.Lattice_Universal_Construct_Empty_Blocks.md)
- [Memory-state orchestration index](human.MEMORY_STATE_ORCHESTRATION.md)
- [JSON reference and composition](construction/contracts/human.json-reference-composition.md)
- [Safe-copy contract](construction/contracts/human.safe-copy.md)
- [Repository lookup composition](construction/examples/human.repository-lookup-composition.md)
- [Repository lookup project germ](construction/examples/human.repository-lookup-project-germ.md)
- [Repository lookup project seed](construction/examples/human.repository-lookup-project-seed.md)
- [Safe-copy receipt form](construction/receipts/human.safe-copy-receipt.md)
- [Repository lookup request contract](exchange/contracts/human.repository-lookup-request.md)
- [Repository lookup response contract](exchange/contracts/human.repository-lookup-response.md)
- [Lookup example with a cited answer](exchange/examples/human.repository-lookup-cited-answer.md)
- [Lookup example requiring clarification](exchange/examples/human.repository-lookup-clarification.md)
- [Lookup example blocked at disclosure](exchange/examples/human.repository-lookup-disclosure-blocked.md)
- [Mill workplace capability bindings](state/bindings/human.mill-evidence-workplace.md)
- [Memory-state contract](state/contracts/human.memory-state.md)
- [Sentinel transitions](state/contracts/human.sentinel-transitions.md)
- [History refresh example](state/examples/human.history-refresh.md)
- [Mill History germ](state/examples/human.mill-history-germ.md)
- [Site lexicon](terminology/lexicons/human.site-lexicon.md)
- [Egress](orientation/human.egress.md)
- [Ingress](orientation/human.ingress.md)
- [Heuristic landing pad](orientation/human.landing.pad.md)
- [AI landing germ](orientation/human.landing.pad.low-mem.md)
- [Launch pad](orientation/human.launch.pad.md)
