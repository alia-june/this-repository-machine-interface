# Safe-copy contract

Copy a complete pinned bundle to a distinct unused destination. Verify both membership and digests against the manifest. An occupied destination or failed comparison cannot produce a verified copy.

[Source JSON](ai.safe-copy.json)

Record identity · kind `safe_copy_contract` · version `1.0` · mode `reference_only`

## How to use this record

Use this contract when the requested result is a complete, verified copy at a new destination.

Check the pinned manifest against the source first. Enforce exclusive creation at the approved destination, then compare the destination member set and digests. Stop on an occupied destination or mismatch and retain evidence for review. The receipt can describe partial state without claiming verification.

## Field guide

- `receipt_form` — `.ai.system.logic/construction/receipts/ai.safe-copy-receipt.json`
- `source_basis`
  - `kind` — `user_supplied_recovered_source_note`
  - `label` — October — Safe Copy / Safe Transfer distinction
  - `status` — `working_basis`
  - `summary` — Safe copy copies a pinned complete bundle to a new destination and verifies its manifest. Safe transfer concerns versioned local publication against an expected predecessor.
- `historical_boundary` — The recovered September identity-aware specification remains uncanonized.
- `operation_boundary` — Copy a complete pinned bundle to a distinct unused destination. Safe transfer, backup, and restore verification have separate scopes.
- `required_inputs`
  - `attempt_id`
  - `source_revision`
  - `source_bundle`
  - `manifest_identity`
  - `destination_identity`
  - `authority_reference`
- `checks`
  - Resolve the source bundle and manifest at the declared source revision. Verify that the source matches the manifest.
  - Verify authority for this operation and confirm that the destination is distinct from the source.
  - Require the destination to be unused when creating it. The receiving system must enforce exclusive creation or an equivalent no-overwrite guarantee.
  - After copying, compare the destination member set and each member digest with the pinned manifest. Reject missing, extra, or mismatched members.
- `outcomes`
  - `verified`
    - `condition` — The destination was created without overwrite and its complete membership and digests match the pinned manifest.
    - `destination_claim` — `verified_copy`
    - `next` — `retain_receipt`
  - `destination_occupied`
    - `condition` — The destination already exists or becomes occupied before exclusive creation.
    - `destination_claim` — `unverified`
    - `next` — `stop_without_overwrite`
  - `manifest_mismatch`
    - `condition` — A source or destination manifest comparison fails.
    - `destination_claim` — `unverified`
    - `next` — `stop_and_record_evidence`
  - `unresolved_precondition`
    - `condition` — Source identity, manifest, authority, or destination constraints cannot be established.
    - `destination_claim` — `unverified`
    - `next` — `stop_and_record_condition`
  - `copy_failed`
    - `condition` — The copy is interrupted or fails before verification.
    - `destination_claim` — `unverified`
    - `next` — `preserve_attempt_and_request_recovery_review`
- `preservation`
  - `source` — Preserve the pinned source bundle and manifest.
  - `attempt` — Keep the attempt receipt and evidence separate from the source and record whether partial destination state was observed.
  - `handling_owner` — `receiving_system`
  - `recovery` — Recovery, deletion, and retry require an authorized decision.

## Direct record references

- [ai.safe-copy-receipt.json](../receipts/ai.safe-copy-receipt.json) · [Human companion](../receipts/human.safe-copy-receipt.md)
