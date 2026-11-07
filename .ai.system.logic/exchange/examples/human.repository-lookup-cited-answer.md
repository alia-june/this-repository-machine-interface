# Lookup example with a cited answer

The question asks where the site defines Crete naming. The response uses the same request ID and cites the encoding notes at a pinned commit.

[Source JSON](ai.repository-lookup-cited-answer.json)

Record identity · kind `repository_lookup_exchange_example` · version `1.0` · mode `reference_only`

## How to use this record

Trace this pair from an admitted documentation lookup to a cited answer.

Compare both request IDs, resolve the cited encoding notes at the recorded commit, and check that the answer is supported by that file. The evidence locator is part of the response only because the example marks it as disclosable.

## Field guide

- `request_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-request.json`
- `response_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-response.json`
- `request`
  - `request_id` — `repository-lookup-cited-answer`
  - `operation` — `locate_documentation`
  - `query` — Where does this site define its Crete naming rules?
  - `target`
    - `repository` — `alia-june/this-repository-machine-interface`
    - `revision` — `b5a4e8cf7a2524a73a96855952ffef653c55f0d0`
- `ingress_outcome` — `accepted`
- `response`
  - `request_id` — `repository-lookup-cited-answer`
  - `outcome` — `answered`
  - `answer` — The Crete record type section of the encoding notes defines context-index, context-records, and the nested context reference key.
  - `evidence_references`
    - `Entry 1`
      - `repository` — `alia-june/this-repository-machine-interface`
      - `commit_sha` — `b5a4e8cf7a2524a73a96855952ffef653c55f0d0`
      - `path_or_selector` — `.ai.system.logic/ENCODING_NOTES.md`
  - `disclosure_decision`
    - `status` — `permitted`
    - `basis` — The cited repository file is public.
  - `handoff`
    - `recipient` — `calling_ai`
    - `next` — `return_cited_answer`

## Direct record references

- [ai.repository-lookup-request.json](../contracts/ai.repository-lookup-request.json) · [Human companion](../contracts/human.repository-lookup-request.md)
- [ai.repository-lookup-response.json](../contracts/ai.repository-lookup-response.json) · [Human companion](../contracts/human.repository-lookup-response.md)
- [ENCODING_NOTES.md](https://github.com/alia-june/this-repository-machine-interface/blob/b5a4e8cf7a2524a73a96855952ffef653c55f0d0/.ai.system.logic/ENCODING_NOTES.md) at b5a4e8c
