# Mill History germ

This compact germ starts with one goal and an unknown History value. Its pinned seed and contracts supply the context for the first evidence read. Accepted evidence can establish History in a new revision.

[Source JSON](ai.mill-history-germ.json)

Record identity · kind `growth_germ` · version `1.0` · mode `reference_only`

## How to use this record

Start from the compact germ before binding a receipt reader or doing a refresh.

Resolve its pinned secondary seed when needed. The first goal is one reviewed receipt. An unbound reader calls for a binding request and preserves the committed germ. Accepted evidence can establish History in a new revision.

## Field guide

- `status` — `illustrative`
- `germ_id` — `mill_history_germ`
- `germ_revision` — `1`
- `source_seed`
  - `repository` — `alia-june/this-repository-machine-interface`
  - `revision` — `0951852a077256730b93f55f4d972375b1bc418c`
  - `path` — `.ai.system.logic/state/bindings/ai.mill-evidence-workplace.json`
  - `selector` — `/construct/block-2/arbitrary-data/secondary_seed`
- `contracts`
  - `state` — `.ai.system.logic/state/contracts/ai.memory-state.json`
  - `sentinel` — `.ai.system.logic/state/contracts/ai.sentinel-transitions.json`
  - `system_binding` — `.ai.system.logic/state/bindings/ai.mill-evidence-workplace.json`
- `initial_state`
  - `vector_id` — `S1`
  - `value` — `SENTINEL_UNKNOWN`
  - `condition` — `SENTINEL_UNKNOWN`
- `first_growth_goal` — Establish History from one reviewed batch receipt.
- `first_step`
  - `capability_id` — `read_receipts`
  - `operation` — `read_evidence`
  - `required_binding` — Verified local receipt reader with authority for the requested receipt.
- `branches`
  - `unbound`
    - `condition` — `SENTINEL_TOOL_UNBOUND`
    - `next` — `request_binding`
    - `result` — Retain the committed germ and record the failed attempt separately.
  - `accepted_receipt`
    - `requires` — Authorized read and accepted receipt evidence with provenance.
    - `result` — Clear the unknown condition and record the accepted History value in a new germ revision.

## Direct record references

- [ai.mill-evidence-workplace.json](../bindings/ai.mill-evidence-workplace.json) · [Human companion](../bindings/human.mill-evidence-workplace.md)
- [ai.memory-state.json](../contracts/ai.memory-state.json) · [Human companion](../contracts/human.memory-state.md)
- [ai.sentinel-transitions.json](../contracts/ai.sentinel-transitions.json) · [Human companion](../contracts/human.sentinel-transitions.md)
- [ai.mill-evidence-workplace.json](https://github.com/alia-june/this-repository-machine-interface/blob/0951852a077256730b93f55f4d972375b1bc418c/.ai.system.logic/state/bindings/ai.mill-evidence-workplace.json) at 0951852, selector `/construct/block-2/arbitrary-data/secondary_seed`
