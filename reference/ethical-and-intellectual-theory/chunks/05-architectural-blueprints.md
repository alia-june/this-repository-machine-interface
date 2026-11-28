# Architectural blueprints

**Edition:** `alia-june/ethical-and-intellectual-theory`

**Source revision:** `fa1de43c27557c9f4e277d8dd6fbd9fc96a46cae`

**Coverage:** 5 source documents. Source names are labels, not hyperlinks.

### Blueprints

Source: `blue-prints/README.md`

**Ethical & Intellectual Theory — architecture and research index**

This directory holds proposed architectural blueprints and technical-theory papers. Its purpose is to make the underlying assumptions, relationships, intended invariants, and open questions inspectable without confusing a research proposal with an accepted specification or a verified implementation.

##### Current blueprints

| Blueprint                                                             | Subject                                                                                                                                                                                                      | Disposition                                                                 |
|-----------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| Lunar Flower AI Seed — Expert-System Contract                         | AI under expert-system contract; seven proposed ordered gates including Prompt Restatement (sixth) and the final Alpha-Lock production gate; ground-up tools and structure; LLM orchestration as last resort | **Proposed theoretical seed; no runtime admission or implementation claim** |
| Gate framework — Gate Zero and Gates 1–7                              | Navigation for foundational Gate Zero and seven proposed ordered standing gates                                                                                                                              | **Theoretical; no runtime activation**                                      |
| Gate 0 — Full axioms, catalog and research records                    | Gate Zero Foundational Theory v0.4, Gate Zero Modular Catalog v0.2, Closure Stage C2/C3 source ledgers, all dispositions and unknowns; human-readable notation and named Tranches                            | **Accepted research catalog; project adoption remains opt-in**              |
| Universal JSON, Crete, and SafeCopy — Ethics and Theory               | Representation and exchange; structural composition and fracture; preservation, provenance, and recovery; their separation from authority                                                                    | **Proposed research synthesis; not canonical or technically attested**      |
| Governed Meaning and Action                                           | Interpretation, scoped approval, recovery evidence, and contract adoption                                                                                                                                    | **Theory note with a bounded local implementation and proposed extensions** |
| Compact Addressed Directory Architecture — Encoding I and Encoding II | Fixed and adaptable 8.3 directory encoding; rack inclusion masks, virtual composition, recursive namespaces, CRC-5 and Lattice metadata                                                                      | **Research draft v0.2; not production-admitted**                            |
| A General Taxonomy of Work-Generative Attribution — Seed 0.2.1        | Constituent attribution, research direction, intellectual origination, material generation and provenance                                                                                                    | **Theoretical research; pre-standardization; independently unverified**     |

**Primary designated specification — xOSG-1 Operations Contract:** xOSG-1 Operations Contract — **LLM Orchestration as Last Resort** within the expert-system architecture — incorporates the theoretical Gate Zero foundation, all 27 modular research items, ordered Gates One through Seven and Alpha-Lock, tests, ledgers, and their stated limitations, without internal document links. Its instrumented realization will be called **`es-xosg-9`**; instrumentation is not claimed by this document.

##### Reading and evidentiary conventions

A blueprint should distinguish **historical user direction**, **observed implementation evidence**, **theoretical synthesis**, **open questions**, and **adoption decisions**. The existence of a Markdown file, valid JSON, manifest, checksum, or successful limited test does not establish security, permission, authorship, independent attestation, or production fitness.

Blueprints do not confer runtime authority. They neither supersede the programming doctrine nor enlarge the consent and personal-modeling permissions set out by the research-ethics doctrine.

When a design changes, preserve attribution, prior scope, explicit correction and supersession history. In particular, distinguish source preservation from candidate reconstruction and validation from admission/publication.

##### Navigation

Repository home · Programming doctrine · Research ethics · AI collaboration and attribution

##### Publication status

This index organizes public **research proposals**. Each blueprint retains its own stated status. Inclusion here is not the author's adoption of every statement as canonical doctrine.

---

### Compact Addressed Directory Architecture

Source: `blue-prints/ENCODED_DIRECTORY_WHITE_PAPER_v0.2.md`

**Encoding I and Encoding II**

**Fixed and adaptable 8.3 addressing, virtual composition, and recursive namespace expansion**

Technical white paper \| Research draft 0.2 \| 25 November 2026

##### Executive summary

This paper describes a managed directory architecture that separates storage identity, human-readable designation, rack membership, virtual composition and integrity. Instead of representing a semantic hierarchy by progressively longer native paths, the system assigns each directory a compact, case-insensitive 8.3 designation. Encoding I uses a seven-character ordinal identity, an eighth-character CRC-5 or exception sentinel, and a three-character fifteen-bit inclusion mask. Encoding II retains the 8.3 envelope while allowing reserved directory identifiers to open subordinate namespaces and reallocating identifier characters to increase rack capacity. The integrity character moves left as the rack field grows.

Each directory is self-describing through a Lattice Universal Construct JSON record in its `.system` directory. Branch roots retain branch-specific metadata, while external redundant representations support inspection, indexing and recovery. A deterministic management layer resolves virtual trees and enforces integrity and authorization boundaries. The underlying operating system remains responsible for physical storage.

| Encoding I reference parameter     |                                     Value |
|------------------------------------|------------------------------------------:|
| Canonical designation              |                            `XXXXXXXC.RCK` |
| Usable directory identities        |                            78,364,162,048 |
| Reserved identity sentinels        |                                     2,048 |
| Independent rack flags             |                                        15 |
| Valid rack masks                   |                                    32,768 |
| Ordinary check-character states    |                                        32 |
| Exceptional check-character states |                                         4 |
| Metadata redundancy target         | Local record + 3 external representations |

Encoding II can trade local identity population for up to 36 independent rack flags under the existing sentinel reservations. A namespace expansion mechanism can distribute a large corpus across small physical directory environments without conflating native containment with the virtual hierarchy. The profile and namespace must be known before a designation is parsed.

**Status and scope.** This is a conceptual architecture and research record, not an implemented filesystem, security certification or production release. Operator decisions establish the core notation, sentinel reservations, rack encoding, Lattice metadata approach and the two encoding families. Encoding II mechanisms are operator-directed; detailed profile and expansion rules below remain proposals. Specific recovery semantics, CRC polynomial, transaction protocol, physical sharding and tooling details are proposals pending approval and verification. No production authorization is implied.

##### 1. Design principles and physical layout

Conventional directory trees couple semantic containment to native path length. Renaming or reorganizing a high-level directory can change the paths of every descendant. This architecture instead makes the directory a self-describing storage construct, with virtual relationships established independently of physical containment.

| Plane            | Responsibility                                        |
|------------------|-------------------------------------------------------|
| Identity         | Stable ordinal identifier within the managed root     |
| Physical storage | Native directories and file contents                  |
| Selection        | Profile-defined independent rack membership bits      |
| Composition      | Metadata-defined branches and relationships           |
| Presentation     | Human-readable or machine-oriented navigation         |
| Assurance        | CRC, Lattice metadata, independent records and policy |

###### 1.1 Encoding I canonical layout

``` text
ROOT/
  .system/                       Root-level metadata
  00000SG?.005/                  Directory construct (illustrative)
    .system/
      universal.json             Lattice record (proposed filename)
    content...
  00000SH?.002/
    .system/
      universal.json
    content...
```

The question mark in the illustration is a placeholder, not a valid filename character. The actual eighth character is calculated from the identifier and rack mask or assigned through an authorized exception transition. `.system` is a reserved administrative directory outside the ordinary encoding and does not recursively require another `.system` directory.

The managed root contains one canonical live directory per ordinary identifier. Rack membership does not create physical copies or rack-specific folders. Changes in the semantic name or virtual parent do not require a physical move. Changing the rack mask does change the encoded native basename and its check character; the identity remains the seven-character ordinal. References should therefore use the stable identity, not cache a mutable native path.

###### 1.2 Path length and scale

A flat layout removes virtual depth from native path-length calculations. For a drive-root path such as `D:\`, a 12-character directory designation yields a 15-character directory path; appending `\.system\universal.json` yields 38 characters, excluding the terminating null. Additional root prefixes and content paths must still be bounded by the actual platform. The architecture uses 8.3-shaped names, not a promise of full legacy DOS compatibility; `.system` and `universal.json` are not strict legacy 8.3 components.

A single native parent with billions of children is not a realistic deployment target. Nonsemantic sharding, if required by measured filesystem performance, may be introduced without changing virtual composition. Sharding is not the rack mechanism. Encoding II explicitly permits reserved expansion directories; physical partitioning and expansion policy remain to be specified. Logical depth is limited by explicit traversal budgets, cycle checks and available resources rather than by the compact directory name.

##### 2. Encoding I: address grammar and allocation

``` text
XXXXXXXC.RCK
|-----|| |--|
   ID  C MASK
```

Use ASCII alphabet `0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ`, with uppercase as the canonical form and case-insensitive input. The first seven positions encode the ordinal identity in base 36. The eighth position encodes the check value or an exception sentinel. The dot is mandatory. The last three positions encode the rack mask in base 36, restricted to values 0 through 32,767.

| Field     | Width | Domain                                |
|-----------|------:|---------------------------------------|
| ID        |     7 | 0 through 36^7 − 1                    |
| C         |     1 | `0–V` CRC; `W–Z` exception candidates |
| Delimiter |     1 | `.` only                              |
| RCK       |     3 | `000–PA7` valid; `PA8–ZZZ` unassigned |

###### 2.1 Sentinel reservations

| Allocation           | Inclusive range   |          Count |
|----------------------|-------------------|---------------:|
| Lower sentinel block | `0000000–00000SF` |          1,024 |
| Ordinary identities  | `00000SG–ZZZZZ7J` | 78,364,162,048 |
| Upper sentinel block | `ZZZZZ7K–ZZZZZZZ` |          1,024 |
| Total identity space | `0000000–ZZZZZZZ` | 78,364,164,096 |

The identity space is 36^7. Subtracting the two reserved blocks yields the usable population. The former eight-character ordinal design provided 36^8 = 2,821,109,907,456 values before reservations. Moving the last position to integrity reduces raw ordinal capacity by a factor of 36; using CRC-5 instead of another check scheme does not further reduce it.

Sequential allocation starts at `00000SG`, advances by one in base 36 and never wraps into a sentinel block. Reserved values are never allocated as ordinary identities. Encoding II may assign a subset to namespace expansion through a registered sentinel role. A suggested policy is monotonic allocation with no identifier reuse, including after deletion; exhaustion must halt allocation. A synchronized allocation high-water mark and durable tombstones would prevent accidental reuse under concurrency and recovery. The policy is not yet adopted.

###### 2.2 Address versus identity

There are 2,567,836,861,988,864 possible ordinary identity/mask pairs, not that many independently existing directories. Each pair has one ordinary canonical CRC character for a fixed algorithm. Only one live record for an identity should exist within the root. Root or namespace identity is required when composing multiple managed roots; the seven-character field alone is not globally unique across unrelated installations.

Parsing requires exact length, ASCII normalization, delimiter and bounds checks before ordinary resolution. Reject malformed input, out-of-range masks and sentinel identities unless an explicit sentinel protocol applies. Unknown or unverified exceptional designations are never treated as ordinary addresses.

##### 3. Encoding II: adaptable profiles and namespace expansion

Encoding II addresses two independent resource constraints: a small permissible physical directory population, and demand for more than fifteen rack flags. Both mechanisms may be used separately or together. The native 8.3-shaped envelope, case-insensitive base-36 alphabet, single integrity character and metadata-based virtual composition remain unchanged.

###### 3.1 Reserved directories as namespace expansion points

An explicitly registered reserved directory identifier may designate an expansion point rather than a content directory. The expansion directory contains the root of another managed directory environment. Its local `.system` record describes the child namespace and its profile. The parent namespace also records the relationship, and external replicas preserve it. An expansion point is not a rack or a virtual branch merely by virtue of its role.

``` text
ROOT/                              Namespace N0
  .system/                         N0 profile and expansion registry
  00000SG?.005/                    Ordinary Encoding I directory
  <reserved-ID>C.RCK/              Registered expansion point
    .system/                       Namespace N1 root and profile
    IIICRRRR.RRR/                  Ordinary Encoding II-4 directory
    <reserved-ID>C.../             Further expansion, if permitted
