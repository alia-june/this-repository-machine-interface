# Repository lookup request contract

Supply the request ID, operation, and query. Establish a unique repository and pin versioned evidence before use. Distinguish malformed input, missing context, denied access, and unresolved references.

[Source JSON](ai.repository-lookup-request.json)

## How to use this record

Identify the caller request and resolve the target before the dependent read.

Validate the operation and query first. A well-formed request with no unique repository calls for clarification. A declared reference that fails resolution stops the lookup. Versioned content needs a commit, while a live record uses a stable locator and observation time.

## Field guide

- `ingress` — `ai.ingress.json`
- `response_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-response.json`
- `sentinel_profile` — `.ai.system.logic/ai.MEMORY_STATE_ORCHESTRATION.json`
- `operations`
  - `locate_documentation`
  - `locate_code`
  - `check_current_state`
- `request_fields`
  - `request_id` — Nonempty caller-provided correlation identifier.
  - `operation` — One supported read-only lookup intent.
  - `query` — Nonempty description of the information sought.
  - `target` — Owner and repository name, with revision or live-record locator when applicable. A missing or ambiguous repository is a context condition.
  - `source_references` — Optional evidence pointers with identity and revision where applicable.
  - `authority_evidence` — Required when the applicable access or operating policy requires evidence of authority.
- `required_fields`
  - `request_id`
  - `operation`
  - `query`
- `acceptance_rules`
  - Validate the required fields before attempting the lookup.
  - Resolve the repository uniquely from the request or established chat context.
  - Check applicable access and authority before reading dependent sources.
  - For versioned repository content, resolve the requested revision or default branch to a commit before relying on the content. For live records, retain a stable locator and observation time.
  - If a declared reference fails to resolve, stop the dependent lookup, preserve the request context, and require a new verified resolution before proceeding.
- `outcomes`
  - `accepted` — The target, applicable source identity, and authority have been established.
  - `invalid_input` — A required field is absent or malformed, or the operation is outside this contract.
  - `missing_context` — The request is well formed but the repository or required context cannot be selected uniquely.
  - `denied_access` — Access or authority required for the lookup was denied.
  - `unresolved_reference` — A declared reference cannot be resolved as supplied. Do not substitute another target.
