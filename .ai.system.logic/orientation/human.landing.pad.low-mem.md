# AI landing germ

Load the route the current request needs. The pinned seed identifies where the germ came from. The live ingress route identifies where to continue.

[Source JSON](../../ai.landing.pad.low-mem.json)

Record identity · kind `ai_low_memory_landing_pad` · version `1.0` · mode `reference_only`

## How to use this record

Use the germ for the first AI read. Load the route needed for the current request.

The seed reference is provenance. Read the named file at its pinned commit when checking the derivation. The current route is separate. If it cannot resolve, report the missing reference and stop the dependent step.

## Field guide

- `repository` — `alia-june/this-repository-machine-interface`
- `purpose` — Orient an AI to a repository request with a small initial read.
- `first_step` — Read only the route needed for the current request. Use the full landing pad when broader discovery or orientation is needed.
- `routes`
  - `full_orientation` — `ai.landing.pad.json`
  - `request_admission` — `ai.ingress.json`
  - `operation_and_handoff` — `ai.launch.pad.json`
  - `response_and_disclosure` — `ai.egress.json`
- `growth_role` — `germ`
- `source_seed`
  - `role` — `heuristic_json_seed`
  - `repository` — `alia-june/this-repository-machine-interface`
  - `revision` — `446afb2546bd8f9bace360a4b66f65554a088b6c`
  - `path` — `ai.landing.pad.json`

## Direct record references

- [ai.egress.json](../../ai.egress.json) · [Human companion](human.egress.md)
- [ai.ingress.json](../../ai.ingress.json) · [Human companion](human.ingress.md)
- [ai.landing.pad.json](../../ai.landing.pad.json) · [Human companion](human.landing.pad.md)
- [ai.launch.pad.json](../../ai.launch.pad.json) · [Human companion](human.launch.pad.md)
- [ai.landing.pad.json](https://github.com/alia-june/this-repository-machine-interface/blob/446afb2546bd8f9bace360a4b66f65554a088b6c/ai.landing.pad.json) at 446afb2
