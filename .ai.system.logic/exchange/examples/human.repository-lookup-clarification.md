# Lookup example requiring clarification

The request leaves the repository ambiguous. The response preserves the request ID and asks for the repository before attempting the lookup.

[Source JSON](ai.repository-lookup-clarification.json)

Record identity · kind `repository_lookup_exchange_example` · version `1.0` · mode `reference_only`

## How to use this record

Trace what happens when a well-formed request has no unique repository target.

The missing context prevents a dependent lookup. The response preserves correlation, records the unresolved condition, and gives the caller one question to resolve the target.

## Field guide

- `request_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-request.json`
- `response_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-response.json`
- `request`
  - `request_id` — `repository-lookup-clarification`
  - `operation` — `locate_documentation`
  - `query` — Where does the repo define its naming rules?
- `ingress_outcome` — `missing_context`
- `response`
  - `request_id` — `repository-lookup-clarification`
  - `outcome` — `clarification_required`
  - `unresolved_conditions`
    - `Entry 1`
      - `sentinel` — `SENTINEL_UNRESOLVED`
      - `scope` — `repository_target`
      - `detail` — No unique repository is established by the request or available context.
  - `disclosure_decision`
    - `status` — `no_evidence_disclosed`
    - `basis` — The repository target is unresolved.
  - `handoff`
    - `recipient` — `calling_ai`
    - `next` — `request_target_or_context`
    - `question` — Which repository should I look in?

## Direct record references

- [ai.repository-lookup-request.json](../contracts/ai.repository-lookup-request.json) · [Human companion](../contracts/human.repository-lookup-request.md)
- [ai.repository-lookup-response.json](../contracts/ai.repository-lookup-response.json) · [Human companion](../contracts/human.repository-lookup-response.md)
