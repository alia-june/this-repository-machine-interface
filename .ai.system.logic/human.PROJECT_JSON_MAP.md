# Project JSON map

Audited against [`a716ffe`](https://github.com/alia-june/this-repository-machine-interface/tree/a716ffeca97a591cc57fb8624955619c8aed157a). This map covers the 24 JSON files tracked in this repository and their direct references. Each record has a human companion. Historical references use the paths at their pinned revisions.

## Follow the project

1. Begin at the [root README](../README.md). The heuristic engine gets the expanded seed, the AI gets its compact germ, and a human continues with the guide.
2. Follow [ingress](../ai.ingress.json) for admission, the [launch pad](../ai.launch.pad.json) for the operation, and [egress](../ai.egress.json) for the response and disclosure.
3. For a worked exchange, follow the [lookup contract guides](exchange/contracts/) and the [paired examples](exchange/examples/). Admission, operation selection, and recipient disclosure are separate decisions.
4. For state-dependent operations, use the [state index](ai.MEMORY_STATE_ORCHESTRATION.json) to reach the state contract, sentinel rules, bindings, and examples. The sentinel determines which capability may be considered.
5. Use the construction contracts for reference, composition, and safe copy. Follow the [worked project seed](construction/examples/ai.repository-lookup-project-seed.json) and [germ](construction/examples/ai.repository-lookup-project-germ.json) to see what a receiving project must establish. Use the lexicon for definitions and follow its governing links for operation rules.

## Entry points

| Record | Function or form | Human commentary |
| --- | --- | --- |
| [ai.egress.json](../ai.egress.json) | egress contract | [Read the companion](orientation/human.egress.md) |
| [ai.ingress.json](../ai.ingress.json) | ingress contract | [Read the companion](orientation/human.ingress.md) |
| [ai.landing.pad.json](../ai.landing.pad.json) | ai landing pad | [Read the companion](orientation/human.landing.pad.md) |
| [ai.landing.pad.low-mem.json](../ai.landing.pad.low-mem.json) | ai low memory landing pad | [Read the companion](orientation/human.landing.pad.low-mem.md) |
| [ai.launch.pad.json](../ai.launch.pad.json) | ai launch pad | [Read the companion](orientation/human.launch.pad.md) |

## Format and state index

| Record | Function or form | Human commentary |
| --- | --- | --- |
| [ai.Lattice_Universal_Construct_Empty_Blocks.json](ai.Lattice_Universal_Construct_Empty_Blocks.json) | preserved empty-block template | [Read the companion](human.Lattice_Universal_Construct_Empty_Blocks.md) |
| [ai.MEMORY_STATE_ORCHESTRATION.json](ai.MEMORY_STATE_ORCHESTRATION.json) | bound orchestration reference | [Read the companion](human.MEMORY_STATE_ORCHESTRATION.md) |

## Exchange

| Record | Function or form | Human commentary |
| --- | --- | --- |
| [ai.repository-lookup-request.json](exchange/contracts/ai.repository-lookup-request.json) | repository lookup request contract | [Read the companion](exchange/contracts/human.repository-lookup-request.md) |
| [ai.repository-lookup-response.json](exchange/contracts/ai.repository-lookup-response.json) | repository lookup response contract | [Read the companion](exchange/contracts/human.repository-lookup-response.md) |
| [ai.repository-lookup-cited-answer.json](exchange/examples/ai.repository-lookup-cited-answer.json) | repository lookup exchange example | [Read the companion](exchange/examples/human.repository-lookup-cited-answer.md) |
| [ai.repository-lookup-clarification.json](exchange/examples/ai.repository-lookup-clarification.json) | repository lookup exchange example | [Read the companion](exchange/examples/human.repository-lookup-clarification.md) |
| [ai.repository-lookup-disclosure-blocked.json](exchange/examples/ai.repository-lookup-disclosure-blocked.json) | repository lookup exchange example | [Read the companion](exchange/examples/human.repository-lookup-disclosure-blocked.md) |

## Memory state

| Record | Function or form | Human commentary |
| --- | --- | --- |
| [ai.mill-evidence-workplace.json](state/bindings/ai.mill-evidence-workplace.json) | system capability binding | [Read the companion](state/bindings/human.mill-evidence-workplace.md) |
| [ai.memory-state.json](state/contracts/ai.memory-state.json) | memory state contract | [Read the companion](state/contracts/human.memory-state.md) |
| [ai.sentinel-transitions.json](state/contracts/ai.sentinel-transitions.json) | sentinel transition contract | [Read the companion](state/contracts/human.sentinel-transitions.md) |
| [ai.history-refresh.json](state/examples/ai.history-refresh.json) | history refresh example | [Read the companion](state/examples/human.history-refresh.md) |
| [ai.mill-history-germ.json](state/examples/ai.mill-history-germ.json) | growth germ | [Read the companion](state/examples/human.mill-history-germ.md) |

## Construction

| Record | Function or form | Human commentary |
| --- | --- | --- |
| [ai.json-reference-composition.json](construction/contracts/ai.json-reference-composition.json) | json reference composition contract | [Read the companion](construction/contracts/human.json-reference-composition.md) |
| [ai.safe-copy.json](construction/contracts/ai.safe-copy.json) | safe copy contract | [Read the companion](construction/contracts/human.safe-copy.md) |
| [ai.repository-lookup-composition.json](construction/examples/ai.repository-lookup-composition.json) | json reference composition example | [Read the companion](construction/examples/human.repository-lookup-composition.md) |
| [ai.repository-lookup-project-germ.json](construction/examples/ai.repository-lookup-project-germ.json) | project germ example | [Read the companion](construction/examples/human.repository-lookup-project-germ.md) |
| [ai.repository-lookup-project-seed.json](construction/examples/ai.repository-lookup-project-seed.json) | project seed example | [Read the companion](construction/examples/human.repository-lookup-project-seed.md) |
| [ai.safe-copy-receipt.json](construction/receipts/ai.safe-copy-receipt.json) | safe copy receipt form | [Read the companion](construction/receipts/human.safe-copy-receipt.md) |

## Terminology

| Record | Function or form | Human commentary |
| --- | --- | --- |
| [ai.site-lexicon.json](terminology/lexicons/ai.site-lexicon.json) | site lexicon | [Read the companion](terminology/lexicons/human.site-lexicon.md) |

## Direct dependencies and unresolved conditions

- [WORKSPACE_SEED.json](https://github.com/alia-june/xOSG-prototype/blob/545dbf47c9ea33c09eb6e97d5536255344001cd5/docs/systems-deployment/seeds/mars-workspace/WORKSPACE_SEED.json) and its [source README](https://github.com/alia-june/xOSG-prototype/blob/545dbf47c9ea33c09eb6e97d5536255344001cd5/docs/systems-deployment/seeds/mars-workspace/README.md) were published on xOSG main by [squash commit 545dbf4](https://github.com/alia-june/xOSG-prototype/commit/545dbf47c9ea33c09eb6e97d5536255344001cd5). The [earlier review pin](https://github.com/alia-june/xOSG-prototype/blob/a73a88a55d605f8d333ad1a53ca5a9f634023a15/docs/systems-deployment/seeds/mars-workspace/WORKSPACE_SEED.json) used by existing records identifies the same verified bytes. The [local state contract](state/contracts/ai.memory-state.json) describes the template and its receiving-system boundary.

A template placeholder or illustrative unbound capability is a declared condition. Resolve it only when the relevant source, binding, evidence, and authority have been established.

The sweep resolved the checked direct file paths and selectors. It did not run a consumer or exercise external discovery, tool access, or recovery.
