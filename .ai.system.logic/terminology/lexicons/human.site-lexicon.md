# Site lexicon

Find a site term by its stable ID. An alias leads to the same definition. Use the governing contract for operation rules.

| Term | Stable ID | Aliases | Definition |
| --- | --- | --- | --- |
| Lattice | lattice | — | The five-block JSON form used by this site to separate identity and structure, safeguards, payload, context selection, and context records. |
| Crete | crete | — | The site-local convention that assigns stable names to context roles and checks for key collisions before applying those names. |
| Context index | context_index | — | The context-index record that describes selectors and matches for applicable context. |
| Context records | context_records | — | The context-records collection that holds the context values selected or referenced within a Lattice record. |
| Context reference | context_reference | — | A reference expressed with the $context-ref key that identifies a context and item. Its declared target must resolve before dependent use. |
| Landing pad | landing_pad | — | An entry record that establishes repository context and directs the caller to further orientation or exchange records. |
| Launch pad | launch_pad | — | The reference record that describes how to interpret a request, find the applicable operation rules, and hand control back to the caller. |
| Ingress | ingress | — | The exchange boundary that defines incoming request form and the conditions for admitting a request to dependent work. |
| Egress | egress | — | The exchange boundary that defines response form, evidence and disclosure requirements, and the handoff to the caller. |
| Memory state | memory_state | — | The retained identity, intent, state, and orchestration context that a receiving workplace can use to restore its working context. |
| Secondary seed | secondary_seed | — | A deployment reference describing the receiving system and the tooling and local bindings needed to make the memory state usable. |
| Sentinel | sentinel | — | An explicit representation of a condition whose contract determines which operation and capability may be considered next. |
| Safe copy | safe_copy | — | Copy a complete pinned source bundle to a distinct new destination and verify the destination membership and digests against its manifest. |
| Germ | germ | — | A compact, independently identified starting record ejected immediately from a pinned seed before growth. It carries one goal, initial state and condition, and references to the tooling and context needed for the first step. |
| Decomposting | decomposting | recovery and recomposition | Decomposition, composting, and composition occurring together while examining source relationships, selecting what can feed new growth, and shaping a seed candidate. |
| Project seed | project_seed | — | An artifact extracted from a selected project through transmigration and decomposting for an intended use. The site uses a separate landing seed to derive its AI landing germ. |

[Source JSON](ai.site-lexicon.json)

## Find a term and follow its sources

Use the stable ID to select a term in the source JSON under `/construct/block-2/arbitrary-data/terms`. An alias resolves to the same definition. Source notes record design provenance, and operation contracts govern behavior.

## Sources by term

### `lattice`

- [`.ai.system.logic/ai.Lattice_Universal_Construct_Empty_Blocks.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/ai.Lattice_Universal_Construct_Empty_Blocks.json)
- [`.ai.system.logic/human.ENCODING_NOTES.md`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/human.ENCODING_NOTES.md)

### `crete`

- [`.ai.system.logic/human.ENCODING_NOTES.md`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/human.ENCODING_NOTES.md)

### `context_index`

- [`.ai.system.logic/human.ENCODING_NOTES.md`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/human.ENCODING_NOTES.md)
- [`ai.ingress.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/ai.ingress.json)

### `context_records`

- [`.ai.system.logic/human.ENCODING_NOTES.md`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/human.ENCODING_NOTES.md)
- [`ai.ingress.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/ai.ingress.json)

### `context_reference`

- [`.ai.system.logic/human.ENCODING_NOTES.md`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/human.ENCODING_NOTES.md)
- [`ai.ingress.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/ai.ingress.json)

### `landing_pad`

- [`ai.landing.pad.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/ai.landing.pad.json)
- [`ai.landing.pad.low-mem.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/ai.landing.pad.low-mem.json)

### `launch_pad`

- [`ai.launch.pad.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/ai.launch.pad.json)

### `ingress`

- [`ai.ingress.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/ai.ingress.json)
- [`.ai.system.logic/exchange/contracts/ai.repository-lookup-request.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/exchange/contracts/ai.repository-lookup-request.json)

### `egress`

- [`ai.egress.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/ai.egress.json)
- [`.ai.system.logic/exchange/contracts/ai.repository-lookup-response.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/exchange/contracts/ai.repository-lookup-response.json)

### `memory_state`

- [`.ai.system.logic/state/contracts/ai.memory-state.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/state/contracts/ai.memory-state.json)
- [`.ai.system.logic/human.SYSTEMS_DEPLOYMENT.md`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/human.SYSTEMS_DEPLOYMENT.md)

### `secondary_seed`

- [`.ai.system.logic/state/bindings/ai.mill-evidence-workplace.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/state/bindings/ai.mill-evidence-workplace.json)

### `sentinel`

- [`.ai.system.logic/state/contracts/ai.sentinel-transitions.json`](https://github.com/alia-june/this-repository-machine-interface/blob/1408d85e361fd386ff6d9200e0496a78f28f3d08/.ai.system.logic/state/contracts/ai.sentinel-transitions.json)

### `safe_copy`

- October — Safe Copy / Safe Transfer distinction. Safe copy copies a pinned complete bundle to a new destination and verifies its manifest. Safe transfer concerns versioned local publication against an expected predecessor.
- [`.ai.system.logic/construction/contracts/ai.safe-copy.json`](../../construction/contracts/ai.safe-copy.json)

### `germ`

- User-supplied design direction. Take the seed, immediately eject a germ, and grow from the germ for low-memory or bare-metal work.
- [`.ai.system.logic/state/examples/ai.mill-history-germ.json`](../../state/examples/ai.mill-history-germ.json)

### `decomposting`

- User-supplied design direction. Decomposting combines decomposition, composting, and composition at once. Any project may be considered for seed extraction through transmigration and decomposting.
- [`.ai.system.logic/human.SYSTEMS_DEPLOYMENT.md`](../../human.SYSTEMS_DEPLOYMENT.md#project-seed-extraction)

### `project_seed`

- User-supplied design direction. Decomposting combines decomposition, composting, and composition at once. Any project may be considered for seed extraction through transmigration and decomposting.
- [`.ai.system.logic/human.SYSTEMS_DEPLOYMENT.md`](../../human.SYSTEMS_DEPLOYMENT.md#project-seed-extraction)
