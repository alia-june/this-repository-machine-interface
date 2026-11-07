# Repository lookup composition

The pinned request and response contracts occupy separate slots. The expected slot kinds show whether the selectors reached the intended payloads.

[Source JSON](ai.repository-lookup-composition.json)

## How to use this record

Resolve the two inputs separately and compare each selected kind to its expected slot.

The request slot governs admission. The response slot governs evidence and disclosure. Keeping them separate makes provenance traceable and gives a resolver a way to detect the wrong selection.

## Field guide

- `status` — `illustrative`
- `contract` — `.ai.system.logic/construction/contracts/ai.json-reference-composition.json`
- `inputs`
  - `Entry 1`
    - `slot` — `request_contract`
    - `reference`
      - `repository` — `alia-june/this-repository-machine-interface`
      - `revision` — `b5a4e8cf7a2524a73a96855952ffef653c55f0d0`
      - `path` — `.ai.system.logic/exchange/contracts/repository-lookup-request.json`
      - `selector` — `/construct/block-2/arbitrary-data`
  - `Entry 2`
    - `slot` — `response_contract`
    - `reference`
      - `repository` — `alia-june/this-repository-machine-interface`
      - `revision` — `b5a4e8cf7a2524a73a96855952ffef653c55f0d0`
      - `path` — `.ai.system.logic/exchange/contracts/repository-lookup-response.json`
      - `selector` — `/construct/block-2/arbitrary-data`
- `expected_slots`
  - `request_contract` — `repository_lookup_request_contract`
  - `response_contract` — `repository_lookup_response_contract`
