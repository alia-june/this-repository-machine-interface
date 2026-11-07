# History refresh example

Unknown History permits an evidence read. An unbound reader calls for a binding request, denied access for access review, and an exception for recovery review. Preserve the committed state.

[Source JSON](ai.history-refresh.json)

## How to use this record

Trace the worked History refresh from an unknown value to a boundary outcome.

An evidence read is eligible under the unknown condition. A missing binding, denied read, or exception changes what may happen next. The separate attempt record carries that condition while the last committed JSON survives.

## Field guide

- `status` — `illustrative`
- `state_contract` — `.ai.system.logic/state/contracts/ai.memory-state.json`
- `sentinel_contract` — `.ai.system.logic/state/contracts/ai.sentinel-transitions.json`
- `system_binding` — `.ai.system.logic/state/bindings/ai.mill-evidence-workplace.json`
- `history_example`
  - `vector_id` — `S1`
  - `initial_condition` — `SENTINEL_UNKNOWN`
  - `required_capability` — `read_receipts`
  - `operation` — `read_evidence`
  - `cases`
    - `Entry 1`
      - `outcome` — No verified local binding
      - `next_condition` — `SENTINEL_TOOL_UNBOUND`
      - `next_operation` — `request_binding`
    - `Entry 2`
      - `outcome` — Operation denied
      - `next_condition` — `SENTINEL_ACCESS_DENIED`
      - `next_operation` — `request_access_review`
    - `Entry 3`
      - `outcome` — Operation raises an exception
      - `next_condition` — `SENTINEL_TOOL_EXCEPTION`
      - `next_operation` — `request_recovery_review`
