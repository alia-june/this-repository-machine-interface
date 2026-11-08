# Lattice Python Front API and recursive harness — staging index

**Status: STAGING / CANDIDATE_ONLY / NOT_CANONICAL / NOT_ADMITTED.**
**Date:** 2026-11-08.
**Source project:** Lattice Python Front API v0.7.1, read-only local reference implementation.
**Target repository:** `alia-june/this-repository-machine-interface`.

## Available here

- [Project architecture and Python API overview](PROJECT_README_v0_7_1.md) — original package README, with its constraints.
- [Recursive harness audit](evidence/RECURSIVE_HARNESS_REPORT.md) — scope, passed checks, coverage, gaps.
- [Machine-readable recursive result](evidence/RECURSIVE_HARNESS_FINAL_RESULT.json).
- [Source SHA-256 checksums](SOURCE_SHA256SUMS.txt).
- [Publication and recovery ledger](PUBLICATION_STATUS.json).
- [Original universal construct JSON](../../.ai.system.logic/ai.Lattice_Universal_Construct_Empty_Blocks.json) — repository's existing source of the template, unchanged.

## Binary archive status

The **complete v0.7.1 project ZIP** and **recursive-harness ZIP** were verified locally and have hashes recorded here, but are **not yet stored in this GitHub staging directory**. Consequently this directory does **not** constitute a downloadable release of the implementation. The existing ChatGPT conversation holds the ZIP attachments. Do not mistake a source hash or local test report for hosted source bytes.

This staging directory is a publication index/evidence handoff, not an executed deployment, production approval, signed attestation or admission.

The original audit reported **167/167** suite tests, **51/51** regeneration parity and **86.94%** combined measured coverage on Linux with Python 3.13.5. Native Windows execution, Crete enforcement and independent authorization remain unverified.

## Optional exact-byte ZIP upload helper

The [PowerShell upload helper](Upload-Verified-ZIPs.ps1) performs local source SHA-256 checks, pushes the two ZIP files to this staging branch, and downloads the resulting GitHub file content for independent SHA-256 comparison. It has **not been executed here**; it requires the two local ZIP files, `git`, `gh`, a linked GitHub account with write access, and an appropriate Git commit identity. The public index must be updated after a successful upload before reporting that the archives are hosted.
