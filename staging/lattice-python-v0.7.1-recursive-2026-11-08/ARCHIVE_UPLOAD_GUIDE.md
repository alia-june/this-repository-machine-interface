# Exact archive transfer checklist

The two source ZIPs recorded in [SOURCE_SHA256SUMS.txt](SOURCE_SHA256SUMS.txt) must be uploaded **byte-for-byte** before this candidate can be described as a complete online stage.

1. Compare locally available ZIPs against both recorded SHA-256 values.
2. Upload the two ZIPs to this staging branch, or attach both to a GitHub prerelease explicitly marked as a candidate. Retain the original filenames.
3. Download each uploaded archive from GitHub and independently compare SHA-256 with the recorded values.
4. Only then update [PUBLICATION_STATUS.json](PUBLICATION_STATUS.json) and this index with working public archive links and a verified commit/ref.
5. Never change the existing `.ai.system.logic/ai.Lattice_Universal_Construct_Empty_Blocks.json` template as part of archive transfer.
6. Keep `NOT_ADMITTED` and `NOT_CANONICAL` unless independent admission occurs.

Do not link external readers to ChatGPT sandbox paths: those are conversation-scoped and not public GitHub assets.

This checklist documents an incomplete upload; it is not a substitute for uploading the archives.
