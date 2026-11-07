# Egress

Correlate the response to the request and select the appropriate outcome. Check recipient authority before returning evidence, content, or a locator.

[Source JSON](../../ai.egress.json)

Record identity · kind `egress_contract` · version `1.0` · mode `reference_only`

## How to use this record

Use the response boundary to form a correlated result for the calling AI.

Echo the request ID when it is known. A supported answer carries shareable evidence. Missing evidence can produce lookup steps, missing context can produce a clarification, and a failed boundary can block the response. A locator that would reveal withheld content is itself subject to the disclosure check.

## Field guide

- `landing_pad` — `ai.landing.pad.json`
- `launch_pad` — `ai.launch.pad.json`
- `handoff`
  - `request`
  - `answers`
  - source identities and revisions
  - evidence references
  - unresolved conditions
  - next permitted operation
- `disclosure`
  - Apply the recipient boundary before returning content or evidence.
  - For repository lookup, follow the referenced response contract for correlation, evidence, and outcome forms.
  - Return control to the calling AI with the permitted next step.
- `ingress_contract` — `ai.ingress.json`
- `memory_state_orchestration` — `.ai.system.logic/ai.MEMORY_STATE_ORCHESTRATION.json`
- `response_envelope`
  - `required`
    - `request_id`
    - `outcome`
    - `disclosure_decision`
    - `handoff`
  - `fields`
    - `request_id` — Echo the ingress identifier when it was established. Use an explicit unresolved condition when no identifier was available.
    - `outcome` — One outcome for the response, with per-operation findings when the request contains multiple operations.
    - `answers` — Source-backed findings, with source identity and pinned revision.
    - `evidence_references` — Disclosable locations for supporting evidence.
    - `lookup_steps` — How an authorized caller can obtain missing evidence.
    - `unresolved_conditions` — Applicable sentinels, affected scope, and permitted follow-up.
    - `disclosure_decision` — Record what was permitted or withheld. Omit withheld content and any evidence references that would reveal it.
    - `handoff` — Return control to the calling AI with the next permitted step.
- `outcomes`
  - `answered`
    - `condition` — Accepted evidence supports a disclosable answer.
    - `include`
      - `answers`
      - `evidence_references`
  - `lookup_required`
    - `condition` — The request is understood and needed evidence is unavailable.
    - `include`
      - `lookup_steps`
      - `unresolved_conditions`
  - `clarification_required`
    - `condition` — The target or requested operation needs clarification.
    - `include`
      - `unresolved_conditions`
      - `handoff`
  - `blocked`
    - `condition` — Validation, authority, access, or disclosure prevents a substantive response.
    - `include`
      - `disclosure_decision`
      - `unresolved_conditions`
      - `handoff`
- `ingress_outcome_mapping`
  - `accepted`
    - `answered`
    - `lookup_required`
    - `blocked`
  - `missing_context`
    - `clarification_required`
  - `invalid_input`
    - `blocked`
  - `denied_access`
    - `blocked`
- `repository_lookup_response_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-response.json`

## Direct record references

- [ai.MEMORY_STATE_ORCHESTRATION.json](../ai.MEMORY_STATE_ORCHESTRATION.json) · [Human companion](../human.MEMORY_STATE_ORCHESTRATION.md)
- [ai.repository-lookup-response.json](../exchange/contracts/ai.repository-lookup-response.json) · [Human companion](../exchange/contracts/human.repository-lookup-response.md)
- [ai.site-lexicon.json](../terminology/lexicons/ai.site-lexicon.json), selector `/construct/block-2/arbitrary-data/terms/context_reference` · [Human companion](../terminology/lexicons/human.site-lexicon.md)
- [ai.site-lexicon.json](../terminology/lexicons/ai.site-lexicon.json), selector `/construct/block-2/arbitrary-data/terms/egress` · [Human companion](../terminology/lexicons/human.site-lexicon.md)
- [ai.site-lexicon.json](../terminology/lexicons/ai.site-lexicon.json), selector `/construct/block-2/arbitrary-data/terms/launch_pad` · [Human companion](../terminology/lexicons/human.site-lexicon.md)
- [ai.site-lexicon.json](../terminology/lexicons/ai.site-lexicon.json), selector `/construct/block-2/arbitrary-data/terms/sentinel` · [Human companion](../terminology/lexicons/human.site-lexicon.md)
- [ai.ingress.json](../../ai.ingress.json) · [Human companion](human.ingress.md)
- [ai.landing.pad.json](../../ai.landing.pad.json) · [Human companion](human.landing.pad.md)
- [ai.launch.pad.json](../../ai.launch.pad.json) · [Human companion](human.launch.pad.md)