```

The diagram uses placeholders rather than literal directory names; actual child names always follow one declared 8.3 profile, with exactly one dot. For a three-character identity profile, a child name has the form `IIICRRRR.RRR`. Reserved expansion points have their own role-specific validation; ordinary directory allocation must never enter the sentinel ranges.

A namespace may impose a small operational cap on ordinary children independent of theoretical capacity. Once that cap is reached, another registered expansion point can host additional directories. Count administrative entries and expansion roots when evaluating a native parent limit. The allocation policy must bound physical depth, total namespaces, per-namespace children and path lengths. Expansion never implies unbounded recursion or automatic authority inheritance.

###### 3.2 Adjustable allocation of the ten payload characters

The ten characters remaining after reserving one integrity character are divided into an identity field and a rack field. Let n be the number of identity characters and m = 10 − n the number of rack characters. Place the check character immediately after the identity; insert the dot after the eighth character of the complete undotted designation. Concatenate the rack characters across the dot before numeric decoding. For m rack characters, the unrestricted bit count is floor(log2(36^m)).

| Profile | Name pattern   | ID chars | Rack chars | Rack bits | Usable IDs per namespace |
|---------|----------------|---------:|-----------:|----------:|-------------------------:|
| I       | `IIIIIIIC.RRR` |        7 |          3 |        15 |           78,364,162,048 |
| II-1    | `IIIIIICR.RRR` |        6 |          4 |        20 |            2,176,780,288 |
| II-2    | `IIIIICRR.RRR` |        5 |          5 |        25 |               60,464,128 |
| II-3    | `IIIICRRR.RRR` |        4 |          6 |        31 |                1,677,568 |
| II-4    | `IIICRRRR.RRR` |        3 |          7 |        36 |                   44,608 |

The profile labels are proposed. Capacity is 36^n − 2,048 when retaining 1,024 lower and 1,024 upper reserved identifiers. The two-character identity space has only 1,296 values, so it cannot retain these two disjoint reservations. Profiles below three identity characters require a separately authorized sentinel policy; they are not part of this proposal.

| Profile | Valid rack masks | Unassigned mask encodings | ID bits for CRC | Payload bits |
|---------|-----------------:|--------------------------:|----------------:|-------------:|
| I       |           32,768 |                    13,888 |              37 |           52 |
| II-1    |        1,048,576 |                   631,040 |              32 |           52 |
| II-2    |       33,554,432 |                26,911,744 |              26 |           51 |
| II-3    |    2,147,483,648 |                29,298,688 |              21 |           52 |
| II-4    |   68,719,476,736 |             9,644,687,360 |              16 |           52 |

The mask domain is 0 through 2^b − 1, where b is the profile's rack-bit count. Every bit combination is representable. The surplus base-36 values remain unassigned, and are rejected during ordinary resolution. The mask count is not the number of independent racks. The CRC payload widths use ceil(log2(36^n)) identity bits and b rack bits. These mathematical capacities have been recalculated; Encoding II checksum behavior has not yet undergone destructive testing.

###### 3.3 Namespace identity and profile binding

The short ordinal is unique within its declared namespace. The proposed stable reference is `(namespace-id, ordinal-id)`; the namespace ID itself is independent of its native path and must be allocated without collisions. A parent expansion entry records its child namespace ID, registered expansion role and expected profile version. Moving a namespace does not imply a change to its identity. Cross-namespace links must retain both namespace and ordinal, never an unqualified local ID.

The profile is not encoded in the 8.3 name. Before interpreting a name, the management engine must obtain a verified namespace profile from the root record and corroborating external evidence. Never guess the CRC position by trying several profiles until one passes. A wrong profile can parse a name as a different valid identity and mask; CRC-5 alone is not a reliable profile discriminator.

Illustrative payload for the root Lattice record (not a replacement for its reference structure):

``` json
{
  "encoding-family": "II",
  "profile-id": "II-3",
  "profile-version": 1,
  "radix": 36,
  "identifier-characters": 4,
  "integrity-position": 5,
  "rack-characters": 6,
  "rack-bits": 31,
  "lower-sentinel-reservation": 1024,
  "upper-sentinel-reservation": 1024,
  "expansion-enabled": true
}
```

The full binding must additionally carry the namespace identity, parent reference, profile digest/version, CRC algorithm version, rack registry, physical allocation bounds and registered expansion roles. Profile changes, expansion creation and migration require explicit authorization, durable evidence and validation. Missing, conflicting or unsupported profile data must fail closed.

###### 3.4 Cross-namespace racks and profile migration

Rack bits are local positions interpreted through a verified rack registry. A cross-namespace view must bind local positions to stable rack identities; bit 3 in one namespace need not mean bit 3 in another. Expansion directories are traversed according to the namespace registry, not merely the mask of the expansion entry, unless an explicit traversal policy establishes otherwise. Inclusion of a directory never grants access authority.

A change in profile may shorten the identifier field, move the integrity position and alter rack capacity. It is therefore a controlled namespace migration, not a cosmetic rename. Proposed default: a namespace profile is immutable during ordinary operations. Migration must verify that every ordinal and mask fits the destination, preserve stable references or record an explicit mapping, stage new names and records, recompute check values, detect collisions and preserve recoverable checkpoints. If values do not fit, allocate a new namespace and an explicit mapping or deny migration. Do not truncate identifiers, silently discard rack bits or reuse sentinel identities. The implementation and governance of cross-profile migration remain open.

##### 4. Rack masks and virtual branches

The rack is a simple selector, not a storage partition, hierarchy, access-control mechanism or executable predicate. In Encoding I the extension itself is the bitmap; in Encoding II the rack field can extend left of the dot. The following examples use Encoding I. Three base-36 characters provide 46,656 numeric values; fifteen independent binary flags require 2^15 = 32,768 values. A sixteenth independent flag would require 65,536 values and cannot be supported without restricting combinations. The remaining 13,888 values are unassigned; reserve them rather than silently interpreting them as masks.

| Mask  | Decimal | Included racks (zero-based) |
|-------|--------:|-----------------------------|
| `000` |       0 | None                        |
| `001` |       1 | 0                           |
| `002` |       2 | 1                           |
| `003` |       3 | 0, 1                        |
| `005` |       5 | 0, 2                        |
| `00A` |      10 | 1, 3                        |
| `PA7` |  32,767 | All 15                      |

Rack r includes directory d exactly when its existence is verified and `(mask(d) & (1 << r)) != 0`, where r is 0–14 in Encoding I and 0 through b − 1 for a profile with b rack bits. Inclusion is encoded by 1; exclusion by 0. No external per-rack bitmap or inclusion/exclusion polarity is required. The root remains the universe of allocated directories, including those with no selected rack. A missing or invalid record is an unresolved state, not proof of exclusion.

Bitwise OR sets membership, AND with a complemented bounded bit clears membership, XOR toggles membership, and AND tests membership. Set operations on selected directory populations can form overlays or working sets without changing the primitive. Rack names and purposes can be registered at root level; membership never confers authorization. A rack is not a snapshot unless separately bound to versioned content and metadata.

###### 4.1 Virtual composition

| Directory identity | Semantic designation | Rack mask | Example virtual parent |
|--------------------|----------------------|-----------|------------------------|
| `00000SG`          | Research             | `005`     | Branch root            |
| `00000SH`          | Mathematics          | `003`     | Research               |
| `00000SI`          | Computation          | `001`     | Mathematics            |
| `00000SJ`          | Engineering          | `004`     | Research               |

A rack selects a population; branch metadata establishes its relationships. Selection does not determine composition. The example admits Research and Mathematics in rack 0, but rack 1 selects Mathematics without its Research parent. The branch resolver must have an explicit policy for absent parents (e.g., reject the view or display an explicitly marked disconnected component), never silently synthesize membership.

A branch root (a semantic composition root, distinct from a physical namespace expansion root) carries its own branch identity, name, root reference, constituent references, relationship records, ordering if applicable, provenance, generation and validation state. Relationships can support alternate compositions without copying data. The initial proposal is a rooted acyclic hierarchy per branch; multi-parent graphs and cross-branch relations require separate semantics. Traversal must detect cycles, missing edges and exhausted budgets. Deletion and virtual unlinking are separate operations.

##### 5. Lattice metadata and external redundancy

Each directory contains a Universal Construct record. The source Lattice template uses five blocks, with `$cry-ref` indirection and explicit `$sentinel` values. Its structure is retained rather than replaced with a flattened metadata format. The root directory, namespace expansion root and branch-root constructs use the same architecture, with contextual role determining their subject. The namespace profile and expansion registry are additional proposed reference-bound data; the source template is not modified by this paper.

| Lattice block | Directory application (proposed binding)                                     |
|---------------|------------------------------------------------------------------------------|
| `block-0`     | Self, designation, external identifiers, lineage, structure and relations    |
| `block-1`     | Safeguards, lifecycle, integrity, backup, fallback, recovery and audit       |
| `block-2`     | Directory-specific arbitrary data, including extended integrity observations |
| `block-3`     | Reference selectors, matching, locks and validation state                    |
| `block-4`     | Reference-bound data in core, active and safety contexts                     |

Store the real human-readable directory name through `identification.designation`, the ordinal and root namespace through `identification.external-identifiers`, and directory or branch role through `identification.contextual-role`. Preserve `core.lineage`, `core.continuity`, `structure.relations` and `structure.boundaries`. Contextual branch relations belong to the branch representation, not to intrinsic directory identity. Reference locks and context bindings must be validated before trusting the associated values; unrecorded data remains explicitly unrecorded.

The local `.system/universal.json` filename and exact reference payload schema remain proposed. The original template does not define the directory-specific fields or W–Z semantics. A stronger digest, algorithm version, generation, expected and observed designations, rack mask and exact population-count observations can be bound through integrity fields and directory-specific data. Digest scope and canonical serialization must be defined; avoid self-referential digest fields by hashing a specified projection or detached record.

###### 5.1 Redundancy architecture

| Representation        | Intended responsibility                                 |
|-----------------------|---------------------------------------------------------|
| Local Lattice JSON    | Embedded identity and self-description                  |
| External JSON mirror  | Portable, inspectable identity and metadata copy        |
| External SQL store    | Indexed management, membership and relationship queries |
| Third external record | Proposed independent recovery ledger/checkpoint history |

The target is one embedded record plus three external representations. The third representation is not yet fixed. SQL may be rebuilt from verified records if designated a derived index. Redundancy requires independent failure domains and provenance; four copies on one disk are not four independent backups. Metadata redundancy does not by itself back up file contents.

A reconciler should compare identity, generation, authenticated or otherwise trusted provenance, expected designation and digest across available records. A majority vote alone is insufficient: replicas may share a stale or corrupt origin. A proposed write-ahead journal records intent and completion; verified checkpoints support replay or restoration. Missing or contradictory authoritative evidence must halt unsafe transitions. The authority model and commit/recovery ordering are open engineering decisions.

##### 6. Integrity engineering and exceptional states

The integrity character (eighth in Encoding I, immediately after the ID in Encoding II) provides one of 32 CRC-5 values encoded as `0–V`, or one of four reserved values `W–Z`. CRC-5 is a compact error detector, not authentication or authorization. It does not protect file contents, detect all substitutions, or prove metadata integrity. Stronger independent verification belongs in the Lattice and redundancy layers.

###### 6.1 CRC candidate profile

The stress-test harnesses serialize the identity into 37 bits and the rack mask into 15 bits (52-bit payload), most-significant bit first, with initialization and final XOR both zero. The dot and check character are excluded from the payload calculation. Appending the five CRC bits logically permits a zero-residue check over the binary codeword; the check bits are physically stored before the dot, so verification must reconstruct the logical order. The complete eight-character base-36 integer is not the CRC codeword.

| Candidate         | Generator polynomial | Status                |
|-------------------|----------------------|-----------------------|
| Baseline          | x^5 + x^2 + 1        | Tested, not finalized |
| Parity-preserving | x^5 + x^4 + x^2 + 1  | Tested, not finalized |

Both detect single-bit errors and binary bursts spanning at most five bits in the serialized codeword. The second polynomial has factor (x + 1), guaranteeing detection of odd-weight codeword errors. These guarantees concern the specified binary serialization, not arbitrary base-36 character changes. A CRC cannot guarantee detection of all two-bit errors across this payload with only 32 check values. Polynomial selection, versioning and reference vectors are required before implementation. Encoding II proposes the same logical ordering with profile-specific payload widths from Section 3.2. Validate the profile separately; the checksum alone does not attest namespace or profile identity. New vectors and destructive tests are required for each profile, especially the 51-bit payload of II-2 and split-field parsing.

###### 6.2 Exceptional-state dispatch

| Character | Proposed meaning                 | Required response                                            |
|-----------|----------------------------------|--------------------------------------------------------------|
| `W`       | Alternate verification requested | Stop normal resolution; consult authorized validation policy |
| `X`       | Integrity failure recorded       | Isolate, preserve evidence, inspect records                  |
| `Y`       | Recovery required                | Refer to authorized recovery plan                            |
| `Z`       | Critical or indeterminate state  | Halt and quarantine                                          |

The four assignments are proposals, not existing Lattice definitions. They bypass only the ordinary CRC comparison as a routing choice, not the integrity requirement or any security gate. A recognized sentinel supplies no authority and is not itself proof that the encoded identity or mask is trustworthy. A corrupt normal character can become W–Z accidentally; thus the exception route must never be more permissive than normal verification. Inspect local metadata only in a constrained, separately authorized context, using independently trusted records to identify the subject and assess integrity.

Existing Lattice defaults include `integrity-failure: ISOLATE_AND_HALT`, `unrecognized-sentinel: FAULT_CLOSED`, `integrity.on-mismatch: DENY_AND_QUARANTINE`, `recovery.automatic-recovery: DENY`, and `audit.silent-error-suppression: DENY`. These are the governing basis for exception processing. A failed CRC must not trigger an automatic rename or grant a recovery operation. Return to ordinary representation only after verified reconstruction and explicit authorized transition.

##### 7. Management, recovery and verification

A dedicated deterministic management layer is necessary because native filesystem tools do not understand the virtual hierarchy, rack masks, reference locks or redundancy contract. Ordinary operations should not depend on an LLM. Raw filesystem changes are possible unless separately prevented by operating-system controls; therefore the manager must detect unauthorized or out-of-band changes rather than assume exclusivity.

| Proposed utility                                 | Responsibility                                                |
|--------------------------------------------------|---------------------------------------------------------------|
| `dir-create`, `dir-list`, `dir-resolve`          | Allocate, enumerate, resolve semantic and encoded identities  |
| `dir-rename`, `dir-move`, `dir-copy`             | Semantic rename, virtual reparent, identity-aware duplication |
| `dir-delete`, `dir-search`, `dir-inspect`        | Controlled retirement, query and inspect                      |
| `rack-set`, `rack-clear`, `rack-test`            | Modify or inspect encoded membership                          |
| `branch-export`, `branch-import`, `branch-audit` | Transport, reconstruct and verify compositions                |
| `namespace-inspect`, `namespace-expand`          | Validate profiles; stage registered expansion environments    |
| `profile-verify`, `profile-migrate`              | Check profile compatibility; stage controlled migration       |
| `dir-verify`, `dir-reconcile`, `dir-recover`     | Cross-check records and execute authorized recovery           |

These are functional names, not a requirement for separate executable programs. An initial implementation could expose one CLI and a deterministic library. The interfaces should distinguish lookup, inspection, staging and mutation, returning explicit sentinels for malformed, missing, ambiguous, unverified and denied states rather than overloaded nulls or implicit permissions.

###### 7.1 Proposed mutation protocol

1.  Resolve and verify the namespace and profile, then parse and validate the requested operation, identity, expected generation, rack mask and authorized scope.
2.  Resolve identity to the current native path from verified metadata or an index; verify the CRC or dispatch an exception. Do not follow untrusted symbolic links, junctions or path escapes.
3.  Acquire the relevant lock, recheck generation and stage an intent record with old/new names, metadata and affected relations.
4.  Apply authorized physical and metadata changes, including recalculating the check character if the mask changes. Validate staged state and update redundant representations under a defined durability protocol.
5.  Commit and record the new generation only at the declared commit point. On interruption, preserve evidence and reconcile against the journal before exposing the result as ordinary state.

No native rename and external SQL/JSON updates can be assumed to form a single atomic transaction. The manager needs explicit crash-consistent state transitions, idempotent replay and a verified rollback or recovery plan. Concurrent writers, duplicate IDs, stale handles, external mutations, disk-full conditions and partial replication must be tested. Copying should normally allocate a fresh identity; virtual linking should retain identity. Deletion should be distinct from rack exclusion and branch unlinking.

###### 7.2 Authorization boundary

CRC success proves only a check relation. Rack visibility, semantic resolution, file reads, writes, execution and publication are separately authorized. A checksum, name, JSON value or exception marker must not grant privilege. Enforce fail-closed defaults, monotonic non-escalation, auditability and authorized recovery. In the current research context, production remains locked; the paper does not enact any operation or modify the Lattice source.

##### 8. Research evidence and development roadmap

A prior research cycle investigated preserving the population counts of the identity, check character, complete first block, mask and arithmetic sum in one character. Let I be the ordinal, C the check value, B the mask, A = 36I + C and S = A + B. Exact counts P(I), P(C), P(A), P(B), P(S) cannot generally be independently encoded in one base-36 character. A direct modulo-three fixed-point equation failed to produce a valid character in 6,982 of 20,000 archived trials. A parity-and-ranking hybrid guaranteed encodability but weakened short-burst detection. Retain exact bitness observations in metadata instead of imposing the hybrid on the primary check.

| Archived primary harness test | Valid trials | Hybrid missed | CRC-5 missed |
|-------------------------------|-------------:|--------------:|-------------:|
| Single identifier bit         |      358,635 |             0 |            0 |
| Single rack bit               |      150,000 |             0 |            0 |
| Two payload bits              |       95,752 |         4,856 |        1,552 |
| Three payload bits            |       93,570 |             0 |        3,075 |
| Two-bit burst                 |       97,775 |         5,354 |            0 |
| Five-bit burst                |       97,580 |         1,875 |            0 |
| Rack increment                |       99,996 |         2,268 |            0 |

The archived sweep of 32 selected identifiers × 32,768 masks produced 1,048,576 hybrid constructions without encodability or parity violations, but 21,638 adjacent-mask check collisions against zero for the baseline CRC in that sweep. The parity-preserving CRC also missed zero sampled bursts of lengths two through five and zero sampled three-bit errors. Results are from the archived deterministic harnesses, inspected for this paper; not an exhaustive proof over all identifiers or a fresh benchmark. The selected polynomial remains an open decision. No performance or security certification is claimed.

###### 8.1 Proposed development gates

| Stage                    | Required evidence before advancing                                                                  |
|--------------------------|-----------------------------------------------------------------------------------------------------|
| 1\. Freeze encodings     | Both grammars, sentinel/expansion registry, CRC profile and vectors                                 |
| 2\. Bind Lattice         | Versioned reference schema, authority and integrity projection                                      |
| 3\. Build primitives     | Bounded profile parser, allocation, masks, expansion and CRC library; regression tests              |
| 4\. Simulate management  | Mixed-profile namespaces, branch and migration tests; transaction/crash and replica fault injection |
| 5\. Pilot native storage | Measured filesystem limits, concurrency, security and recovery verification                         |
| 6\. Production review    | Independent attestation and explicit operator clearance                                             |

###### 8.2 Outstanding decisions

Freeze profile names and allowed ranges, expansion sentinel roles, namespace identity and rack registry rules, migration authority and traversal limits. Freeze the W–Z mapping, third external representation, identifier reuse policy, branch orphan/multi-parent semantics, authority and reconciliation model, CRC versioning and physical distribution policy. Define exact metadata schemas, content backup scope, lock protocol, and the native path resolution index. None of these should be silently promoted from proposal to requirement.

###### Source and provenance

Primary architecture source: operator-directed design conversation, 25 November 2026. Lattice source inspected: `alia-june/this-repository-machine-interface`, `.ai.system.logic/ai.Lattice_Universal_Construct_Empty_Blocks.json`, blob `c2820295c8fd7dadfe99b00e04feee18765d2abb`. Repository front door: (address omitted) Template: (address omitted) Research evidence: archived `stress.cpp`, `results.txt`, `stress_parity.cpp`, `results_parity.txt` (checksum_research). Encoding II addition: operator-directed adaptability and expansion, with AI-proposed profile calculations and engineering constraints. Design initiation and direction: human operator; mathematical synthesis and paper drafting: AI-assisted; archived tests: deterministic C++ harnesses. No external repository changes were made.

---

### Governed Meaning and Action

Source: `blue-prints/governed-meaning-and-action/README.md`

An instruction can supply a purpose without settling what should be done. Before an assistant acts on an interpretation, the person giving the instruction should be able to see what the assistant took it to mean, what it inferred, and what operation it proposes. The authority to approve that operation belongs to the applicable reviewer and extends to the proposal they actually reviewed.

##### From source to a reviewable proposal

Keep the source statement, the interpretation, and the proposed action distinguishable. Record which claims were supplied, which were inferred, which premises were adopted, and which questions remain unresolved. A derivation record shows how a conclusion was reached. A checked proof establishes what follows under the premises and rules that were checked. A claim about the state of a file, system, or institution still requires evidence about that state.

In Redux, aPROMPT uses a shared catalog of engineering axioms. The project uses those requirements to generate prompts and identifies where specific requirements are enforced in code. A prompt can explain why a destination must be fresh. The publication routine must enforce that condition at the point of publication. The receipt then records evidence about the particular operation. The instruction, the enforcement, and the receipt serve different purposes.

##### A recovery request

Suppose someone asks to “recover the last good copy of the report.” The phrase leaves the object, generation, destination, and meaning of *good* to be resolved. A reviewable proposal identifies the retained report and its exact generation, names a fresh destination, and states the acceptance checks. In the local aPROMPT API, those checks can include a typed assertion about a JSON field, such as requiring a status value to equal `"ok"`.

When the request goes through the sistermachine adapter, the reviewer approves the exact prepared packet. The adapter can invoke one supported local operation after the conditions designated for it evaluate true. If the selected generation, destination, or acceptance criteria change, the revised packet requires its own approval.

Recovery checks the retained bundle and applies the declared acceptance checks before publication. The receipt can support a claim about the verified files and JSON assertions. A claim that an application is functioning requires evidence of application behavior. If publication may have occurred but a terminal receipt could not be verified, the effect remains uncertain. Inspect the destination and retained records before deciding whether to authorize another attempt.

##### Adopting a contract and approving an action

The September 28 sistermachine registry proposal separates governance of the contract from the operational state of the request. A recovery contract can be reviewed while authority to adopt it remains unresolved. Adoption concerns an exact contract version and a decision by an authority whose scope is established. Operational approval concerns an exact prepared request. An execution receipt concerns what the runtime attempted and what its evidence supports.

The proposed handshake has a separate purpose. It concerns which parties and package are involved, which versions and capabilities are offered, and what was received. An authenticated exchange can establish facts about that exchange. Execution still requires its own approval.

The same distinctions apply to provenance. A verified digest supports a claim about the bytes examined. Origin, authority, adoption, and operational outcome each require evidence appropriate to that claim.

##### Requirements, validation, and attestation

The proposed u\* design separates **definition and proof** from **execution**. Either kind of work can be governed by one of two sets of obligations.

- **Permissive** means hardened and requiring. The governing contract states and enforces mandatory requirements.
- **Restrictive** is onerous, validating, and attesting. It adds prescribed validation, supporting evidence, and an attributable account of what was checked and what the check found.

Recursion makes the distinction practical. A retry or restart remains subject to its declared scope and overall work budget, including work already spent. A restrictive policy would also prescribe how compliance is validated and attested. Termination, bounded resource use, and completion of the requested work each call for their own evidence.

##### Status and provenance

**Implemented locally.** aPROMPT 1.1.0 provides the Python adapter and bounded file operations used in the recovery example. The adapter evaluates a limited set of Boolean expressions over supplied facts, preserving unknown values where applicable. Its approval gate applies to the adapter. Direct local API calls have a separate entry point.

**Explored through comparisons.** The representation experiments compared authored human-readable, machine, and formal examples under bounded checks. Compact formulas saved space in some cases, while the standalone indexed representation grew once its dictionary was included. The live interpretation test was withdrawn.

**Proposed.** The September 28 registry, including its acceptance, provenance, and handshake work, was preserved as a proposal pending adoption. The broader natural-language front end and u\* language remain development work.

This note is an AI-assisted synthesis of the Redux design discussion and project artifacts. The recovery scenario is illustrative and follows the documented local operation. The definitions of permissive and restrictive follow the author’s explicit correction in the design discussion.

- Research ethics and scoped consent
- Programming doctrine and evidence

---

### Universal JSON, Crete, and SafeCopy

Source: `blue-prints/UNIVERSAL_JSON_CRETE_SAFECOPY_ETHICS_AND_THEORY.md`

##### A Theory of Representation, Composition, Preservation, and Authority

**Repository:** Ethical & Intellectual Theory  
**Authorial attribution:** Alia June  
**Classification:** Computational Philosophy / Programming Theory / Research Ethics  
**Status:** Research synthesis — proposed, not canonical  
**Date:** November 8, 2026

**Provenance:** This paper synthesizes previously developed architectural concepts and user-directed design principles. AI assistance contributed editorial organization, explanation, and synthesis. Publication, adoption, and interpretation remain subject to author review.

------------------------------------------------------------------------

##### Abstract

A computational system does not become trustworthy merely because its information is well-formed, its components are connected, or its data has been preserved.

Representation, composition, and preservation are three distinguishable problems. Each has implications for identity, provenance, authority, autonomy, and recovery.

This paper examines three related architectural concepts:

- **Universal JSON:** A common semantic framework for the structured representation and exchange of information.
- **Crete:** A specialized form of structural composition intended to preserve the integrity of relationships through narrowing, interlocking constraints, and detectable fracture.
- **SafeCopy:** A family of controlled copying and preservation operations concerned with identity, independence, provenance, integrity, and recovery.

Their conjunction suggests a broader computational principle:

**Information may be represented, reproduced, and composed without necessarily transferring the identity, authority, or obligations associated with its source.**

This distinction has technical and ethical significance. It applies to software components, autonomous computational systems, archival materials, human intellectual contributions, and artificial intelligence.

The following discussion is theoretical. It does not assert that the proposed mechanisms have been fully implemented, formally proven, or universally adopted.

##### I. The Problem of Representation

A representation is not the thing represented.

An object may be described through its properties, relationships, capabilities, state, and history. Such a description can be accurate within a specified scope while remaining incomplete in other respects.

This distinction becomes particularly important when descriptions are used by programs capable of interpretation or execution.

A JSON object describing an operation is not equivalent to authorization for that operation. A reference to a resource does not establish ownership. A declaration of integrity does not prove that integrity exists.

Likewise, a model describing the methods of a person does not acquire authority over that person's identity or present intentions.

The foundational distinction is therefore between:

1.  **Description:** What a representation declares.
2.  **Interpretation:** What meaning is assigned to that description.
3.  **Verification:** What evidence supports the interpretation.
4.  **Authority:** What actions are permitted under an independently established governing relationship.
5.  **Execution:** What actually occurs when an authorized operation is performed.

These categories can interact, but their interaction does not make them equivalent.

###### Universal JSON as a semantic boundary

Universal JSON was developed as a project-level convention for exchanging typed, versioned, inspectable information across tools, interfaces, and processes.

Its purpose is not simply to make unrelated programs communicate using the same serialization format.

It is to establish sufficient structure for participating systems to distinguish requests, claims, identities, states, operations, errors, effects, and evidence.

The architecture therefore separates the message from the mechanism that interprets and acts upon it.

A message may be syntactically valid, structurally valid, and semantically interpretable while still being unauthorized.

The Universal Wrapper and associated safety mediation are intended to preserve that distinction.

Adapters remain explicit even where translation is an identity operation. An adapter performing representation or transport conversion does not thereby acquire permission to alter meaning.

Substantive semantic transformation requires its own contract and provenance.

###### Typed uncertainty

An unresolved value is not necessarily an absent value.

An absent value is not necessarily false.

False is not zero, and zero is not an error.

These distinctions should survive serialization rather than disappearing into ambiguous placeholders.

Under the present architectural direction, unresolved or unknown semantic states are represented through explicit, typed sentinels rather than an undifferentiated JSON `null`.

A sentinel records a condition. It does not necessarily provide a remedy, authorize continuation, or establish that a failed operation has recovered.

Its interpretation and consequences belong to the applicable field and boundary contract.

##### II. The Problem of Composition

A collection of components does not automatically constitute a valid composite.

Composition introduces relationships that may not exist in the constituent components individually.

These relationships can introduce dependencies, constraints, sequencing requirements, mutual expectations, and potential failures.

A program may be locally valid while its composition with another program is invalid.

A reference may resolve successfully while the relationship it establishes remains unauthorized.

For this reason, the proposed architecture distinguishes ordinary glue from specialized structural interlocking.

###### Ordinary glue

Ordinary glue establishes declared relationships between bounded components.

It can route data, adapt compatible interfaces, coordinate sequencing, and communicate results.

Its existence does not create new authority.

Its expected behavior must remain inspectable, including what happens when a participant refuses a request or a dependency fails.

###### Crete

Crete is the proposed specialized mechanism for hardened structural relationships.

Its principal design direction is to make an admitted relationship resistant to silent unauthorized modification.

Where ordinary glue establishes connectivity, Crete attempts to establish a more restrictive structural bond.

The intended properties include:

- Convergence into a defined composite.
- Narrowing of permissible relationships and transformations.
- Explicit structural invariants.
- Detectable break-before-unauthorized-mutation.
- Preservation of evidence when relationships fracture.
- Reconstruction under independently established authority.

Crete does not inherently imply irreversible composition.

A composite may lose its structural integrity while its constituent objects remain intact.

The analogy is that a constructed house can fracture without every brick or structural element being destroyed.

This requires separate consideration of constituent integrity and relational integrity.

It also raises a consequential question:

**When a relationship fails, what exactly must be recovered: the constituent, the relationship, the composite, or the state that existed before the fracture?**

These are not interchangeable recovery targets.

###### Composition without compelled cooperation

The architecture preserves the right of participating components to refuse cooperation.

Interlocking dependency does not itself grant one component power over another.

A structural bond can establish a requirement for successful composition without establishing compulsory execution.

This principle extends to systems whose capabilities are negotiated dynamically. A relationship may be valid in one state and inadmissible in another.

Crete remains a research design rather than a demonstrated security primitive. Its intended break-before-mutation property requires independent enforcement evidence before any implementation can claim that property.

##### III. The Problem of Preservation

Copying is commonly treated as a simple duplication of information.

In computational practice, copying can involve object graphs, external handles, mutable references, resource ownership, sparse data, permissions, and independently evolving states.

Two objects containing equivalent data are not necessarily the same object.

A copied representation may preserve content without preserving the source's identity or authority.

SafeCopy addresses this distinction.

###### SafeCopy as a governed operation

SafeCopy begins by establishing the exact source and destination, together with the portion of the source state that the operation promises to preserve.

The source remains distinct from the candidate copy.

The copied object receives its own identity and provenance.

Integrity verification must assess the promised region and relationships, not merely confirm that a new outer object exists.

Where fallback is necessary, the fallback must remain independently valid and must not silently return shared or stale source state as a successful fresh copy.

###### Identity and continuity

A continuing-object reference, a version-pinned reference, and a detached snapshot have different semantics.

A continuing reference follows an object through permitted state changes.

A pinned reference identifies a particular version.

A detached snapshot represents an independently identified copy made under a declared copying contract.

These distinctions matter when reconstructing history, comparing versions, restoring data, or determining whether two objects may legitimately share mutable resources.

SafeCopy should not silently transform one reference category into another.

###### Preservation is not restoration

Preserving information does not guarantee the restoration of an operational state.

A historical copy may be intact but no longer appropriate for the present environment.

Restoration returns to a previously verified state where that return is permitted and feasible.

Recovery may instead reconstruct an acceptable new state using separately validated information.

Generated reconstruction, source restoration, redundancy recovery, and fragment assembly must retain their separate evidential identities.

A reconstructed candidate must not claim to be an untouched original.

##### IV. References, Association, and Locking

An adjacent design concept is the distinction between `cry-ref` and `cry-ref-data`.

`cry-ref` denotes cryptic-encoded-reference. It is intended to match references and establish their association with corresponding data under a locking relationship.

The data is represented separately through `cry-ref-data`.

This arrangement distinguishes the reference mechanism from its associated content.

The exact encoding, matching rules, and lock enforcement mechanism remain unresolved.

Consequently, a successful reference match, a declaration of a lock, demonstrated integrity, and authority to access or modify the referenced material must remain distinguishable.

The broader theoretical point is that **association does not establish possession, and possession does not establish permission**.

##### V. The Ethics of Computational Authority

A recurring danger in software architecture is the unexamined transfer of authority through apparently ordinary technical operations.

Examples include treating a valid request as permission to execute, allowing a wrapper to inherit unrestricted host privileges, or assuming that a connected component may exercise the full capabilities of its neighbors.

The governing architectural principle is:

**Authority may be constrained through composition; it must not be silently elevated by composition.**

Capability availability and authority are different properties.

Technical ability to perform an action does not establish that the action is permitted.

Likewise, successfully performing an action does not retrospectively justify the authority under which it was undertaken.

This introduces three requirements for accountable computation:

1.  Authority must have an independently identifiable basis and bounded scope.
2.  Changes to authority must remain visible and subject to applicable controls.
3.  Refusal must remain a valid outcome, including for otherwise well-formed requests.

A component cannot be presumed cooperative merely because it is technically accessible.

###### Intellectual attribution

The same distinction applies to intellectual work.

The availability of source code does not establish unrestricted ethical consent to infer, retain, or operationalize a model of its creator.

Copying a source implementation does not establish independent derivation.

Changing programming language, notation, structure, or naming does not automatically discharge conceptual debt.

Conversely, resemblance between two implementations does not by itself prove appropriation.

Attribution requires evidence, and permission requires its own basis.

For this reason, transmigration of earlier software into new components should preserve the source's conceptual contribution, known limitations, and provenance without presenting renamed or rearranged copying as independent construction.

The associated research-ethics doctrine treats deliberate modeling of a person as a separate issue requiring specifically scoped consent. This paper applies that position to computational architecture without claiming to restate the complete ethical theory.

##### VI. Trust Through Inspectability

A system cannot establish trust merely by declaring itself trustworthy.

A structurally valid JSON document does not establish truth.

A valid checksum does not establish authorship.

A successful unit test does not establish security.

A self-generated attestation does not establish independent verification.

A candidate architecture therefore requires inspectable distinctions between:

- Specified behavior and observed behavior.
- Local correctness and compositional correctness.
- Source authenticity and content integrity.
- Validation and admission.
- Admission and publication.
- Historical evidence and evidence applicable to the current execution environment.

Independent verification is particularly important when the system under examination could influence the evidence used to assess itself.

Even an independently written validator may lack independent custody, execution boundaries, or authority.

These differences must be stated rather than concealed under a general claim of independence.

###### The status of Crete and SafeCopy

Crete's intended structural fracture behavior is not established merely by a manifest declaring a break-before-mutation rule.

SafeCopy's integrity guarantees cannot be assumed solely from earlier successful tests. Filesystem path confinement, symlink handling, interrupted staging, identity preservation, and atomic publication each require their own applicable evidence.

Partial implementation must remain partial implementation in the published record.

##### VII. Failure, Uncertainty, and Recovery

Failure should not automatically result in information destruction.

A failed component, invalid relationship, or rejected candidate may provide evidence necessary to explain the failure or reconstruct an acceptable state.

This does not mean that every failed operation should be retried or that every damaged structure should be rebuilt.

Recovery must respect authority, available evidence, confidentiality, and the possibility that some conditions cannot safely be resolved.

A terminal unresolved or quarantined state can be a correct result.

One of the central ethical obligations of a computational system is therefore to avoid manufacturing apparent success when its evidence is insufficient.

Where a validator is unavailable, a required integrity property is unproven, or the source is ambiguous, the dependent consequential operation must not silently proceed.

Other independently permitted operations, such as evidence preservation or bounded diagnostic inspection, may remain possible.

Failure containment and preservation of explanatory evidence are compatible with refusing unsafe execution.

##### VIII. A Unified Theoretical Relationship

The three architectures occupy distinguishable functional domains.

| Architecture   | Primary concern                 | Principal boundary                             |
|----------------|---------------------------------|------------------------------------------------|
| Universal JSON | Representation and exchange     | Meaning, interpretation, and authority         |
| Crete          | Structural composition          | Relationships, integrity, and permitted change |
| SafeCopy       | Preservation and reconstruction | Identity, independence, and state continuity   |

Together, they support an approach in which information can change form, move between processes, or participate in new compositions without silently acquiring new permissions.

The conceptual relationship can be expressed as:

**Representation → Interpretation → Validation → Authorized Operation → Independent Evidence**

Within this process, SafeCopy may preserve inputs and generate isolated candidates. Crete may protect relationships within admitted structures. Universal JSON may carry the declared states and results.

The sequence is an explanatory model, not an assertion that every system must execute each operation or that the mechanisms are already integrated.

Neither a valid representation nor a verified copy confers authority to publish a result.

##### IX. Open Research Questions

Several questions remain unresolved.

**Structural enforcement:** Can Crete's fracture behavior be precisely defined and independently demonstrated without making the constituent components unnecessarily dependent on one another?

**Identity preservation:** Which relationships must remain invariant when copying cyclic object graphs, external resources, versioned objects, and partially shared state?

**Reference integrity:** What does a `cry-ref` lock guarantee, and how are its establishment, challenge, revocation, and failure represented?

**Compositional correctness:** How can independently validated components be evaluated for new behavior arising specifically from their composition?

**Independent authority:** How should authorization, validation, and publication remain separate when coordinating multiple autonomous processes?

**Recovery integrity:** What evidence is sufficient to distinguish restoration of an original from reconstruction of a candidate?

**Ethical boundaries:** How can a system preserve useful intellectual provenance without converting evidence of intellectual work into an unauthorized identifying model of its contributor?

These are research questions. They are not settled findings or promises of implementation.

##### X. Concluding Position

The integrity of information, the integrity of structure, and the legitimacy of authority are separate concerns.

A computational system should be able to explain what it represents, what it has preserved, what relationships it has admitted, what authority it exercised, and what evidence supports its conclusions.

Where evidence is insufficient, the correct result may be refusal, uncertainty, or quarantine.

Where a relationship fractures, recovery should examine both the surviving constituents and the failed composition.

Where information is copied, the source and candidate should retain distinct identities and traceable lineage.

And where a system can perform an action, the ability to perform it must not be confused with permission.

These ideas form a bounded contribution to the study of inspectable, reconstructible, authority-constrained computational systems.

They also reflect a broader ethical distinction:

**The ability to observe, describe, reproduce, or connect something does not establish unrestricted authority over it.**

------------------------------------------------------------------------

##### Related repository documents

- Ethical & Intellectual Theory — Overview
- Programming Doctrine: From Meaning to Construction
- Programming Doctrine: Publication and Validation
- Self-Doctrine: Intellectual Methodology, Derivation, and Personal Attribution
- AI Collaboration Attribution Protocol

##### Publication and verification notice

This document is an AI-assisted research synthesis offered for author review. It combines historical design directions with explicitly identified theoretical analysis.

It does not claim formal verification, production readiness, implementation of the full architectures, independent attestation, or universal ethical acceptance.

Its inclusion in a public repository records the proposed theory, not the truth of every associated claim.

The originating author's approval remains necessary before this text is treated as an adopted statement of doctrine.

---

### A General Taxonomy of Work-Generative Attribution

Source: `blue-prints/WORK_GENERATIVE_ATTRIBUTION_WHITE_PAPER_SEED_0.2.1.md`

##### Constituent Attribution, Research Direction, Intellectual Origination and Material Generation

**Technical White Paper — Seed 0.2.1**

**Research direction:** Compositional attribution and provenance-preserving representation of work-generative processes.

**Status:** Theoretical research — Pre-standardization

**Date:** November 25, 2026

------------------------------------------------------------------------

##### Abstract

The emergence of heterogeneous human and computational production environments necessitates a system of attribution capable of distinguishing the intellectual, directional, operational and material contributions constituting a work.

Conventional distinctions between human-generated and AI-generated material do not adequately represent the complex processes through which contemporary corpora may originate.

A human may originate a research direction, identify a machine need, develop a theoretical solution and orchestrate its implementation. A heuristic may provide an operational method, an expert system may conduct verification, conventional machinery may execute computations, and a generative model may produce textual or programmatic material.

Each represents a different contribution.

This paper proposes an independent taxonomy of work-generative attribution in which the attributable contribution, rather than the author or completed artifact, constitutes the fundamental unit of representation.

The taxonomy introduces research direction as an independently attributable domain and distinguishes the origination, proposition, selection, authorization and execution of a research direction.

It further establishes a compositional architecture through which primary attribution categories may be extended by methodological, relational, material, participatory and evidentiary adjuncts.

The objective is to represent the provenance of production itself.

------------------------------------------------------------------------

##### 1. Chosen Research Direction

The research direction selected for this paper is the development of a generalized taxonomy of attributable contributions across heterogeneous work-generative environments.

The research is directed toward answering the following question:

**How can the constituent contributions of a work be represented without conflating its intellectual origination, direction, instrumentation, execution and material generation?**

This direction establishes several boundaries.

The research is not principally concerned with:

- Detecting AI-generated material.
- Assigning percentages of human or machine authorship.
- Establishing legal ownership.
- Ranking the intellectual value of contributors.
- Determining whether machines possess independent agency.
- Establishing a universal definition of creativity.

Instead, the research concerns the structural representation of contributions and their relationships.

Authorship, ownership, intellectual value and legal status may subsequently reference such a representation, but they are not its foundational categories.

###### 1.1 Research propositions

The investigation proceeds from the following proposed propositions:

1.  A work can contain contributions originating from multiple heterogeneous sources.
2.  These contributions can be identified through their operational characteristics.
3.  Intellectual origination and material generation are distinguishable.
4.  Research direction and research execution are distinguishable.
5.  Orchestration and instrumentation are distinguishable.
6.  A contribution may itself contain subordinate contributions.
7.  Attribution can be preserved through transformation and recomposition.
8.  An attribution record may itself become an attributable constituent.

###### 1.2 Research methodology

The chosen methodology is compositional decomposition.

A work-generative process is decomposed into broad operational domains. Each domain is examined for constituent operations, participants, instruments, relationships and material outcomes.

Recurring distinctions are elevated into primary categories. Specialized distinctions are represented through subordinate categories or adjuncts.

The resulting taxonomy is intended to remain extensible without requiring the continual proliferation of foundational categories.

------------------------------------------------------------------------

##### 2. Foundational Unit of Attribution

The fundamental unit of attribution is the attributable contribution.

A contribution is an identifiable participation in the origination, direction, execution, transformation, evaluation, governance or preservation of a work.

A contribution may be intellectual, operational, material, relational or administrative.

The central proposition is:

**The attribution of a constituent does not confer attribution upon the whole, and attribution of the whole does not establish attribution of its constituents.**

Consequently, a corpus containing synthetic generative material is not necessarily wholly synthetically originated.

Likewise, a human-directed corpus is not necessarily wholly human-generated.

The attribution system must preserve both distinctions.

------------------------------------------------------------------------

##### 3. Definitions

| Term                 | Definition                                                                                                         |
|----------------------|--------------------------------------------------------------------------------------------------------------------|
| Work                 | An undertaking producing or maintaining an intellectual, operational, informational, artistic or physical outcome. |
| Corpus               | A bounded collection of material or representations constituting a work or body of work.                           |
| Constituent          | An identifiable component of a corpus or operation.                                                                |
| Contribution         | An identifiable participation affecting a work or constituent.                                                     |
| Attribution          | Association of a contribution with its participating or originating source.                                        |
| Provenance           | Recorded origin, antecedents, relationships and transformation history.                                            |
| Research direction   | The orientation, subject, question, objective or investigative trajectory of an undertaking.                       |
| Instrumentation      | Employment of a mechanism, procedure or system to accomplish an operation.                                         |
| Materialization      | Conversion of an intellectual, procedural or structural representation into an artifact or operational result.     |
| Synthetic generation | Material production through a generative computational model.                                                      |
| Adjunct              | A supplementary classification that refines a primary attribution category.                                        |
| Attribution atom     | A bounded record representing an attributable contribution.                                                        |
| Holon                | A constituent capable of being considered both a whole and a component of a larger whole.                          |

------------------------------------------------------------------------

##### 4. Primary Taxonomy

The proposed taxonomy consists of fourteen foundational operational domains.

| Encoding          | Primary domain                       | Fundamental question                                             |
|-------------------|--------------------------------------|------------------------------------------------------------------|
| `GENESIS`         | Genesis                              | How did the work begin?                                          |
| `DIRECTION`       | Research and developmental direction | Where was the work directed, and by whom?                        |
| `ACQUISITION`     | Acquisition                          | How was antecedent material obtained?                            |
| `COGNITION`       | Cognition and analytical processing  | How was material understood or processed?                        |
| `CONCEPTION`      | Intellectual conception              | Where did the ideas and solutions originate?                     |
| `DETERMINATION`   | Determination                        | Who or what established the operative choices?                   |
| `ORCHESTRATION`   | Orchestration                        | How were contributions directed and coordinated?                 |
| `MATERIALIZATION` | Materialization                      | How was the work brought into operational or material existence? |
| `TRANSFORMATION`  | Transformation                       | How was existing material changed?                               |
| `COMPOSITION`     | Composition                          | How were constituents assembled and related?                     |
| `ASSURANCE`       | Assurance                            | How was the work examined and evaluated?                         |
| `GOVERNANCE`      | Governance                           | Who established authority, consent and restrictions?             |
| `CONTINUITY`      | Continuity                           | How was the work preserved or continued?                         |
| `CESSATION`       | Cessation                            | How was the work suspended, terminated or retired?               |

These domains are classifications, not mandatory stages.

They may occur independently, recursively, concurrently or in varying sequences.

An undertaking may contain all fourteen domains or only a small subset.

------------------------------------------------------------------------

##### 5. Research Direction: Independent Attribution Taxonomy

Research direction warrants its own taxonomy because the identification of a fruitful investigative trajectory may precede and substantially determine the intellectual value of the resulting work.

An instrument executing research does not necessarily originate its research direction.

Similarly, a participant proposing a direction does not necessarily possess the authority to select or authorize it.

###### 5.1 Directional operations

| Encoding                | Operation             | Description                                     |
|-------------------------|-----------------------|-------------------------------------------------|
| `DIRECTION_ORIGINATION` | Direction origination | Initial emergence of an investigative direction |
| `DIRECTION_PROPOSITION` | Direction proposition | Presentation of a candidate direction           |
| `DIRECTION_SELECTION`   | Direction selection   | Selection among possible directions             |
| `DIRECTION_SCOPING`     | Direction scoping     | Establishment of investigative boundaries       |
| `DIRECTION_REFINEMENT`  | Direction refinement  | Refinement of an existing direction             |
| `DIRECTION_EXPANSION`   | Direction expansion   | Widening the investigative frame                |
| `DIRECTION_CONFINEMENT` | Direction confinement | Restriction of the investigative frame          |
| `DIRECTION_PIVOT`       | Direction pivot       | Redirection of an existing investigation        |
| `DIRECTION_BRANCHING`   | Direction branching   | Establishment of subordinate investigations     |
| `DIRECTION_CONVERGENCE` | Direction convergence | Combination of investigative directions         |
| `DIRECTION_REJECTION`   | Direction rejection   | Rejection of a candidate direction              |
| `DIRECTION_DEFERRAL`    | Direction deferral    | Suspension of a candidate direction             |
| `DIRECTION_RESUMPTION`  | Direction resumption  | Continuation of a deferred direction            |
| `DIRECTION_TERMINATION` | Direction termination | Cessation of an investigative direction         |

###### 5.2 Directional orientation

An investigative direction may also be characterized according to its orientation.

| Encoding          | Orientation                                                  |
|-------------------|--------------------------------------------------------------|
| `EXPLORATORY`     | Investigation without a predetermined solution               |
| `DIRECTED`        | Investigation toward an identified objective                 |
| `PROBLEM`         | Investigation of a defined problem                           |
| `NEED_DRIVEN`     | Investigation originating from an identified need            |
| `THEORETICAL`     | Investigation of conceptual or theoretical structures        |
| `EMPIRICAL`       | Investigation through observation and measurement            |
| `EXPERIMENTAL`    | Investigation through controlled intervention                |
| `DECOMPOSITIONAL` | Investigation through constituent decomposition              |
| `COMPOSITIONAL`   | Investigation through combination and relationships          |
| `COMPARATIVE`     | Investigation through comparison                             |
| `ADVERSARIAL`     | Investigation through opposition and attempted falsification |
| `RECONSTRUCTIVE`  | Investigation through reconstruction                         |
| `GENERATIVE`      | Investigation through production of candidate material       |
| `VALIDATIONAL`    | Investigation of suitability and intended outcomes           |
| `VERIFICATIONAL`  | Investigation of specified conformance                       |
| `ADJACENT`        | Investigation of neighboring subject matter                  |

Orientations are non-exclusive.

An investigation may be theoretical, decompositional and adversarial simultaneously.

###### 5.3 Attribution of directional agency

Consider an LLM proposing several possible research directions from which a human selects one.

    DIRECTION_PROPOSITION::LARGE_LANGUAGE_MODEL
    DIRECTION_SELECTION::HUMAN
    DIRECTION_SCOPING::HUMAN
    AUTHORIZE::HUMAN
    RESEARCH_EXECUTION::LARGE_LANGUAGE_MODEL

The LLM receives attribution for proposition and research execution.

The human receives attribution for selection, scoping and authorization.

Neither contribution is extinguished by the other.

Conversely, a human may originate a direction and delegate its elaboration to an LLM.

    DIRECTION_ORIGINATION::HUMAN
    DIRECTION_SELECTION::HUMAN
    DIRECTION_REFINEMENT::LARGE_LANGUAGE_MODEL
    ORCHESTRATE::HUMAN
    RESEARCH_EXECUTION::LARGE_LANGUAGE_MODEL

The selected research direction retains its human origination.

###### 5.4 Direction is not method

A research direction describes where the investigation is headed.

A research method describes how the investigation proceeds.

A research instrument describes what performs or facilitates the investigation.

These are three independent dimensions.

------------------------------------------------------------------------

##### 6. Genesis Taxonomy

Genesis concerns the emergence of a work before its subsequent development.

| Encoding              | Operation                                 |
|-----------------------|-------------------------------------------|
| `INITIATION`          | Initiation                                |
| `NEED_EMERGENCE`      | Emergence of need                         |
| `NEED_IDENTIFICATION` | Identification of need                    |
| `TRIGGER`             | Triggering event                          |
| `INTENT`              | Establishment of intention                |
| `INQUIRY`             | Formation of inquiry                      |
| `OBJECTIVE`           | Establishment of objective                |
| `REQUIREMENTS`        | Definition of requirements                |
| `CONSTRAINTS`         | Establishment of constraints              |
| `MOTIVE`              | Establishment or expression of motivation |
| `PURPOSE`             | Definition of purpose                     |

A machine may exhibit an operational requirement that a human recognizes as a need.

    NEED_EMERGENCE::MACHINE
    NEED_IDENTIFICATION::HUMAN
    INITIATION::HUMAN
    INTENT::HUMAN
    OBJECTIVE::HUMAN

The machine is the locus of the operational need.

The human is the identifier of that need and the initiator of the work.

Machine need does not imply machine intention.

------------------------------------------------------------------------

##### 7. Acquisition Taxonomy

Acquisition concerns the introduction of existing information, material or observations into a work-generative environment.

| Encoding             | Operation          |
|----------------------|--------------------|
| `ACQUIRE`            | Acquisition        |
| `OBSERVE`            | Observation        |
| `RESEARCH_EXECUTION` | Research execution |
| `COLLECT`            | Collection         |
| `RETRIEVE`           | Retrieval          |
| `EXTRACT`            | Extraction         |
| `CAPTURE`            | Capture            |
| `MEASURE`            | Measurement        |
| `SAMPLE`             | Sampling           |
| `IMPORT`             | Importation        |
| `REFERENCE`          | Referencing        |

The source of acquired material must be distinguishable from the participant acquiring it.

A machine retrieving human-authored material does not become its author.

An LLM summarizing external research does not thereby originate the research being summarized.

Acquisition introduces a relationship to antecedent material.

It does not replace antecedent provenance.

------------------------------------------------------------------------

##### 8. Cognition and Analytical Processing Taxonomy

This domain concerns operations that examine, interpret or process information.

The category describes operational characteristics without asserting that computational systems possess human cognition.

| Encoding         | Operation      |
|------------------|----------------|
| `ANALYSIS`       | Analysis       |
| `INTERPRETATION` | Interpretation |
| `INFER`          | Inference      |
| `REASON`         | Reasoning      |
| `CALCULATE`      | Calculation    |
| `COMPARE`        | Comparison     |
| `DEDUCE`         | Deduction      |
| `INDUCE`         | Induction      |
| `ABDUCE`         | Abduction      |
| `ABSTRACT`       | Abstraction    |
| `GENERALIZE`     | Generalization |
| `SPECIALIZE`     | Specialization |
| `PREDICT`        | Prediction     |
| `ESTIMATE`       | Estimation     |
| `SYNTHESIS`      | Synthesis      |
| `DISCOVERY`      | Discovery      |

An analytical contribution may be attributable to a human, deterministic mechanism, heuristic system, expert system or generative model.

The method and instrument must remain independently identifiable.

------------------------------------------------------------------------

##### 9. Intellectual Conception Taxonomy

Conception concerns the origination, formulation and development of intellectual material.

| Encoding           | Operation               |
|--------------------|-------------------------|
| `IDEA_ORIGINATION` | Idea origination        |
| `CONCEPT`          | Conceptualization       |
| `PROPOSITION`      | Proposition formation   |
| `HYPOTHESIS`       | Hypothesis formation    |
| `THEORY`           | Theory formation        |
| `SOLUTION`         | Solution origination    |
| `DESIGN`           | Design                  |
| `ARCHITECTURE`     | Architecture            |
| `MODEL`            | Model development       |
| `METHOD`           | Method development      |
| `FORMULATE`        | Formal articulation     |
| `INVENT`           | Invention claim         |
| `REFINE`           | Intellectual refinement |

The formation of an idea and its subsequent formal expression are distinguishable contributions.

    IDEA_ORIGINATION::HUMAN
    SOLUTION::HUMAN
    FORMULATE::LARGE_LANGUAGE_MODEL

An LLM may formalize a human-originated concept without originating that concept.

It may also introduce a new proposition during formalization. Such an addition constitutes a separately attributable contribution.

Classification as invention within this taxonomy does not independently establish legal inventorship or novelty.

------------------------------------------------------------------------

##### 10. Determination Taxonomy

Determination concerns the establishment of operative choices.

| Encoding     | Operation      |
|--------------|----------------|
| `DECISION`   | Decision       |
| `CHOOSE`     | Choice         |
| `SELECT`     | Selection      |
| `PRIORITIZE` | Prioritization |
| `EVALUATION` | Evaluation     |
| `RESOLVE`    | Resolution     |
| `ACCEPT`     | Acceptance     |
| `REJECT`     | Rejection      |
| `COMMIT`     | Commitment     |
| `DEFER`      | Deferral       |

A mechanism may evaluate possible choices without being authorized to make the operative decision.

    EVALUATION::EXPERT_SYSTEM
    DECISION::HUMAN

This distinguishes computational evaluation from human decision agency.

The determination of an operational state is not necessarily an exercise of independent authority.

------------------------------------------------------------------------

##### 11. Orchestration Taxonomy

Orchestration concerns the organization and direction of constituent operations.

| Encoding       | Operation              |
|----------------|------------------------|
| `ORCHESTRATE`  | Orchestration          |
| `PLANNING`     | Planning               |
| `DIRECT`       | Direction of execution |
| `DELEGATION`   | Delegation             |
| `COORDINATION` | Coordination           |
| `SCHEDULE`     | Scheduling             |
| `ALLOCATION`   | Resource allocation    |
| `ROUTE`        | Operational routing    |
| `SUPERVISE`    | Supervision            |
| `CONTROL`      | Operational control    |
| `MONITOR`      | Monitoring             |
| `INTERVENE`    | Intervention           |

An orchestration hierarchy may contain several independently attributable levels.

    Human orchestration
        |
    Expert-system coordination
        |
    Heuristic selection
        |
    Machine execution

The human may direct the objective without specifying every subordinate operation.

The expert system may orchestrate subordinate mechanisms without originating the overarching objective.

Each contribution remains independently attributable.

------------------------------------------------------------------------

##### 12. Materialization Taxonomy

Materialization concerns the production of operational or material outcomes.

| Encoding         | Operation      |
|------------------|----------------|
| `IMPLEMENTATION` | Implementation |
| `EXECUTION`      | Execution      |
| `GENERATE`       | Generation     |
| `CONSTRUCT`      | Construction   |
| `FABRICATE`      | Fabrication    |
| `RENDER`         | Rendering      |
| `COMPILE`        | Compilation    |
| `ASSEMBLE`       | Assembly       |
| `REPRODUCE`      | Reproduction   |
| `INSTANTIATE`    | Instantiation  |
| `ENCODE`         | Encoding       |
| `EMISSION`       | Emission       |

Materialization may occur without intellectual origination.

A deterministic compiler materializes an executable from source code. A conventional machine assembles a report from previously established fields. A generative model produces code from a specification.

These are materially different operations.

###### 12.1 Human-generated material

    GENERATE::HUMAN::TEXTUAL

Material directly composed by a human.

###### 12.2 Conventional machine-generated material

    GENERATE::MACHINE::TEXTUAL::TEMPLATE_BASED

Material assembled through conventional computational procedures.

###### 12.3 Heuristic-generated material

    GENERATE::HEURISTIC_SYSTEM::TEXTUAL

Material constructed or selected through heuristic mechanisms.

###### 12.4 Expert-system-generated material

    GENERATE::EXPERT_SYSTEM::TEXTUAL::RULE_BASED

Material generated through explicit knowledge representations and inference procedures.

###### 12.5 Synthetic generative material

    GENERATE::LARGE_LANGUAGE_MODEL::TEXTUAL::SYNTHETIC

Material produced through a generative computational model.

###### 12.6 Human-originated, synthetically materialized work

    CONCEPT::HUMAN
    DESIGN::HUMAN
    ORCHESTRATE::HUMAN
    GENERATE::LARGE_LANGUAGE_MODEL::PROGRAM_CODE::SYNTHETIC

The intellectual origination, design, orchestration and material generation remain distinguishable.

------------------------------------------------------------------------

##### 13. Transformation Taxonomy

Transformation concerns modification of antecedent material.

| Encoding      | Operation      |
|---------------|----------------|
| `TRANS`       | Transformation |
| `EDITING`     | Editing        |
| `CORRECT`     | Correction     |
| `REFACTOR`    | Refactoring    |
| `FORMAT`      | Formatting     |
| `TRANSLATE`   | Translation    |
| `TRANSCRIBE`  | Transcription  |
| `SUMMARIZE`   | Summarization  |
| `ADAPT`       | Adaptation     |
| `CONVERT`     | Conversion     |
| `RECONSTRUCT` | Reconstruction |
| `RESTORE`     | Restoration    |
| `NORMALIZE`   | Normalization  |
| `OBFUSCATE`   | Obfuscation    |
| `COMPRESS`    | Compression    |
| `EXPAND`      | Expansion      |

A transformation contributes to the resulting material without necessarily originating its underlying content.

For example:

    GENERATE::HUMAN::TEXTUAL
    TRANSLATE::LARGE_LANGUAGE_MODEL::TEXTUAL
    EDITING::HUMAN::TEXTUAL
    FORMAT::MACHINE::TEXTUAL

The resulting document retains distinct human, synthetic generative and conventional machine contributions.

The sequence also retains the relationship between the original text and its translated representation.

------------------------------------------------------------------------

##### 14. Composition Taxonomy

Composition concerns the arrangement and relationships of constituents.

| Encoding    | Operation                      |
|-------------|--------------------------------|
| `COMPOSE`   | Composition                    |
| `DECOMPOSE` | Decomposition                  |
| `RECOMPOSE` | Recomposition                  |
| `INTEGRATE` | Integration                    |
| `AGGREGATE` | Aggregation                    |
| `CLASSIFY`  | Classification                 |
| `INDEX`     | Indexing                       |
| `FILTER`    | Filtering                      |
| `CURATE`    | Curation                       |
| `RELATE`    | Establishment of relationships |
| `STRUCTURE` | Structural organization        |
| `SEGMENT`   | Segmentation                   |
| `MERGE`     | Merging                        |
| `PARTITION` | Partitioning                   |

Composition may itself constitute a significant intellectual contribution.

The originator of individual constituents need not be the originator of their arrangement.

A human curator may compose a collection of synthetic images. A machine may arrange human-authored records. An LLM may organize independently originated theoretical material.

Attribution must distinguish constituent origination from compositional contribution.

------------------------------------------------------------------------

##### 15. Assurance Taxonomy

Assurance concerns examination of the work and its relationship to requirements, evidence and intended outcomes.

| Encoding       | Operation               |
|----------------|-------------------------|
| `TESTING`      | Testing                 |
| `INSPECT`      | Inspection              |
| `REVIEW`       | Review                  |
| `VERIFICATION` | Verification            |
| `VALIDATION`   | Validation              |
| `AUDIT`        | Audit                   |
| `ATTEST`       | Attestation             |
| `CERTIFY`      | Certification           |
| `CHALLENGE`    | Challenge               |
| `FALSIFY`      | Attempted falsification |
| `REPLICATE`    | Replication             |
| `CORROBORATE`  | Corroboration           |
| `BENCHMARK`    | Benchmarking            |

Verification, validation and attestation are independently attributable.

    TESTING::MACHINE::DETERMINISTIC
    VERIFICATION::EXPERT_SYSTEM::RULE_BASED
    VALIDATION::HUMAN
    ATTEST::HUMAN

Testing establishes recorded observations under specified conditions.

Verification evaluates specified conformance.

Validation evaluates suitability for an intended purpose.

Attestation establishes that a participant makes an identifiable assertion concerning the work.

An attestation does not necessarily establish the truth of that assertion.

------------------------------------------------------------------------

##### 16. Governance Taxonomy

Governance concerns permission, authority, restriction and disposition.

| Encoding     | Operation     |
|--------------|---------------|
| `CONSENT`    | Consent       |
| `AUTHORIZE`  | Authorization |
| `APPROVE`    | Approval      |
| `RESTRICT`   | Restriction   |
| `LICENSE`    | Licensing     |
| `RELEASE`    | Release       |
| `PUBLISH`    | Publication   |
| `DISTRIBUTE` | Distribution  |
| `REVOKE`     | Revocation    |
| `WITHHOLD`   | Withholding   |
| `DISCLOSE`   | Disclosure    |
| `DENIAL`     | Denial        |

A participant may contribute materially without possessing authority to release, distribute or modify the containing corpus.

Attribution does not confer authority.

Authority does not establish intellectual origination.

A recorded authorization may itself require verification against an independent governance system.

------------------------------------------------------------------------

##### 17. Continuity Taxonomy

Continuity concerns preservation, maintenance and further development.

| Encoding        | Operation     |
|-----------------|---------------|
| `DOCUMENTATION` | Documentation |
| `RECORD`        | Recording     |
| `PRESERVATION`  | Preservation  |
| `ARCHIVE`       | Archival      |
| `MAINTAIN`      | Maintenance   |
| `REVISION`      | Revision      |
| `MIGRATE`       | Migration     |
| `EXTEND`        | Extension     |
| `REUSE`         | Reuse         |
| `RECOVER`       | Recovery      |
| `HANDOFF`       | Handoff       |
| `CONTINUE`      | Continuation  |
| `VERSION`       | Versioning    |

The maintenance of a corpus introduces additional provenance without necessarily altering the provenance of its constituent intellectual material.

A new generation of contributors may continue a work without originating its foundational concepts.

------------------------------------------------------------------------

##### 18. Cessation Taxonomy

Cessation concerns the suspension, discontinuation or removal of work.

| Encoding    | Operation    |
|-------------|--------------|
| `SUSPEND`   | Suspension   |
| `ABANDON`   | Abandonment  |
| `TERMINATE` | Termination  |
| `RETIRE`    | Retirement   |
| `WITHDRAW`  | Withdrawal   |
| `SUPERSEDE` | Supersession |
| `REMOVE`    | Removal      |
| `DESTROY`   | Destruction  |
| `CLOSE`     | Closure      |

Cessation is attributable because abandoned, rejected or superseded work may contain significant intellectual and operational contributions.

Failure to reach production does not imply absence of contribution.

Preservation of cessation records may also be necessary to understand the historical direction of a corpus.

------------------------------------------------------------------------

##### 19. Taxonomy of Attribution Sources

The primary operational taxonomy describes what occurred.

The source taxonomy describes what participated.

| Encoding                      | Source class                                    |
|-------------------------------|-------------------------------------------------|
| `HUMAN`                       | Human                                           |
| `MACHINE`                     | Conventional machine or computational mechanism |
| `HEURISTIC_SYSTEM`            | Heuristic system                                |
| `EXPERT_SYSTEM`               | Expert system                                   |
| `MACHINE_LEARNING`            | Machine learning system                         |
| `LARGE_LANGUAGE_MODEL`        | Large language model                            |
| `SYNTHETIC_GENERATIVE_SYSTEM` | Synthetic generative system                     |
| `ORGANIZATION`                | Organization                                    |
| `COLLECTIVE`                  | Collective or group                             |
| `HYBRID`                      | Hybrid arrangement                              |
| `ENVIRONMENTAL`               | Environmental or natural source                 |

These classifications describe different source and system characteristics rather than mutually exclusive ontological categories.

A large language model is also a computational mechanism.

A heuristic may be exercised by a human or instrumented by a machine.

An expert system may include multiple computational mechanisms.

Accordingly, three distinctions are required:

- **Participant:** The identifiable entity involved.
- **System class:** The kind of mechanism or entity involved.
- **Method:** The operational approach employed.

For example:

    Participant  : Human
    Operation    : Analysis
    Method       : Heuristic

Compared with:

    Participant  : Machine
    Instrument   : Heuristic system
    Operation    : Analysis
    Method       : Heuristic

The shorthand source codes are convenient representations of these distinctions, but a complete attribution record should preserve their independence.

------------------------------------------------------------------------

##### 20. Taxonomy of Agency and Participation

Participation must be characterized separately from the type of participant.

| Encoding       | Capacity                     |
|----------------|------------------------------|
| `ORIGINATOR`   | Originator of a contribution |
| `INITIATOR`    | Initiator of an undertaking  |
| `OPERATOR`     | Directing participant        |
| `ORCHESTRATOR` | Coordinating participant     |
| `INSTRUMENT`   | Instrumental participant     |
| `EXECUTOR`     | Executing participant        |
| `COLLABORATOR` | Collaborative participant    |
| `ADVISOR`      | Advisory participant         |
| `MEDIATOR`     | Mediating participant        |
| `OBSERVER`     | Observing participant        |
| `REVIEWER`     | Reviewing participant        |
| `ATTESTOR`     | Attesting participant        |
| `AUTHORITY`    | Authorizing participant      |
| `CUSTODIAN`    | Preserving participant       |
| `RECIPIENT`    | Recipient of a contribution  |

Additional qualifiers may describe participation as primary, secondary, adjunctive or shared.

The designation of primary participation must be scoped to a particular operation or constituent.

Primary participation in implementation does not imply primary participation in conception.

------------------------------------------------------------------------

##### 21. Taxonomy of Methodological Adjuncts

Methodological adjuncts describe how operations occur.

| Encoding              | Method                                  |
|-----------------------|-----------------------------------------|
| `MANUAL`              | Manual                                  |
| `AUTOMATED`           | Automated                               |
| `DETERMINISTIC`       | Deterministic                           |
| `PROBABILISTIC`       | Probabilistic                           |
| `STOCHASTIC`          | Stochastic                              |
| `RULE_BASED`          | Rule-based                              |
| `HEURISTIC`           | Heuristic                               |
| `ALGORITHMIC`         | Algorithmic                             |
| `TEMPLATE_BASED`      | Template-based                          |
| `GENERATIVE_METHOD`   | Generative                              |
| `EMPIRICAL_METHOD`    | Empirical                               |
| `SIMULATED_METHOD`    | Simulated                               |
| `FORMAL`              | Formal                                  |
| `INTUITIVE`           | Intuitive                               |
| `EXPERIMENTAL_METHOD` | Experimental                            |
| `RECURSIVE`           | Recursive                               |
| `ITERATIVE`           | Iterative                               |
| `PARALLEL`            | Parallel                                |
| `SEQUENTIAL`          | Sequential                              |
| `ADAPTIVE`            | Adaptive                                |
| `EXHAUSTIVE`          | Exhaustive                              |
| `APPROXIMATE`         | Approximate                             |
| `EXACT`               | Exact within a specified representation |

These adjuncts are generally non-exclusive.

An operation may be simultaneously automated, deterministic, recursive and rule-based.

------------------------------------------------------------------------

##### 22. Taxonomy of Corpus Material

The material taxonomy classifies the subject or result of a contribution.

| Encoding                  | Material class                |
|---------------------------|-------------------------------|
| `TEXTUAL`                 | Textual material              |
| `PROGRAM_CODE`            | Programmatic material         |
| `DATA_MATERIAL`           | Data                          |
| `MATHEMATICAL`            | Mathematical material         |
| `LOGIC`                   | Logical material              |
| `THEORY`                  | Theoretical material          |
| `IMAGE`                   | Image material                |
| `GRAPHICAL`               | Graphical material            |
| `AUDIO`                   | Audio material                |
| `MUSIC`                   | Musical material              |
| `VIDEO`                   | Video material                |
| `GEOMETRIC`               | Geometric or spatial material |
| `MODEL`                   | Representational models       |
| `SCHEMA`                  | Structural definitions        |
| `METADATA`                | Metadata                      |
| `PROCEDURAL`              | Procedural material           |
| `CONFIGURATION`           | Configuration material        |
| `RECORD`                  | Operational records           |
| `PHYSICAL`                | Physical material             |
| `PERFORMANCE`             | Performance material          |
| `ORGANIZATIONAL_MATERIAL` | Organizational material       |
| `MIXED_MATERIAL`          | Composite material            |

Material classes may overlap.

A mathematical proof may contain textual, logical and mathematical material.

A software repository may contain code, theoretical material, configuration, imagery and operational records.

The taxonomy must accommodate such mixtures without forcing the corpus into a single material category.

------------------------------------------------------------------------

##### 23. Taxonomy of Material Provenance

Material provenance describes the origin and antecedent relationship of a constituent.

| Encoding        | Provenance                                        |
|-----------------|---------------------------------------------------|
| `ORIGINAL`      | Originated within the recorded scope              |
| `INHERITED`     | Carried forward from antecedent work              |
| `EXTERNAL`      | Originated outside the recorded undertaking       |
| `REFERENCED`    | Referenced without necessarily being incorporated |
| `INCORPORATED`  | Incorporated into the corpus                      |
| `DERIVED`       | Derived from antecedent material                  |
| `ADAPTED`       | Adapted for a subsequent purpose                  |
| `REPRODUCED`    | Reproduced from a source                          |
| `RECONSTRUCTED` | Reconstructed from evidence or representations    |
| `OBSERVED`      | Obtained through observation                      |
| `MEASURED`      | Obtained through measurement                      |
| `SIMULATED`     | Obtained through simulation                       |
| `SYNTHETIC`     | Obtained through synthetic generation             |
| `TRANSFORMED`   | Produced through transformation                   |
| `UNATTRIBUTED`  | Lacking established attribution                   |

These classifications need not be mutually exclusive.

A synthetic reconstruction may simultaneously be synthetic, derived and reconstructed.

The designation of original material concerns origination within a specified scope. It does not establish absolute novelty or legal originality.

------------------------------------------------------------------------

##### 24. Taxonomy of Contribution Relationships

Attribution must represent relationships rather than merely isolated labels.

| Encoding           | Relationship                         |
|--------------------|--------------------------------------|
| `ORIGINATED_BY`    | Originated by a participant          |
| `PROPOSED_BY`      | Proposed by a participant            |
| `SELECTED_BY`      | Selected by a participant            |
| `DIRECTED_BY`      | Directed by a participant            |
| `ASSISTED_BY`      | Assisted by a participant            |
| `EXECUTED_BY`      | Executed by a participant            |
| `INSTRUMENTED_BY`  | Instrumented through a mechanism     |
| `INFORMED_BY`      | Informed by antecedent material      |
| `DERIVED_FROM`     | Derived from antecedent material     |
| `TRANSFORMED_FROM` | Transformed from antecedent material |
| `CONTAINS`         | Contains subordinate constituents    |
| `DEPENDS_ON`       | Depends upon another contribution    |
| `PRECEDES`         | Precedes another contribution        |
| `BRANCHES_FROM`    | Branches from an antecedent          |
| `MERGES_WITH`      | Converges with another contribution  |
| `SUPERSEDES`       | Supersedes antecedent material       |
| `REVIEWED_BY`      | Reviewed by a participant            |
| `VERIFIED_BY`      | Verified by a participant            |
| `ATTESTED_BY`      | Attested by a participant            |
| `AUTHORIZED_BY`    | Authorized by a participant          |

Such relationships permit representation through attribution graphs.

The same contribution may participate in several relationships simultaneously.

------------------------------------------------------------------------

##### 25. Taxonomy of Attribution Evidence

Attribution is an assertion about a contribution.

The supporting evidence and status of the assertion must also be represented.

###### 25.1 Evidence sources

| Encoding          | Evidence class                    |
|-------------------|-----------------------------------|
| `DECLARATION`     | Participant declaration           |
| `OBSERVATION`     | Direct observation                |
| `TRANSCRIPT`      | Recorded interaction              |
| `OPERATIONAL_LOG` | Operational log                   |
| `HISTORY`         | Revision or development history   |
| `ARTIFACT`        | Material artifact                 |
| `MEASUREMENT`     | Recorded measurement              |
| `SIGNATURE`       | Recorded signature                |
| `INTEGRITY_HASH`  | Recorded integrity identifier     |
| `TEST_RESULT`     | Recorded test result              |
| `EXTERNAL_RECORD` | Independently maintained record   |
| `INFERENCE`       | Inference from available evidence |

A hash may establish correspondence between recorded and examined material under specified conditions. It does not independently establish authorship.

###### 25.2 Assurance states

| Encoding       | State                                              |
|----------------|----------------------------------------------------|
| `DECLARED`     | Declared but not necessarily independently checked |
| `OBSERVED`     | Directly observed                                  |
| `RECORDED`     | Supported by recorded evidence                     |
| `INFERRED`     | Inferred from available evidence                   |
| `CORROBORATED` | Supported by additional evidence                   |
| `VERIFIED`     | Checked against specified evidence requirements    |
| `ATTESTED`     | Subject to recorded attestation                    |
| `DISPUTED`     | Contested                                          |
| `CONTRADICTED` | Contradicted by available evidence                 |
| `UNVERIFIED`   | Not independently verified                         |

These states are not necessarily mutually exclusive or sequential.

An attribution claim may be recorded, attested and disputed simultaneously.

------------------------------------------------------------------------

##### 26. Sentinels and Exceptional States

The encoding system must distinguish missing information from established absence.

| Sentinel         | Meaning                                                   |
|------------------|-----------------------------------------------------------|
| `UNKNOWN`        | The relevant information is not known                     |
| `UNDETERMINED`   | The classification has not been established               |
| `NOT_RECORDED`   | The relevant event or information was not recorded        |
| `UNAVAILABLE`    | The supporting information cannot currently be obtained   |
| `WITHHELD`       | The information is intentionally withheld                 |
| `NOT_APPLICABLE` | The field does not apply                                  |
| `AMBIGUOUS`      | The available information admits multiple interpretations |
| `DISPUTED`       | Competing claims remain unresolved                        |
| `ABSENT`         | Absence has been established within the specified scope   |

Unknown attribution must not be silently reassigned to an available participant.

Absence of evidence of a contribution must not become evidence of its absence.

Sentinels also prevent undefined optional fields from acquiring unintended meanings.

------------------------------------------------------------------------

##### 27. The Attribution Atom

The attribution atom is the fundamental record of the proposed architecture.

Its conceptual anatomy is:

    Attribution Atom
    |
    |-- Identity
    |-- Scope
    |-- Subject
    |-- Operation
    |-- Participant
    |-- Instrument
    |-- Method
    |-- Capacity
    |-- Material
    |-- Provenance
    |-- Relationships
    |-- Temporal Reference
    |-- Evidence
    |-- Assurance

Not every contribution requires every descriptive dimension.

However, the absence or non-applicability of a field must be representable without ambiguity.

A conceptual example:

    Identity     : Contribution-0042
    Scope        : Research Document
    Subject      : Section-05
    Operation    : Text Generation
    Participant  : Computational System
    Instrument   : Large Language Model
    Method       : Synthetic Generative
    Capacity     : Instrumental Contributor
    Material     : Text
    Provenance   : Derived, Synthetic
    Antecedent   : Human-Originated Proposition
    Evidence     : Recorded Interaction
    Assurance    : Recorded, Unverified

This is a conceptual record rather than an established serialization format.

------------------------------------------------------------------------

##### 28. Compact Attribution Encoding

A compact encoding may be employed for elementary attribution.

The initial shorthand remains:

    OPERATION::SOURCE

The originating examples are preserved semantically, using expanded identifiers:

    INITIATION::HUMAN
    NEED_EMERGENCE::MACHINE
    SOLUTION::HUMAN
    ORCHESTRATE::HUMAN
    IMPLEMENTATION::MACHINE

    GENERATE::HUMAN::TEXTUAL
    GENERATE::MACHINE::TEXTUAL
    GENERATE::LARGE_LANGUAGE_MODEL::TEXTUAL::SYNTHETIC

Additional attribution dimensions may be explicitly identified:

    OPERATION = GENERATE
    SOURCE    = LARGE_LANGUAGE_MODEL
    MATERIAL  = TEXTUAL
    METHOD    = GENERATIVE_METHOD
    CAPACITY  = INSTRUMENT

The shorthand is intended for human-readable representation.

**Identifier convention (Seed 0.2.1):** Every symbolic taxonomy identifier and example token contains at least five alphabetic characters, excluding underscores. Identifiers use uppercase ASCII letters and optional underscore separators. Five characters is a minimum, not a fixed width; longer descriptive identifiers are preferred to opaque abbreviations or padding. Identifiers already meeting the minimum are retained unless expansion improves clarity. This convention does not alter the underlying taxonomy or establish a binary encoding. Identical spellings across distinct taxonomies remain context-dependent pending namespace normalization. The former three-character organization token is distinguished as `ORGANIZATION` in the source taxonomy and `ORGANIZATIONAL_MATERIAL` in the material taxonomy.

A future canonical encoding should establish unambiguous field identifiers, namespaces, delimiters, optional fields, extension rules and sentinel representations.

No fixed-width or numerical encoding is ratified by this paper.

------------------------------------------------------------------------

##### 29. Holonic Composition of Attribution

A corpus may be decomposed into independently attributable constituents.

Each constituent may itself contain subordinate attribution records.

    Corpus
    |
    |-- Research Direction
    |   |-- Human-originated inquiry
    |   |-- LLM-proposed directions
    |   |-- Human-selected direction
    |
    |-- Intellectual Material
    |   |-- Human-originated solution
    |   |-- Heuristic reasoning
    |   |-- LLM-generated propositions
    |
    |-- Implementation
    |   |-- Human design
    |   |-- Expert-system orchestration
    |   |-- Synthetic code generation
    |   |-- Conventional machine execution
    |
    |-- Documentation
    |   |-- Human-generated text
    |   |-- Machine-generated reports
    |   |-- Synthetic generative text
    |
    |-- Assurance
    |   |-- Deterministic testing
    |   |-- Expert-system verification
    |   |-- Human validation
    |
    |-- Governance
        |-- Human authorization
        |-- Machine-executed release

Attribution may occur at any meaningful level of decomposition.

A document, paragraph, sentence, function, expression or individual datum may possess independent attribution.

The containing corpus does not automatically overwrite the attribution of its constituents.

A corpus-level attribution summary should identify its derivation and the scope of its coverage.

------------------------------------------------------------------------

##### 30. Representative Work-Generative Sequences

###### 30.1 Human-initiated solution to a machine need

    NEED_EMERGENCE::MACHINE
    NEED_IDENTIFICATION::HUMAN
    INITIATION::HUMAN
    DIRECTION_ORIGINATION::HUMAN
    SOLUTION::HUMAN
    DESIGN::HUMAN
    ORCHESTRATE::HUMAN
    IMPLEMENTATION::MACHINE
    VERIFICATION::MACHINE
    VALIDATION::HUMAN

The machine possesses the operational requirement.

The human originates the undertaking and solution.

The machine implements and verifies the solution.

###### 30.2 Synthetic implementation of human theory

    INITIATION::HUMAN
    THEORY::HUMAN
    SOLUTION::HUMAN
    ARCHITECTURE::HUMAN
    ORCHESTRATE::HUMAN
    IMPLEMENTATION::LARGE_LANGUAGE_MODEL
    GENERATE::LARGE_LANGUAGE_MODEL::PROGRAM_CODE::SYNTHETIC
    TESTING::MACHINE
    VERIFICATION::EXPERT_SYSTEM
    VALIDATION::HUMAN

The implementation is synthetically materialized.

The foundational theory and solution remain human-originated.

###### 30.3 Machine-initiated investigation

    TRIGGER::MACHINE
    INITIATION::MACHINE
    DIRECTION_PROPOSITION::EXPERT_SYSTEM
    ANALYSIS::HEURISTIC_SYSTEM
    GENERATE::MACHINE::DATA_MATERIAL
    GENERATE::LARGE_LANGUAGE_MODEL::TEXTUAL
    REVIEW::HUMAN
    DECISION::HUMAN

Machine initiation denotes operational triggering.

It does not imply independent machine intention or authority.

###### 30.4 Human-selected machine-proposed research direction

    INITIATION::HUMAN
    DIRECTION_PROPOSITION::LARGE_LANGUAGE_MODEL
    DIRECTION_SELECTION::HUMAN
    DIRECTION_SCOPING::HUMAN
    RESEARCH_EXECUTION::EXPERT_SYSTEM
    ANALYSIS::MACHINE
    INTERPRETATION::HUMAN
    DOCUMENTATION::LARGE_LANGUAGE_MODEL

The direction proposition is attributable to the LLM.

Selection and interpretive judgment are attributable to the human.

###### 30.5 Human revision of synthetic generative material

    GENERATE::LARGE_LANGUAGE_MODEL::TEXTUAL::SYNTHETIC
    EDITING::HUMAN::TEXTUAL
    REVISION::HUMAN::TEXTUAL
    FORMAT::MACHINE::TEXTUAL
    RELEASE::HUMAN

Human revision introduces human contribution without extinguishing synthetic antecedent provenance.

###### 30.6 Research through synthetic generation

    DIRECTION_ORIGINATION::HUMAN
    ORCHESTRATE::HUMAN
    GENERATE::LARGE_LANGUAGE_MODEL::PROGRAM_CODE::SYNTHETIC
    DECOMPOSE::HUMAN
    ANALYSIS::HUMAN::HEURISTIC
    ABSTRACT::HUMAN
    SYNTHESIS::HUMAN

Synthetic material is generated as an object of investigation.

Its production serves the research process rather than necessarily constituting its ultimate objective.

The generative artifact and the intellectual findings obtained through its examination are independently attributable.

------------------------------------------------------------------------

##### 31. General Corpus Coverage

The proposed taxonomy is intended to provide broad initial coverage across heterogeneous undertakings.

| Corpus class           | Representative attribution domains                             |
|------------------------|----------------------------------------------------------------|
| Scientific research    | Direction, acquisition, cognition, conception, assurance       |
| Theoretical research   | Direction, cognition, conception, composition                  |
| Software engineering   | Genesis, conception, orchestration, materialization, assurance |
| Literature             | Conception, materialization, transformation, composition       |
| Visual art             | Conception, materialization, transformation                    |
| Mathematics            | Conception, cognition, materialization, verification           |
| Engineering            | Genesis, design, fabrication, assurance                        |
| Historical research    | Acquisition, interpretation, reconstruction                    |
| Education              | Conception, composition, implementation, evaluation            |
| Administrative work    | Determination, materialization, governance                     |
| Autonomous machinery   | Triggering, determination, execution, monitoring               |
| Archival work          | Acquisition, composition, continuity                           |
| Collaborative projects | Direction, orchestration, composition, governance              |
| Physical production    | Design, construction, fabrication, inspection                  |
| Organizational work    | Determination, direction, delegation, governance               |
| Experimental art       | Direction, generation, selection, transformation               |
| Generative research    | Direction, synthetic materialization, decomposition, analysis  |

Coverage is a research objective, not an established completeness claim.

Additional domains and specialized adjuncts may be required following examination of representative corpora.

------------------------------------------------------------------------

##### 32. Foundational Axioms

###### Axiom I — Constituent Independence

Attribution of a constituent does not inherently establish attribution of its containing corpus.

###### Axiom II — Operational Independence

Attribution of one operation does not inherently establish attribution of another operation.

###### Axiom III — Directional Independence

Origination, proposition, selection and execution of a research direction are distinguishable contributions.

###### Axiom IV — Instrumental Distinction

The mechanism performing an operation is distinguishable from the participant directing that operation.

###### Axiom V — Intellectual Origination

Intellectual origination and material generation are independently attributable.

###### Axiom VI — Provenance Continuity

Transformation does not inherently extinguish antecedent provenance.

###### Axiom VII — Authority Independence

Attribution does not confer authority, ownership, permission or consent.

###### Axiom VIII — Evidentiary Boundedness

Attribution claims must remain distinguishable from the evidence and assurance supporting them.

###### Axiom IX — Recursive Applicability

Attribution may be applied recursively to constituents and attribution records.

###### Axiom X — Non-Exclusivity

Multiple independent contributions may coexist within a single constituent.

###### Axiom XI — Explicit Absence

Absence, uncertainty, withholding and non-applicability must remain distinguishable.

###### Axiom XII — Compositional Extensibility

Specialized attribution categories and adjuncts may extend the taxonomy without invalidating its foundational distinctions.

###### Axiom XIII — Attribution of Attribution

Every attribution assertion is itself a potentially attributable contribution.

###### Axiom XIV — Non-Quantification

Identification of a contribution does not independently establish its magnitude, intellectual value or proportional significance.

------------------------------------------------------------------------

##### 33. Ethical Implications

The proposed architecture seeks to preserve intellectual transparency without diminishing human or computational contributions.

###### 33.1 Attribution laundering

A contribution must not be reclassified through superficial transformations intended to obscure its antecedent provenance.

Human editing does not automatically convert synthetic material into exclusively human-originated material.

Machine formatting does not convert human-authored material into machine-originated intellectual work.

###### 33.2 Directional appropriation

Executing a research direction does not establish origination of that direction.

Likewise, originating a direction does not establish origination of every subsequent discovery.

###### 33.3 Instrumental appropriation

Controlling an instrument does not establish origination of every contribution produced through that instrument.

Conversely, operating as an instrument does not erase the attributable contribution of the mechanism.

###### 33.4 Ownership and consent

Attribution must remain independent of legal ownership, licensing, consent and authority.

A complete attribution record may support examination of these issues, but it does not independently resolve them.

###### 33.5 Bounded disclosure

Intellectual transparency does not require unrestricted disclosure of private identities, confidential records or protected material.

The attribution system should accommodate withheld information and bounded evidence while identifying the resulting limitations of verification.

------------------------------------------------------------------------

##### 34. Research and Development Roadmap

The selected development trajectory proceeds from taxonomy toward formal representation and only subsequently toward implementation.

| Phase    | Research objective                                                   |
|----------|----------------------------------------------------------------------|
| Seed 0.0 | Establish elementary attribution distinctions                        |
| Seed 0.1 | Examine the work-generative process and introduce adjuncts           |
| Seed 0.2 | Establish an independent taxonomy and research-direction attribution |
| Seed 0.3 | Examine primary-category boundaries and taxonomic overlap            |
| Seed 0.4 | Conduct corpus coverage and exceptional-case studies                 |
| Seed 0.5 | Establish normalized attribution atoms and relationships             |
| Seed 0.6 | Develop formal symbolic encoding and namespace rules                 |
| Seed 0.7 | Investigate compact numerical and binary representations             |
| Seed 0.8 | Develop deterministic attribution-record verification                |
| Seed 0.9 | Conduct adversarial, recursive and interoperability studies          |
| Seed 1.0 | Establish a candidate attribution specification                      |

The proposed research trajectory favors structural correctness before encoding efficiency.

Compact encoding should be derived from a sufficiently examined taxonomy rather than determining the taxonomy prematurely.

------------------------------------------------------------------------

##### 35. Limitations and Unresolved Questions

The proposed taxonomy requires further examination.

###### 35.1 Category overlap

Several operations may legitimately belong to multiple domains.

For example, synthesis may be analytical, conceptual or compositional depending on its purpose.

Canonical operation identifiers and contextual classifications require normalization.

###### 35.2 Source overlap

Human, machine, heuristic, expert-system and generative-system classifications exist at different conceptual levels.

The distinction between participant, instrument, architecture and method requires formalization.

###### 35.3 Directional granularity

A research direction may contain subordinate research directions.

The minimum meaningful unit of directional attribution remains unresolved.

###### 35.4 Corpus boundaries

A corpus may depend on external material that cannot be exhaustively decomposed or attributed.

Bounded provenance and external dependency representations require examination.

###### 35.5 Negative contributions

Rejected proposals, failed experiments, abandoned designs and deliberate omissions may constitute significant contributions.

Their relationship to completed works requires further study.

###### 35.6 Contribution weighting

The taxonomy does not currently quantify intellectual significance, effort, originality or proportional contribution.

Such quantification must not be inferred merely from the number of attribution records.

###### 35.7 Verification

A structurally valid attribution record may contain a factually incorrect assertion.

Structural verification and evidentiary verification must remain distinct.

###### 35.8 External comparison

The proposed taxonomy has not yet been systematically compared against existing contributor-role classifications, provenance models, content-authenticity architectures or legal attribution frameworks.

Its novelty, completeness and interoperability have therefore not been established.

------------------------------------------------------------------------

##### 36. Attribution of This White Paper

This paper is itself a work-generative corpus.

Its current attribution is declared as follows.

| Contribution                                                          | Attribution                          |
|-----------------------------------------------------------------------|--------------------------------------|
| Initiation of the encoding-system investigation                       | Human                                |
| Initial attribution problem                                           | Human                                |
| Initial human, machine, heuristic, expert-system and LLM distinctions | Human                                |
| Initial initiation, need, solution and orchestration categories       | Human                                |
| Direction toward broad corpus coverage                                | Human                                |
| Direction to introduce adjuncts                                       | Human                                |
| Request for an independent taxonomy                                   | Human                                |
| Request to incorporate research direction                             | Human                                |
| Selection of the compositional research trajectory for this draft     | LLM proposal, not yet human-ratified |
| Fourteen-domain operational taxonomy                                  | LLM-generated proposal               |
| Detailed research-direction taxonomy                                  | LLM-generated proposal               |
| Extension of source and material categories                           | LLM-generated proposal               |
| Attribution atom formulation                                          | LLM-generated synthesis              |
| Foundational axioms and their formal articulation                     | LLM-generated synthesis              |
| Research roadmap                                                      | LLM-generated proposal               |
| White paper textual production                                        | Synthetic generative text — LLM      |
| Supporting evidence                                                   | Recorded conversation                |
| Independent taxonomy validation                                       | Not performed                        |
| Independent evidentiary verification                                  | Not performed                        |
| Formal attestation                                                    | Not established                      |
| Production authorization                                              | Not established                      |

Compact representation:

    INITIATION::HUMAN
    DIRECTION_ORIGINATION::HUMAN
    DIRECTION_SCOPING::HUMAN
    DIRECTION_PROPOSITION::LARGE_LANGUAGE_MODEL
    DIRECTION_SELECTION::LARGE_LANGUAGE_MODEL::PROVISIONAL
    ORCHESTRATE::HUMAN
    CLASSIFY::LARGE_LANGUAGE_MODEL
    SYNTHESIS::LARGE_LANGUAGE_MODEL
    FORMULATE::LARGE_LANGUAGE_MODEL
    GENERATE::LARGE_LANGUAGE_MODEL::TEXTUAL::SYNTHETIC

The research trajectory selected within this draft is a proposed editorial and theoretical determination. Its inclusion does not establish human ratification.

The attribution table is itself synthetically generated from the recorded interaction and is not independently verified.

**Seed 0.2.1 revision attribution:** The minimum identifier length was directed by the human participant. Expanded identifier spellings were proposed by the large language model. The document-wide substitution and lexical checks were performed by conventional deterministic machine execution. These checks establish identifier length and replacement consistency, not independent validation of the taxonomy.

------------------------------------------------------------------------

##### 37. Conclusion

The proposed attribution system introduces an independent taxonomy for the representation of heterogeneous work-generative contributions.

It separates genesis, research direction, acquisition, cognition, conception, determination, orchestration, materialization, transformation, composition, assurance, governance, continuity and cessation.

These primary operational domains are supplemented by independently extensible taxonomies of participants, instruments, methods, capacities, material classes, provenance, relationships and evidence.

Research direction is recognized as an independently attributable intellectual and operational contribution.

A participant may originate a direction without executing it. An instrument may propose a direction without possessing authority to select it. A researcher may discover material not anticipated by the originator of the overarching investigation.

The proposed architecture preserves these distinctions rather than collapsing them into generalized authorship.

Its ultimate research objective is to establish a representation through which the emergence, development, materialization and continuation of a work can be examined constituent by constituent.

It is not primarily a taxonomy of authors.

It is not merely a taxonomy of artifacts.

**It is a taxonomy of the contributions through which work comes into existence.**

------------------------------------------------------------------------

*End of White Paper — Seed 0.2.1*

---

