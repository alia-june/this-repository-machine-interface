# JSON reference and composition

Resolve the pinned repository, revision, path, and optional selector. Place values in distinct named slots and retain provenance. An unresolved reference, invalid selector, or duplicate slot stops the dependent composition.

[Source JSON](ai.json-reference-composition.json)

## How to use this record

Resolve each input at the declared revision before assembling a candidate.

Use the selector to choose the value within the resolved JSON. Check all slot names for exact duplicates. Keep the input identities and selected values with the candidate so another reader can reconstruct the same view. A failed attempt preserves the source and last committed JSON.

## Field guide

- `reference`
  - `required_fields`
    - `repository`
    - `revision`
    - `path`
  - `repository` — Full owner and repository name.
  - `revision` — Pinned commit SHA.
  - `path` — Repository-relative JSON file path at the pinned commit.
  - `selector` — Optional JSON Pointer within the parsed document. If omitted, select the whole document.
  - `verify` — Resolve the declared revision, path, and selector before accepting the input. Verify access and provenance for the dependent operation.
- `composition`
  - `input_form` — An ordered list of entries with a slot name and a reference.
  - `slot_rule` — Each slot name must be nonempty and unique by case-sensitive equality. Reject duplicates before assembling a candidate.
  - `assembly` — Place each selected value into its declared slot. Preserve the value as selected and carry its repository, revision, path, and selector as slot provenance.
  - `result` — A separate candidate view with named slots and provenance. Accept the candidate only when all required inputs resolve.
- `conditions`
  - `unresolved_reference`
    - `trigger` — Repository, pinned revision, or declared file cannot be resolved or accessed.
    - `action` — `stop_dependent_composition`
  - `invalid_selector`
    - `trigger` — The declared selector is malformed or cannot identify a value in the resolved JSON.
    - `action` — `stop_dependent_composition`
  - `duplicate_slot`
    - `trigger` — Two entries declare the same slot name.
    - `action` — `stop_dependent_composition`
- `preservation`
  - `survivor` — `last_committed_json`
  - `source_policy` — Preserve each source record and its identity.
  - `failure_record` — Record the condition, affected input or slot, and available evidence separately from the survivor.
  - `handling_owner` — `surrounding_system`
