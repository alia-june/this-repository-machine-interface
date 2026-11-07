# TODO for populating the Lattice records

Reviewed baseline is [27d9dee](https://github.com/alia-june/this-repository-machine-interface/tree/27d9dee92f7cee5cac24db162504a81617a0fbe0). The root records already have page designations, roles, purposes, and constraints. The work below identifies what to populate next and what to factor into separate records. Each item describes proposed work.

## Populate the existing records

- [ ] **Landing pad.** Complete the [landing pad](../ai.landing.pad.json) discovery and orientation references. Identify the minimum context needed at first contact and the references a caller can resolve later. Keep repository discovery and orientation distinct from operation decisions.
- [ ] **Launch pad.** Connect each intent in the [launch pad](../ai.launch.pad.json) to its evidence needs, applicable sentinel contract, and handoff. Reference the detailed contracts from the operation entries.
- [ ] **Ingress.** In the [ingress contract](../ai.ingress.json), define required and conditional request fields for each operation, including target, pinned source identity, context, and authority evidence. Specify how missing context, invalid input, and denied access affect the dependent operation.
- [ ] **Egress.** In the [egress contract](../ai.egress.json), define the forms for a cited answer, a lookup plan, a clarification request, and a blocked response. Specify how each carries the request ID, provenance, disclosure decision, unresolved conditions, and the next permitted step.
- [ ] **Memory-state orchestration.** In the [bound example](ai.MEMORY_STATE_ORCHESTRATION.json), distinguish the state and sentinel contracts, receiving-system capability bindings, and illustrative History cases. Keep the rule that the sentinel contract determines which capability is eligible.

## Place subsequent JSON by function and form

The first directory identifies what the record does. The second identifies what kind of record it is. Use the same placement for records with the same function and form regardless of who authored or maintains them.

| Proposed path under .ai.system.logic | What belongs there |
| --- | --- |
| exchange/contracts/ | Request and response forms, admission conditions, and disclosure rules. |
| exchange/examples/ | Paired request and response instances that demonstrate the exchange contracts. |
| state/contracts/ | State fields, sentinel meanings, and permitted transitions. |
| state/bindings/ | System-specific capability and tooling declarations, including the operation each binding supplies. |
| construction/contracts/ | Rules for reference, composition, create, safe copy, and backup. Keep each operation's inputs, authority, failure conditions, and verification distinct. |
| construction/receipts/ | Forms for recording what a construction operation attempted, what it verified, and which evidence or recovery reference it retained. |

The four root entry files remain the way into the site. Add a folder when there is an approved record to place in it. Link to the authoritative record from its consumers so later changes have one source.

## Decide what goes in each slot

- [ ] **Populate** an existing slot when its meaning and value are established by the source or an approved decision. Keep site instances in the Lattice format and apply the Crete names before use.
- [ ] **Reference** a record that already provides the required information. Declare its identity, path, and selector where needed. Pin its revision where the operation depends on a specific source state.
- [ ] **Keep the sentinel** when the value, evidence, or binding is unresolved. Record what would clear the condition and which dependent operation must stop while it is present.
- [ ] **Verify** each populated record against its contract. Check reference resolution, Crete key collisions, and the intended handling of missing or denied input before treating a new example as verified.

See the [encoding notes](human.ENCODING_NOTES.md) for the Crete mapping and the [Systems Deployment guide](human.SYSTEMS_DEPLOYMENT.md) for the worked instrumentation and state examples.
