# Sentinel transitions

The current condition determines which operation may be considered. Each sentinel states what may happen next and what can clear it. Capability availability alone does not change the condition.

[Source JSON](ai.sentinel-transitions.json)

Record identity · kind `sentinel_transition_contract` · version `1.0` · mode `reference_only`

## How to use this record

Start with the current condition and read its operation and clearance rule.

A capability can be considered only after the condition permits its operation. The receiving system then verifies the binding and authority. Raw output is evidence for the transition rule. It does not independently clear a condition.

## Field guide

- `direction` — `sentinel_contract_determines_capabilities`
- `selection_order`
  - Read the current condition and its rule.
  - Intersect the rule operation with the vector capability declaration.
  - Resolve the declared capability in the receiving system and check local binding and authority.
  - If no authorized binding exists, retain the state and report the condition to the surrounding system.
- `transition_rule` — Only the declared state contract maps accepted evidence or a classified boundary outcome to a sentinel. Capability inventory and raw tool output cannot select or clear sentinels.
- `sentinels`
  - `SENTINEL_UNRESOLVED`
    - `meaning` — A required choice or binding is unresolved.
    - `permitted_next_operation` — `request_decision`
    - `clear_when` — The responsible operator establishes the decision or binding.
  - `SENTINEL_UNKNOWN`
    - `meaning` — Available evidence cannot establish the state value.
    - `permitted_next_operation` — `read_evidence`
    - `clear_when` — Accepted evidence establishes the value.
  - `SENTINEL_TOOL_UNBOUND`
    - `meaning` — The required capability has no verified local binding.
    - `permitted_next_operation` — `request_binding`
    - `clear_when` — The receiving system verifies a local binding and authority.
  - `SENTINEL_ACCESS_DENIED`
    - `meaning` — The bound operation lacks access or authority.
    - `permitted_next_operation` — `request_access_review`
    - `clear_when` — Authorized review confirms access and permission for this operation.
  - `SENTINEL_TOOL_ERROR`
    - `meaning` — A returned error or result failed the operation contract.
    - `permitted_next_operation` — `request_recovery_review`
    - `clear_when` — The surrounding system records an authorized resolution and accepts the required evidence.
  - `SENTINEL_TOOL_EXCEPTION`
    - `meaning` — An exception interrupted the operation.
    - `permitted_next_operation` — `request_recovery_review`
    - `clear_when` — The surrounding system records an authorized resolution and accepts the required evidence.
- `condition_fields`
  - `sentinel`
  - `vector_id`
  - `capability_id`
  - `attempted_operation`
  - `evidence_reference`
- `state_contract` — `.ai.system.logic/state/contracts/ai.memory-state.json`

## Direct record references

- [ai.memory-state.json](ai.memory-state.json) · [Human companion](human.memory-state.md)
