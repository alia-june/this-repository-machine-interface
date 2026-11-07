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
