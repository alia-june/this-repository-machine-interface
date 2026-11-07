# Repository lookup project germ

Start with one documentation lookup and an unresolved target. Resolve the pinned seed for the contracts. Ask for clarification when the target is ambiguous and preserve the germ when a required reference fails.

[Source JSON](ai.repository-lookup-project-germ.json)

## How to use this record

Begin with one documentation question and resolve only the contracts needed for that step.

The initial target condition is unresolved. Ask for a unique repository if context is insufficient. If the seed or a required contract cannot be resolved, preserve the committed germ and request context for handoff.

## Field guide

- `status` — `illustrative`
- `germ_id` — `read_only_repository_lookup_germ`
- `source_seed`
  - `repository` — `alia-june/this-repository-machine-interface`
  - `revision` — `76f2c20c3a94d5dd788f989de1cf6f35e143d98d`
  - `path` — `.ai.system.logic/construction/examples/ai.repository-lookup-project-seed.json`
  - `selector` — `/construct/block-2/arbitrary-data`
- `first_goal` — Answer one documentation question for a uniquely resolved repository.
- `initial_context`
  - `operation` — `locate_documentation`
  - `target_condition` — `SENTINEL_UNRESOLVED`
- `first_steps`
  - Resolve the seed and its request_contract slot before admitting the lookup.
  - Establish a unique repository and pin versioned evidence before relying on it.
  - Resolve the response_contract slot when preparing a correlated and disclosable handoff.
- `branches`
  - `cited_lookup`
    - `requires` — A unique target and accepted disclosable evidence at a pinned revision.
    - `outcome` — `answered`
  - `missing_or_ambiguous_target`
    - `condition` — `SENTINEL_UNRESOLVED`
    - `outcome` — `clarification_required`
    - `next` — Ask for the target repository.
  - `unresolved_reference`
    - `next` — Stop the dependent lookup and report the unresolved reference.
    - `preserve`
      - committed germ
      - request context
