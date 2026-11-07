# Lookup example blocked at disclosure

The synthetic request is admitted, but the recipient cannot receive the evidence. The response records the disclosure decision and omits the withheld material and its locator.

[Source JSON](ai.repository-lookup-disclosure-blocked.json)

Record identity · kind `repository_lookup_exchange_example` · version `1.0` · mode `reference_only`

## How to use this record

Trace a synthetic disclosure failure after admission.

The recipient boundary prevents returning the supporting material. The response records the condition and the stop decision. The example leaves out both the answer and evidence locators.

## Field guide

- `request_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-request.json`
- `response_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-response.json`
- `request`
  - `request_id` — `repository-lookup-disclosure-blocked`
  - `operation` — `locate_documentation`
  - `query` — Can you share the supporting material for the requested repository finding?
  - `target`
    - `repository` — `alia-june/this-repository-machine-interface`
    - `revision` — `b5a4e8cf7a2524a73a96855952ffef653c55f0d0`
- `ingress_outcome` — `accepted`
- `response`
  - `request_id` — `repository-lookup-disclosure-blocked`
  - `outcome` — `blocked`
  - `unresolved_conditions`
    - `Entry 1`
      - `sentinel` — `SENTINEL_ACCESS_DENIED`
      - `scope` — `recipient_disclosure`
      - `detail` — The recipient lacks authority to receive the supporting material in this synthetic case.
  - `disclosure_decision`
    - `status` — `withheld`
    - `basis` — The recipient disclosure check failed.
  - `handoff`
    - `recipient` — `calling_ai`
    - `next` — `stop_dependent_lookup_or_disclosure`

## Direct record references

- [ai.repository-lookup-request.json](../contracts/ai.repository-lookup-request.json) · [Human companion](../contracts/human.repository-lookup-request.md)
- [ai.repository-lookup-response.json](../contracts/ai.repository-lookup-response.json) · [Human companion](../contracts/human.repository-lookup-response.md)
