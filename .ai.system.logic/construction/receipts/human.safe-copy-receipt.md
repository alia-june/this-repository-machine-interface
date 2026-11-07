# Safe-copy receipt form

Record source, destination, manifest, checks performed, and evidence. Record partial state explicitly. Only the verified outcome supports a verified-copy claim.

[Source JSON](ai.safe-copy-receipt.json)

Record identity · kind `safe_copy_receipt_form` · version `1.0` · mode `reference_only`

## How to use this record

Fill out this form after a copy attempt using evidence the receiving system actually observed.

An attempt can leave a destination behind and still be unverified. Keep checks that passed distinct from checks that failed or were never performed. A verified-copy claim depends on the contract outcome and its evidence.

## Field guide

- `contract` — `.ai.system.logic/construction/contracts/ai.safe-copy.json`
- `required_fields`
  - `attempt_id`
  - `source_revision`
  - `source_bundle`
  - `destination_identity`
  - `manifest_identity`
  - `outcome`
  - `destination_claim`
  - `verification`
  - `evidence_references`
- `fields`
  - `attempt_id` — Identity of this attempt.
  - `source_revision` — Pinned source generation or revision.
  - `source_bundle` — Identity and locator of the complete source bundle.
  - `destination_identity` — Identity and locator of the distinct destination.
  - `manifest_identity` — Pinned manifest locator and digest.
  - `outcome` — Outcome ID from the safe-copy contract.
  - `destination_claim` — verified_copy or unverified, as determined by the contract outcome.
  - `verification` — Record source manifest comparison, exclusive destination creation, destination member and digest comparison, and observed partial state. Use explicit conditions for checks that were not performed or could not be established.
  - `evidence_references` — References to the evidence actually retained for this attempt.
- `claim_rule` — Only the verified outcome can assert verified_copy. All other outcomes record an attempt and its observed conditions.

## Direct record references

- [ai.safe-copy.json](../contracts/ai.safe-copy.json) · [Human companion](../contracts/human.safe-copy.md)
