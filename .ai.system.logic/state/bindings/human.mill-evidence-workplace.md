# Mill workplace capability bindings

This illustrative system declares capabilities and a secondary seed. Local authority and bindings must be established before use. The proposed reader, adapter, and glue describe the History boundary.

[Source JSON](ai.mill-evidence-workplace.json)

## How to use this record

Use this as an illustrative inventory of a receiving system and its secondary seed.

Match the operation permitted by the sentinel to a vector requirement and a declared capability. A proposed or unbound capability calls for a local binding and applicable authority before use. The illustrative History adapter and glue describe what evidence would pass.

## Field guide

- `secondary_seed`
  - `id` — `mill_evidence_workplace`
  - `status` — `illustrative`
  - `path` — `.ai.system.logic/human.SYSTEMS_DEPLOYMENT.md`
  - `section` — `eject-a-seed-after-review`
  - `system_id` — `mill_evidence_workplace`
  - `local_bindings`
    - receipt store
    - evidence root
    - instrumented read adapter
    - operator authority
- `systems`
  - `Entry 1`
    - `id` — `mill_evidence_workplace`
    - `status` — `illustrative`
    - `capabilities`
      - `Entry 1`
        - `id` — `read_receipts`
        - `operation` — `read_evidence`
        - `binding_status` — `SENTINEL_TOOL_UNBOUND`
        - `receipt_source` — `https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/mill-controllers/creation/controller.py`
        - `tool` — Locally selected read-only receipt reader
        - `microcontroller` — Proposed bounded retrieval of one receipt by request ID
        - `adapter` — Proposed mapping from a reviewed request ID to the local receipt record
        - `glue` — Pass receipt and provenance reference to History refresh review
        - `evidence` — Receipt JSON and source reference
      - `Entry 2`
        - `id` — `read_progress_records`
        - `operation` — `read_evidence`
        - `binding_status` — `SENTINEL_TOOL_UNBOUND`
      - `Entry 3`
        - `id` — `read_current_records`
        - `operation` — `read_evidence`
        - `binding_status` — `SENTINEL_TOOL_UNBOUND`
      - `Entry 4`
        - `id` — `read_source_baseline`
        - `operation` — `read_evidence`
        - `binding_status` — `SENTINEL_TOOL_UNBOUND`
      - `Entry 5`
        - `id` — `read_accepted_goals`
        - `operation` — `read_evidence`
        - `binding_status` — `SENTINEL_TOOL_UNBOUND`
      - `Entry 6`
        - `id` — `read_verified_results`
        - `operation` — `read_evidence`
        - `binding_status` — `SENTINEL_TOOL_UNBOUND`
      - `Entry 7`
        - `id` — `read_intent_records`
        - `operation` — `read_evidence`
        - `binding_status` — `SENTINEL_TOOL_UNBOUND`
      - `Entry 8`
        - `id` — `read_authority_records`
        - `operation` — `read_evidence`
        - `binding_status` — `SENTINEL_TOOL_UNBOUND`
    - `operator_operations`
      - `request_decision`
      - `request_binding`
      - `request_access_review`
      - `request_recovery_review`
- `state_contract` — `.ai.system.logic/state/contracts/ai.memory-state.json`
- `sentinel_contract` — `.ai.system.logic/state/contracts/ai.sentinel-transitions.json`
