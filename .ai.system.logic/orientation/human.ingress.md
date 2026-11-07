# Ingress

Establish the request ID, operation, and applicable context before dependent work. Ask for missing facts. Invalid input or denied access stops the dependent operation.

[Source JSON](../../ai.ingress.json)

## How to use this record

Validate the envelope before selecting or reading evidence.

For a documentation lookup, establish the request ID, operation, and query. An ambiguous repository is missing context when the envelope is otherwise valid. A malformed required field belongs to invalid input. If required access or authority is denied, stop the dependent operation. Accepted requests can reach launch. Unresolved or refused requests can return through egress.

## Field guide

- `landing_pad` — `ai.landing.pad.json`
- `launch_pad` — `ai.launch.pad.json`
- `required_context`
  - `request`
  - source identity
  - applicable repository and revision
  - authority for the requested operation
- `acceptance`
  - Apply the request envelope to establish scope.
  - For repository lookup, follow the referenced request contract for field requirements, source resolution, and admission outcomes.
  - Return missing context, invalid input, or denied access through the response boundary.
- `egress_contract` — `ai.egress.json`
- `memory_state_orchestration` — `.ai.system.logic/ai.MEMORY_STATE_ORCHESTRATION.json`
- `request_envelope`
  - `required`
    - `request_id`
    - `operation`
  - `fields`
    - `request_id` — Nonempty identifier echoed in egress.
    - `operation` — Requested intent from the landing pad index. Preserve the order of distinct operations.
    - `target` — Repository and pinned revision when needed to establish the requested source. Resolve an applicable branch to a commit before relying on it.
    - `source_references` — Source identity, revision and path or record selector when relying on supplied material.
    - `context_references` — Applicable context, memory state and conditions when the request depends on them.
    - `authority_evidence` — Reference to verified authority when required by the requested operation.
- `outcomes`
  - `accepted`
    - `condition` — Required fields, applicable context, source identity and authority are established.
    - `next` — `orientation_or_evidence_lookup`
  - `missing_context`
    - `condition` — An otherwise valid request lacks facts needed to select the target or operation.
    - `next` — `request_clarification`
  - `invalid_input`
    - `condition` — A required envelope field is absent or malformed.
    - `next` — `return_validation_issues`
  - `denied_access`
    - `condition` — Required access or authority is denied.
    - `next` — `stop_dependent_operation`
    - `sentinel` — `SENTINEL_ACCESS_DENIED`
- `repository_lookup_request_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-request.json`
