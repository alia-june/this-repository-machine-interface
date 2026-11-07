# This Repository Machine Interface

mARS provides machine-readable reference material for AI handling repository requests in chat across the alia-june GitHub account.

- [ai.landing.pad.json](../ai.landing.pad.json) is the first machine entry point. It describes repository discovery and indexes the kinds of requests an AI might receive.
- [ai.launch.pad.json](../ai.launch.pad.json) describes how to identify the requested operations, locate evidence, give an answer or lookup steps, and return control to the calling AI.

Both files are reference data. The calling AI uses the handoff to continue under the user's instructions and applicable repository rules.

## Systems Deployment

[Grow a workplace, instrument a tool, and eject a seed](SYSTEMS_DEPLOYMENT.md). Start with the instrumentation warning and follow the worked Mill Factory example.
## Lattice entry points

Read each machine record from **construct.block-2.arbitrary-data**. The four root files have distinct roles.

- [Landing pad](../ai.landing.pad.json) establishes repository context.
- [Launch pad](../ai.launch.pad.json) describes the requested operation and handoff.
- [Ingress](../ingress.json) describes what may enter and the conditions for accepting it.
- [Egress](../egress.json) describes what may leave and the evidence and disclosure conditions that accompany it.

The [encoding notes](ENCODING_NOTES.md) document the site-local context-index and context-records pair and the preserved [Lattice template](Lattice_Universal_Construct_Empty_Blocks.json).

See the [paired repository lookup examples](exchange/examples/) for a cited answer, a clarification request, and a disclosure block.

See the [JSON reference and composition contract](construction/contracts/json-reference-composition.json) and the [repository lookup composition example](construction/examples/repository-lookup-composition.json).
