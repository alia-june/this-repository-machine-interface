# Lattice — Python Front API v0.7

**2026-11-08 | LOCAL_REFERENCE_IMPLEMENTATION | NOT_CANONICAL | NOT_ADMITTED | NOT_PUBLISHED**

This candidate adds a single versioned **Python front interface**, a **JSON CLI**, and a **loopback-only HTTP transport** over the existing v0.6 Universal JSON, mandatory representation adapter, ordinary glue, molecular, and atomic/bitmap-matrix implementation.

## Architectural roles

```text
Python caller / JSON CLI / HTTP client on 127.0.0.1
   |  strict versioned request, no native null, no arbitrary execution
   v
front_api (Python facade / response normalization / finite registry)
   |-- UNIVERSAL_JSON    BUILD / VERIFY / LIST / READ / PROJECT
   |-- FRONT             DESCRIBE / INGRESS_MAP
   |-- ADAPTER           ADAPT / PACK_FRAME / UNPACK_FRAME
   |-- ATOMIC            DISPATCH (15 pinned read/copy-only operations)
   |-- MOLECULAR         PROCESS (existing bounded pure request)
   `-- GLUE              PROCESS (existing bounded pure request)
                          |
                          v
                  Pinned Lattice construct
      leading wrapper | arbitrary middle data | trailing wrapper
```

**Atomic, molecular and glue require an explicitly loaded pinned snapshot.** Basic Universal JSON/adapter operations run without the snapshot. The front layer does not reinterpret `$cry-ref`, install Crete, implement SafeCopy, expose NLP, or provide an orchestrator.

## Quick start — direct Python

```python
from front_api import LatticeFrontAPI

api = LatticeFrontAPI.from_package('.')  # Optional engine pins verification
result = api.ingress({
    'generic': {'kind': 'record'},
    'data': [10, 20],
    'meta': {'note': 'inert caller metadata'},
    'other': {'$sentinel': 'SENTINEL_UNRECORDED'},
})
assert result['status'] == 'SUCCEEDED'
bundle = result['result']
exact = api.call('UNIVERSAL_JSON', 'READ',
                 {'bundle': bundle, 'name': 'data', 'path': [1]})
print(exact['result']['value'])  # 20
```

Channel names are labels, not semantic schemas, privileges, physical block indices or special classes. No automatic merge occurs.

## Quick start — local HTTP

```powershell
# Execute from this package directory. Python 3.10+; stdlib only.
.\Run-FrontAPI.ps1 -Port 8765 -WithEngine
```

Local routes:

| HTTP | Path | Purpose |
| --- | --- | --- |
| GET | `/health` | Local status; no guarantee of production health |
| GET | `/v1/describe` | Registered operations, limits, capability restrictions |
| POST | `/v1/ingress` | Direct named-input map; builds separate JSON channels |
| POST | `/v1/execute` | Typed generic front request with registered family/operation |

Example PowerShell client:

```powershell
$payload = @{
  protocol = 'LATTICE_PYTHON_FRONT_API_CANDIDATE_V0_1'
  request_id = 'windows.ingress.001'
  inputs = @{
    generic = @{ kind = 'record' }
    data = @(1, 2, 3)
    meta = @{ note = 'untrusted caller data' }
  }
} | ConvertTo-Json -Depth 32
Invoke-RestMethod -Uri 'http://127.0.0.1:8765/v1/ingress' `
  -Method Post -ContentType 'application/json' -Body $payload
```

The reference HTTP server binds **only** `127.0.0.1`, refuses browser `Origin` requests and unsupported methods, has no CORS grants, and cannot be started on `0.0.0.0`. **It does not implement authentication or authorization. It is not suitable for remote or untrusted multi-user deployment.** Local processes can still connect, so only run it on a trusted local host.

## Quick start — JSON CLI

```powershell
Get-Content .\examples\front_api\front-describe.json -Raw | python -m front_api.cli
Get-Content .\examples\front_api\front-atomic-byte.json -Raw | python -m front_api.cli --engine
Get-Content .\examples\front_api\front-glue.json -Raw | python -m front_api.cli --engine
```

The CLI always writes one JSON result. It exits nonzero on refusal. No command execution is exposed by request bodies.

## Validation

```powershell
.\Run-FrontValidation.ps1
# Cross-platform:
python -m unittest discover -s tests -v
python -m front_api.cli --describe
```

See `TEST_RESULTS_v0_7.txt` for exact test count, environment, and checks. Independent example calls are in `examples/front_api/`.

## Boundaries

- **No native JSON `null`**; explicit typed sentinels required for unresolved or unrecorded values.
- **Integers only** in the inherited v0.6 numeric profile. Floats are refused; no full RFC 8259 numeric-fidelity claim.
- JSON keys must be unique, UTF-8 strict; no inferred meaning or schema conversion.
- Mandatory adapter slot; only preexisting exact pass-through or canonical round-trip modes.
- Per-request and response bounds are 1 MiB at the front interface. Universal channel count <= 32.
- SHA-256 gives internal consistency, not authentication, provenance proof, authorization or independently admitted data.
- Snapshot pins are local consistency checks, not an independent trusted attester.
- `FRONT` and HTTP interfaces return `NONE_GRANTED`, even when metadata says otherwise.
- No new source writes, file mutation, networking to remote hosts, code evaluation, dynamic imports from payload, or workflow orchestration.
- Later advanced I/O remains in `secondary/` as a nonexecuting scaffold. Ordinary glue **is not Crete**.
- Snapshot-backed commands preserve each subsystem's original contract, including molecular's own identity adapter syntax; the facade does not silently rewrite it.

The original 47,036-byte Lattice JSON and generated matrix remain unchanged from v0.6. No GitHub push or remote deployment was performed.

Read `docs/FRONT_API_CONTRACT.md` for exact request envelopes and refusal semantics; see `docs/CLAIM_LEDGER_v0_7.md` for scope.

## v0.7.1 hardening harness

The **strict / loose / torture** extension is documented in `docs/HARDENING_CONTRACT_v0_7_1.md`. Run `python -m hardening.run --mode all` or `./Run-Hardening.sh all 20261108` (Windows: `.\Run-Hardening.ps1 -Mode all`). It generates deterministic evidence in `artifacts/`. Loose changes accepted *input data forms*, never authority, validation, or execution permissions. This remains a local reference candidate without authentication; see `docs/CLAIM_LEDGER_HARDENING_v0_7_1.md`.