# Launch pad

Use the admitted request to select the applicable operation and evidence requirements. Hand findings or unresolved conditions to egress. Project-seed extraction requires its own approved scope.

[Source JSON](../../ai.launch.pad.json)

Record identity · kind `ai_launch_pad` · version `1.3` · mode `reference_only`

## How to use this record

Start after admission and identify the operation and the evidence it requires.

For versioned documentation, resolve the selected revision to a commit before citing it. Carry findings, lookup steps, or unresolved conditions into egress. Project-seed extraction is a separate proposal with its own source, purpose, authority, boundary, and validation.

## Field guide

- `steps`
  - `Entry 1`
    - `id` — `load_landing_pad`
    - `instruction` — Resolve landing_pad relative to this file and verify the supported schema version.
  - `Entry 2`
    - `id` — `discover_repositories`
    - `instruction` — Use the landing pad discovery endpoint, pagination, and owner filter with the client existing GitHub access.
  - `Entry 3`
    - `id` — `select_repository`
    - `instruction` — Select an accessible repository relevant to the current task. Ask for clarification if the target is ambiguous.
  - `Entry 4`
    - `id` — `read_project_sources`
    - `instruction` — Use the task's requested revision, or resolve the selected repository's default branch to a commit. At that revision, read applicable repository instructions and documentation for the task.
  - `Entry 5`
    - `id` — `record_context`
    - `instruction` — Record the selected repository's full name, commit SHA, and paths consulted.
- `authorization`
  - `scope` — `read_only_orientation`
  - `on_missing_access` — Report the access limitation and stop the affected orientation step.
  - `beyond_orientation` — Follow the user's scope and approval requirements and the selected project's applicable instructions before proceeding.
- `operation_rules`
  - `classification` — Identify each operation in the chat request and map it to a manifest intent when applicable. Preserve the order of distinct operations.
  - `target` — Use the repository and revision identified by the user or chat. Ask when ambiguity affects the answer.
  - `evidence` — For each operation, identify the evidence required and describe the lookup steps. Use evidence already available to the calling AI. Cite the source and revision for each supported answer.
  - `missing_evidence` — State what is missing and how an authorized caller can obtain it. Separate a verified answer from a lookup plan.
  - `requested_change` — Describe the requested action, relevant sources, and applicable approval. Carry the request into the handoff.
  - `systems_deployment`
    - `intent` — `plan_systems_deployment`
    - `guide` — `.ai.system.logic/human.SYSTEMS_DEPLOYMENT.md`
    - `steps`
      - Surface the instrument-before-use warning.
      - Identify the intended workplace task and one declared tool.
      - Use the manifest evidence paths to distinguish observed tool behavior from proposed controller, adapter, and glue work.
      - Identify the evidence and receiving-workplace bindings required for seed ejection.
      - Return findings and lookup steps to the calling AI using the existing handoff.
  - `repository_lookup`
    - `intents`
      - `locate_documentation`
      - `locate_code`
      - `check_current_state`
    - `request_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-request.json`
    - `response_contract` — `.ai.system.logic/exchange/contracts/ai.repository-lookup-response.json`
    - `sentinel_contract` — `.ai.system.logic/state/contracts/ai.sentinel-transitions.json`
    - `evidence_rule` — Use the request contract to establish the target and source identity. Use the response contract to determine the evidence form and disclosure boundary.
- `handoff`
  - `next` — `return_control_to_calling_ai`
  - `fields`
    - `request`
    - `operations`
    - `repository`
    - `revision`
    - `answers`
    - `sources`
    - `lookup_steps`
    - `open_questions`
    - `approval_requirements`
  - `continuation` — The calling AI resumes the chat under the user instructions and applicable repository rules.
- `interface_boundary` — These records describe decisions and evidence paths. The interface has no executable actions or tool bindings.
- `landing_pad` — `ai.landing.pad.json`
- `project_seed_extraction`
  - `status` — `requires_separate_scope`
  - `guide` — `.ai.system.logic/human.SYSTEMS_DEPLOYMENT.md`
  - `section` — `project-seed-extraction`
  - `method` — `transmigration_and_decomposting`
  - `scope_inputs`
    - selected project and pinned source revision
    - intended seed and its use
    - extraction boundary
    - applicable authority and explicit approval
    - required evidence and validation
  - `handoff` — Return the proposed scope and unresolved requirements to the calling AI before extraction.

## Direct record references

- [ai.repository-lookup-request.json](../exchange/contracts/ai.repository-lookup-request.json) · [Human companion](../exchange/contracts/human.repository-lookup-request.md)
- [ai.repository-lookup-response.json](../exchange/contracts/ai.repository-lookup-response.json) · [Human companion](../exchange/contracts/human.repository-lookup-response.md)
- [human.SYSTEMS_DEPLOYMENT.md](../human.SYSTEMS_DEPLOYMENT.md)
- [ai.sentinel-transitions.json](../state/contracts/ai.sentinel-transitions.json) · [Human companion](../state/contracts/human.sentinel-transitions.md)
- [ai.landing.pad.json](../../ai.landing.pad.json) · [Human companion](human.landing.pad.md)
