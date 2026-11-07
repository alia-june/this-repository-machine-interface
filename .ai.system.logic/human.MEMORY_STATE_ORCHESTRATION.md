# Memory-state orchestration index

Follow this index to the state contract, sentinel transitions, receiving-system bindings, and History example. Start with the sentinel and resolve a locally authorized capability.

[Source JSON](ai.MEMORY_STATE_ORCHESTRATION.json)

## How to use this record

Use this index to locate the governing state, sentinel, binding, and example records.

Resolve the state contract for the survivor, the sentinel contract for eligible operations, and the receiving-system binding for local availability and authority. A required reference failure stops the dependent operation and is recorded separately.

## Field guide

- `orchestration`
  - `direction` — `sentinel_contract_determines_capabilities`
  - `secondary_seed` — `.ai.system.logic/state/bindings/ai.mill-evidence-workplace.json`
  - `state_contract` — `.ai.system.logic/state/contracts/ai.memory-state.json`
  - `sentinel_contract` — `.ai.system.logic/state/contracts/ai.sentinel-transitions.json`
  - `history_example` — `.ai.system.logic/state/examples/ai.history-refresh.json`
  - `reference_failure` — Stop the dependent operation, preserve the required committed JSON, and record the unresolved reference separately.
