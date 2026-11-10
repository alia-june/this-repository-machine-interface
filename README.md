```text
IF reader = heuristic engine THEN read ai.landing.pad.json.
ELSE IF reader = AI THEN read ai.landing.pad.low-mem.json.
ELSE continue with the human README.
IF a required reference fails to resolve THEN stop the dependent step AND report the unresolved reference.
```

[Heuristic engine landing pad](ai.landing.pad.json) · [AI landing germ](ai.landing.pad.low-mem.json)

# This Repository Machine Interface

Alia-June uses this interface as a shared front door for repository requests. A heuristic engine reads the expanded landing seed. An AI starts with the compact germ. Human readers can continue here.

A request enters through [ingress](ai.ingress.json), proceeds to the [launch pad](ai.launch.pad.json) when admitted, and returns through [egress](ai.egress.json). The worked read-only lookup shows how to establish a target and source revision, return a cited answer when evidence permits, and hand back clarification or a blocked outcome when needed.

The landing seed supplies the AI germ. A **project seed** is a separate extraction through transmigration and decomposting, with its own selected source, intended use, authority, and evidence.

Continue with the [human orientation guide](.ai.system.logic/human.README.md), or use the [project JSON map](.ai.system.logic/human.PROJECT_JSON_MAP.md) to find a specific record. Our developing technology is documented in [xOSG Prototype](https://github.com/alia-june/xOSG-prototype).

## Publication phase: Stage 0 site hydration

The current cross-repository effort is **Stage 0: completing public site hydration and publication of eligible theory and proof-of-concept material** following EOL simulation research. **Stage 1: evidence-bound programmatic rehydration of code through expert systems** is planned, with synthetic generative text restricted to a last-resort, separately reviewed candidate. The machine interface is an orientation and admission record, not proof that Stage 1 exists as a general runtime. [Public phase roadmap](https://github.com/alia-june/ethical-and-intellectual-theory/blob/main/research-ethics/EOL_SITE_HYDRATION_AND_REHYDRATION_ROADMAP.md). Private data is excluded from public release.

## Lattice Python API — staging and verification

**Candidate / not admitted / not canonical.** The [Lattice v0.7.1 staging index](https://github.com/alia-june/this-repository-machine-interface/blob/9c6730bb91dea4a747660e76988adcad4f7ab7df/staging/lattice-python-v0.7.1-recursive-2026-11-08/README.md) records the Python front API architecture, exact source checksums, and recursive test evidence. The source JSON template remains unchanged.

- [Python API project overview](https://github.com/alia-june/this-repository-machine-interface/blob/9c6730bb91dea4a747660e76988adcad4f7ab7df/staging/lattice-python-v0.7.1-recursive-2026-11-08/PROJECT_README_v0_7_1.md)
- [Recursive test report](https://github.com/alia-june/this-repository-machine-interface/blob/9c6730bb91dea4a747660e76988adcad4f7ab7df/staging/lattice-python-v0.7.1-recursive-2026-11-08/evidence/RECURSIVE_HARNESS_REPORT.md) and [machine-readable result](https://github.com/alia-june/this-repository-machine-interface/blob/9c6730bb91dea4a747660e76988adcad4f7ab7df/staging/lattice-python-v0.7.1-recursive-2026-11-08/evidence/RECURSIVE_HARNESS_FINAL_RESULT.json)
- [Source archive SHA-256 checksums](https://github.com/alia-june/this-repository-machine-interface/blob/9c6730bb91dea4a747660e76988adcad4f7ab7df/staging/lattice-python-v0.7.1-recursive-2026-11-08/SOURCE_SHA256SUMS.txt) and [upload checklist](https://github.com/alia-june/this-repository-machine-interface/blob/9c6730bb91dea4a747660e76988adcad4f7ab7df/staging/lattice-python-v0.7.1-recursive-2026-11-08/ARCHIVE_UPLOAD_GUIDE.md)
- [Original Lattice universal construct JSON](.ai.system.logic/ai.Lattice_Universal_Construct_Empty_Blocks.json)

**Archive status:** The complete implementation ZIP and recursive harness ZIP have **not yet been uploaded to GitHub**. The links above open the staged documentation/evidence, not downloadable project archives. Local harness results do not establish Windows-native security, production admission, or Crete enforcement.

<!-- Attribution note: "The Man-Machine" (1978) is a work by Kraftwerk. The reference to "man-machine" is credited to Kraftwerk; no affiliation or endorsement is implied. -->
