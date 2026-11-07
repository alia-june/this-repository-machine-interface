# Heuristic landing pad

Use the expanded seed to establish repository identity and find the front door. A compact AI germ can identify a pinned copy of this seed. Follow the live route for the current request.

[Source JSON](../../ai.landing.pad.json)

Record identity · kind `ai_landing_pad` · version `1.3` · mode `reference_only`

## How to use this record

Start here when the caller is a heuristic engine or needs the expanded orientation record.

Read the repository identity before carrying target context into ingress. Discovery is useful when a request spans repositories, but the result still needs a unique target and the applicable authority. The human route is an orientation aid and does not admit a request.

## Field guide

- `repository` — `alia-june/this-repository-machine-interface`
- `purpose` — Machine-readable man-machine interface for orienting AI to repository requests in chat.
- `discovery`
  - `provider` — `github`
  - `owner_login` — `alia-june`
  - `authenticated_endpoint` — https://api.github.com/user/repos?affiliation=owner,collaborator,organization_member&per_page=100
  - `public_endpoint` — https://api.github.com/users/alia-june/repos?per_page=100
  - `pagination` — Follow GitHub Link headers with rel=next until exhausted.
  - `owner_filter`
    - `field` — `owner.login`
    - `equals` — `alia-june`
    - `case_sensitive` — `False`
  - `access` — Use the client's existing GitHub access. Results are limited to repositories visible to that client.
- `audience` — `machine`
- `human_entrypoint` — `.ai.system.logic/human.README.md`
- `intent_index`
  - `discover_repository`
    - owner-scoped repository metadata
  - `locate_documentation`
    - repository instructions
    - `README`
    - project documentation
  - `locate_code`
    - source tree
    - `definitions`
    - call sites
  - `check_current_state`
    - branch or commit metadata
    - relevant issue, pull request, or check records
  - `request_change`
    - current implementation
    - applicable instructions
    - user approval scope
  - `plan_systems_deployment`
    - Systems Deployment guide
    - tool and controller contracts
    - validation evidence
    - seed and receiving workplace bindings
- `systems_deployment`
  - `guide` — `.ai.system.logic/human.SYSTEMS_DEPLOYMENT.md`
  - `warning`
    - `severity` — `warning`
    - `policy` — `instrument_before_use`
    - `message` — Repeated mechanical work delegated to an LLM orchestrator consumes model credits. Fit deterministic microcontrollers, adapters, and glue before use.
  - `worked_example`
    - `id` — `mill_factory_create_batch`
    - `section` — `worked-example-with-mill-factory`
    - `status` — `source_traced_reference`
    - `source_repository` — `alia-june/xOSG-prototype`
    - `source_revision` — `7a156a314e11e6e4973ab6da23bef32acee81314`
    - `evidence_paths`
      - `mill-factory/New-MillBatch.ps1`
      - `mill-factory/Test-MillBatch.ps1`
      - `Instrumentation/mill-controllers/creation/controller.py`
      - `Instrumentation/PUBLICATION_VALIDATION.md`
  - `workplace_seed`
    - `status` — `public_review`
    - `repository` — `alia-june/xOSG-prototype`
    - `revision` — `a73a88a55d605f8d333ad1a53ca5a9f634023a15`
    - `path` — `docs/systems-deployment/seeds/mars-workspace/WORKSPACE_SEED.json`
    - `review_url` — `https://github.com/alia-june/xOSG-prototype/pull/16`
  - `memory_state_orchestration`
    - `path` — `.ai.system.logic/ai.MEMORY_STATE_ORCHESTRATION.json`
    - `mode` — `reference_only`
    - `direction` — `sentinel_contract_determines_capabilities`
- `orientation_directory` — `.ai.system.logic`
- `launch_pad` — `ai.launch.pad.json`
- `routes`
  - `request_admission` — `ai.ingress.json`
  - `operation_and_handoff` — `ai.launch.pad.json`
  - `response_and_disclosure` — `ai.egress.json`

## Direct record references

- [ai.MEMORY_STATE_ORCHESTRATION.json](../ai.MEMORY_STATE_ORCHESTRATION.json) · [Human companion](../human.MEMORY_STATE_ORCHESTRATION.md)
- [human.README.md](../human.README.md)
- [human.SYSTEMS_DEPLOYMENT.md](../human.SYSTEMS_DEPLOYMENT.md)
- [ai.egress.json](../../ai.egress.json) · [Human companion](human.egress.md)
- [ai.ingress.json](../../ai.ingress.json) · [Human companion](human.ingress.md)
- [ai.launch.pad.json](../../ai.launch.pad.json) · [Human companion](human.launch.pad.md)
- [PUBLICATION_VALIDATION.md](https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/PUBLICATION_VALIDATION.md) at 7a156a3
- [controller.py](https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/mill-controllers/creation/controller.py) at 7a156a3
- [New-MillBatch.ps1](https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/mill-factory/New-MillBatch.ps1) at 7a156a3
- [Test-MillBatch.ps1](https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/mill-factory/Test-MillBatch.ps1) at 7a156a3
- [WORKSPACE_SEED.json](https://github.com/alia-june/xOSG-prototype/blob/a73a88a55d605f8d333ad1a53ca5a9f634023a15/docs/systems-deployment/seeds/mars-workspace/WORKSPACE_SEED.json) at a73a88a
