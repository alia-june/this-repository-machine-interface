# Memory-state contract

Each of the eight vectors declares the tooling it needs. Preserve the last committed memory-state JSON through a failed refresh and record the attempt separately. Replace it only after validation and acceptance.

[Source JSON](ai.memory-state.json)

Record identity · kind `memory_state_contract` · version `1.0` · mode `reference_only`

## How to use this record

Use the vector inventory to identify the capability a state refresh needs.

Retain the last committed JSON as the survivor when a refresh fails. Keep the attempt record separate. Only validated and accepted evidence can establish a replacement value.

## Field guide

- `memory_state_source`
  - `schema` — `mars-tool-less-core-seed/0.3.0`
  - `revision` — `a73a88a55d605f8d333ad1a53ca5a9f634023a15`
  - `url` — `https://github.com/alia-june/xOSG-prototype/blob/a73a88a55d605f8d333ad1a53ca5a9f634023a15/docs/systems-deployment/seeds/mars-workspace/WORKSPACE_SEED.json`
- `vectors`
  - `Entry 1`
    - `id` — `S1`
    - `name` — `History`
    - `required_capabilities`
      - `Entry 1`
        - `id` — `read_receipts`
        - `operation` — `read_evidence`
  - `Entry 2`
    - `id` — `S2`
    - `name` — `Trajectory`
    - `required_capabilities`
      - `Entry 1`
        - `id` — `read_progress_records`
        - `operation` — `read_evidence`
  - `Entry 3`
    - `id` — `S3`
    - `name` — `Present`
    - `required_capabilities`
      - `Entry 1`
        - `id` — `read_current_records`
        - `operation` — `read_evidence`
  - `Entry 4`
    - `id` — `S4`
    - `name` — `Origin`
    - `required_capabilities`
      - `Entry 1`
        - `id` — `read_source_baseline`
        - `operation` — `read_evidence`
  - `Entry 5`
    - `id` — `S5`
    - `name` — `Destination`
    - `required_capabilities`
      - `Entry 1`
        - `id` — `read_accepted_goals`
        - `operation` — `read_evidence`
  - `Entry 6`
    - `id` — `S6`
    - `name` — `Accomplishments`
    - `required_capabilities`
      - `Entry 1`
        - `id` — `read_verified_results`
        - `operation` — `read_evidence`
  - `Entry 7`
    - `id` — `S7`
    - `name` — `Intentions`
    - `required_capabilities`
      - `Entry 1`
        - `id` — `read_intent_records`
        - `operation` — `read_evidence`
  - `Entry 8`
    - `id` — `S8`
    - `name` — `Obligations`
    - `required_capabilities`
      - `Entry 1`
        - `id` — `read_authority_records`
        - `operation` — `read_evidence`
- `preservation`
  - `required_survivor` — `last_committed_memory_state_json`
  - `attempt_record` — `separate`
  - `handling_owner` — `surrounding_system`
  - `promotion` — Replace committed state only after the declared evidence and acceptance conditions are met.
  - `retry` — Requires an explicit recovery decision under the receiving system rules.

## Direct record references

- [WORKSPACE_SEED.json](https://github.com/alia-june/xOSG-prototype/blob/a73a88a55d605f8d333ad1a53ca5a9f634023a15/docs/systems-deployment/seeds/mars-workspace/WORKSPACE_SEED.json) at a73a88a
