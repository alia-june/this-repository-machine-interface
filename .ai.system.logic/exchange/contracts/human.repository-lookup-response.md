# Repository lookup response contract

Echo the request ID and return the applicable answer, lookup plan, clarification, or block. Cite versioned content by commit and path. For live records retain a stable locator and observation time, subject to disclosure.

[Source JSON](ai.repository-lookup-response.json)

## How to use this record

Use the response contract to turn a lookup result into a correlated handoff.

Select an outcome before filling its required fields. Check disclosure independently of whether ingress admitted the request. A source-backed answer needs disclosable evidence, and a blocked response must omit material and locators the recipient cannot receive.

## Field guide

- `egress` — `ai.egress.json`
- `request_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-request.json`
- `sentinel_profile` — `.ai.system.logic/ai.MEMORY_STATE_ORCHESTRATION.json`
- `correlation` — Echo the ingress request ID when established. If unavailable, record the unresolved condition in its place.
- `required_fields`
  - `request_id`
  - `outcome`
  - `disclosure_decision`
  - `handoff`
- `evidence_form`
  - `versioned_content`
    - `repository`
    - `commit_sha`
    - `path_or_selector`
  - `live_record`
    - `stable_locator`
    - `observed_at`
- `disclosure_rule` — Check each answer and evidence reference against the recipient boundary. Omit withheld content and any locator or metadata that would reveal it.
- `handoff_rule` — Return control to the calling AI with the permitted next step and the shareable request context. A retry or substituted reference requires a new resolution under the applicable contract.
- `outcomes`
  - `answered`
    - `requires`
      - `answer`
      - `evidence_references`
    - `next` — `return_cited_answer`
  - `lookup_required`
    - `requires`
      - `lookup_steps`
      - `unresolved_conditions`
    - `next` — `describe_authorized_evidence_lookup`
  - `clarification_required`
    - `requires`
      - `unresolved_conditions`
    - `next` — `request_target_or_context`
  - `blocked`
    - `requires`
      - `unresolved_conditions`
      - `disclosure_decision`
    - `next` — `stop_dependent_lookup_or_disclosure`
- `request_outcome_mapping`
  - `accepted`
    - `answered`
    - `lookup_required`
    - `blocked`
  - `invalid_input`
    - `blocked`
  - `missing_context`
    - `clarification_required`
  - `denied_access`
    - `blocked`
  - `unresolved_reference`
    - `blocked`
