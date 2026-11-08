# Lattice — Recursive project harness audit

**Execution date:** 2026-11-08 (UTC in JSON evidence)  
**Target:** `Lattice_Python_Front_API_Hardening_Strict_Loose_Torture_v0_7_1.zip`  
**Disposition:** `LOCAL_VERIFIED_IN_SCOPE / CANDIDATE_ONLY / NOT_ADMITTED / NOT_PUBLISHED`  
**Final audit:** **PASS**. The original source package was not changed. This is local evidence, not independent attestation or production certification.

## Verified findings

- **167/167 original harness tests passed:** baseline 122, strict 20, loose 10, torture 15. Failures 0, errors 0. The torture suite uses repeated deterministic subcases inside its 15 test methods; the method count is not the iteration count.
- **Recursive inventory:** 178 packaged files examined. 177 files had manifest digests; the manifest itself is the remaining file and cannot include its own stable digest. No manifested-file content changed.
- **Python sources:** 40 files parsed and compiled in memory. No syntax errors. **JSON:** 36 JSON files decoded with duplicate-key checks; **JSONL:** 9,076 records decoded across 5 files.
- **Bitmap/matrix parity:** all 41 bitmap planes and all **1,928,476** row-by-plane cells compared exhaustively; no disagreements. All **47,036** legacy `u64` flag rows matched matrix encoding.
- **Independent regeneration:** 51 instrument-generated files matched the packaged outputs byte-for-byte. The atomic snapshot lock was regenerated outside the source tree and matched the packaged lock exactly.
- **Executable interfaces:** 10 standalone smoke probes passed, followed by 18 separate coverage-traced CLI executions (atomic, molecular, glue, adapter, Universal JSON, front API and tooling); all passed.
- **Coverage:** 86.94% combined statement/branch coverage, 90.59% statement coverage, 77.67% branch coverage. This is measured Python code coverage, not verified behavioral completeness.

## Source-level coverage by component

| Source | Combined coverage | Unexecuted lines |
|---|---:|---:|
| `atomic/core.py` | 86.9% | 17 |
| `molecular/core.py` | 81.4% | 28 |
| `glue/core.py` | 80.4% | 47 |
| `adapter/core.py` | 90.8% | 8 |
| `universal_json/core.py` | 87.5% | 16 |
| `front_api/core.py` | 91.4% | 7 |
| `front_api/http.py` | 87.0% | 24 |
| `tooling/instrument.py` | 89.6% | 23 |
| `tooling/matrix_io.py` | 80.9% | 15 |
| `secondary/interface.py` | 100.0% | 0 |

A total of 246 statements and 230 branches remain uncovered in the measured Python sources, including the test harness itself. Unexecuted lines are listed in `coverage_expanded.json`.

## Harness defects corrected during this task

1. The first recursive probe invoked `front_api.cli --file ...`, although the documented CLI accepts JSON **from stdin**. That is a defect in the new audit driver, not the project. The probe was corrected and all 10 smoke tests passed.
2. The supplementary coverage invocations initially omitted `--branch`, which prevented them from appending to the existing branch-coverage data file. The runner was corrected; 18/18 extended CLI traces then passed and expanded coverage was exported successfully.

These initial failed audit attempts are not counted as project failures; their failure cause and corrections are stated rather than suppressed. No project implementation changes were made.

## Scope and remaining gaps

- Python was exercised on **Linux-6.18.57-x86_64-with-glibc2.41** with **Python 3.13.5**. Windows PowerShell launchers were inventoried, **not run**. Native Windows behavior remains unverified.
- The advanced secondary I/O layer is intentionally non-executing. Import/describe/refusal tests do not establish that advanced behavior exists.
- HTTP checks use loopback only. They do not demonstrate authentication, deployment containment, remote access security, or production-grade load resistance.
- No cryptographic Crete interlock, SafeCopy filesystem authority, independent attester, admission/publication service, NLP, orchestrator, or GPU execution was tested or asserted.
- A digest match establishes byte consistency, not authenticated authorship or external provenance.
- Data/structural correctness does not establish semantic correctness or authorization. Native `null` and floats retain the project's candidate restrictions, not arbitrary generic JSON support.

## Reproduce

Requirements: Python 3.10+ and the `coverage` Python package (the Lattice implementation itself is standard-library Python). Keep the original ZIP available locally.

Windows PowerShell:

```powershell
.\Run-RecursiveHarness.ps1 -ProjectZip 'Lattice_Python_Front_API_Hardening_Strict_Loose_Torture_v0_7_1.zip'
```

POSIX:

```sh
./Run-RecursiveHarness.sh Lattice_Python_Front_API_Hardening_Strict_Loose_Torture_v0_7_1.zip
```

The runner extracts a separate working copy, executes the original suites, parses all files, compares all matrix cells, traces CLI operations, regenerates instrumentation outside the project, and records source-digest continuity. Outputs appear under `recursive-run/evidence`.

## Evidence index

- `RECURSIVE_HARNESS_FINAL_RESULT.json`: top-level machine-readable verdict and counts.
- `recursive_summary.json`: recursive manifest, bitmap, smoke, and original suite results.
- `recursive_cli_extension.json`: full CLI and regenerated-artifact parity results.
- `coverage_expanded.json`: per-file line and branch coverage details.
- `file_inventory.json`: one entry for every packaged file.
- `import_graph.json`: syntactic imports and out-of-manifest classification.
- `suite/HARDENING_RESULT_v0_7_1.json`: the original baseline/strict/loose/torture results for this run.
- `hardening_coverage.log`, `cli_*.log`, `trace_*.log`: actual test/process transcripts.

**No GitHub publication, source modification, or admitted release resulted from this task.**