# Lattice Universal Construct template

The original five-block template is the format and provenance reference. Empty values are placeholders. Site instances apply the Crete names with collision checks before inserting their payload.

[Source JSON](ai.Lattice_Universal_Construct_Empty_Blocks.json)

## How to read the template

Read the five blocks in order of their roles. The block containing the payload is the place for the record that the consumer needs. The index and context records let metadata stay in a separate slot while the structure points to it.

| Block | Role |
| --- | --- |
| block-0 | Identity and structure. The field references identify the context and item. |
| block-1 | Safeguards such as lifecycle, safe copy, backup, recovery, integrity, and audit. |
| block-2 | Arbitrary data. The empty template uses an explicit placeholder. |
| block-3 | Context selectors and match entries. |
| block-4 | The context records that supply the referenced items. |

The original template keeps its source spellings. For a site instance, apply the documented Crete names with collision checks before using the record. A declared selector that cannot resolve is a condition to report. Keep unrecorded or unbound values explicit until they are established.
