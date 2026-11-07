# Site encoding notes

The Lattice Universal Construct empty-block template was supplied by michael stuart. The committed template is the preserved format reference. Site instances retain the five construct blocks and carry their document-specific records at **construct.block-2.arbitrary-data**.

## Crete record type

michael stuart established the site-local Crete convention. Apply the pair before inserting the document payload. Rename block-3.cry-ref to **block-3.context-index** and block-4.cry-ref-data to **block-4.context-records**. The index selects context and the records contain it. The names are cosmetic, and the stable pair and field placement identify the record type within this repository.

Require each source key to exist, each target key to be free in its containing object, and the two target names to be distinct. Stop on collision. Preserve the value under each renamed key. If a reference addresses the renamed key, update it and verify it still resolves. The template retains the original names for provenance.

## Payload and references

The migration preserves the prior pad and memory-state objects as complete payloads. Their path references keep their existing base directory. The new ingress and egress payloads describe the exchange boundary and point to the root pads. The surrounding Lattice blocks retain the template defaults apart from the two Crete key changes and the payload slot. Site policy for populated safeguards and context records can be specified separately.

These examples are reference material for a future converter. The encoding step records the source and decisions needed to reproduce this site layout.

Pre-encoding repository revision: 1c84de72011978e3a5b87166f35e948ba892e97a
