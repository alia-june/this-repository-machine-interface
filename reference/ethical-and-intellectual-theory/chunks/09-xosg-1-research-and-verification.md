# xOSG-1 research and verification

**Edition:** `alia-june/ethical-and-intellectual-theory`

**Source revision:** `fa1de43c27557c9f4e277d8dd6fbd9fc96a46cae`

**Coverage:** 13 source documents. Source names are labels, not hyperlinks.

### Four Deferred Atomic Rules — First-Pass Specification

Source: `blue-prints/gates/xosg-1-research-2026-11-26/01_ATOMIC_RESEARCH.md`

**All four retain disposition DEFERRED.** These are models and bounded tests, not accepted normative axioms. Historical identifiers are stable.

##### T2-03 — Provenance Continuity

**Candidate model:** a bounded provenance graph with distinct entity identities, activity identities, source/output roles, asserted actor, time/context, derivation edges and supporting evidence. Every transformation inside the declared workflow must name its inputs, activity and outputs. A missing required edge is PROVENANCE_UNRESOLVED, not a verified complete history. Valid hashes and signatures do not by themselves prove the physical history or authority. **Counterexamples:** an omitted manual intermediate; copied assertions passed off as independent provenance; a valid signer lacking grant authority; a graph complete only after omitting a hidden upstream source. **Promotion prerequisite:** independently specify trusted roots, identities, admissibility, completeness boundary, graph semantics and repeatable negative tests. **Unknown U-008 remains.**

##### T2-06 — Pre-Copy Fallback

**Candidate model:** distinguish acquiring the original reference, reading, copying, storing an isolated work copy, validating and committing. Define a finite *failure class* and an effect model, then a separately authorized fallback whose safe properties have actually been demonstrated for those failures. Preserving original bytes cannot reverse unauthorized disclosure. **Counterexamples:** shallow copy aliases the source; copy-to-cloud leaks sensitive material; backup exists but restore authority is absent; snapshot taken after an irreversible effect. The accepted PVI-08 *programming preference* to establish fallback before copying remains separate from this deferred guarantee. **Promotion prerequisite:** declared failure/side effects, safe state, restoration rights and bounded adequacy argument. **Unknowns U-007/U-012 remain.**

##### T3-01 — Explicit Evidence State

**Candidate evidence semantics:** after condition identity, applicability and admissibility are independently established, model support as two attributes: admissible-positive-support and admissible-negative-support. Neither gives UNRESOLVED; positive only SUPPORTED; negative only REFUTED; both CONFLICTED. These are **support statuses, not objective truth**. Candidate aggregation is union of support over active, admissible, same-scope items. Retraction requires a separately grounded revision and a recomputation; historical conflict is preserved. Applicability (YES/NO/UNRESOLVED) is evaluated separately. **Counterexamples:** favorable evidence silently overwrites negative; incomparable scopes are merged; a self-authored retraction erases an objection. **Promotion prerequisite:** precise admissibility, sufficiency, retraction and adjudication semantics, plus reproducible cases. **Unknown U-009 remains.**

##### T3-08 — Assurance Independence

**Candidate model:** a trust-dependency graph connecting assessors, data sources, verification code, authorizers, keys and common failure modes. Independence is defined *relative to a project-specified threat model and property*, not by count of reports or machines. **Counterexamples:** two AI outputs derived from the same report; separate processes sharing a compromised signing key; a verifier checking its own author-provided “passed” flag; two independent witnesses sharing one faulty reference model. **Promotion prerequisite:** acceptance criteria for shared dependencies, externally verified trust roots, scope of claim, and threshold for independence. **Unknowns U-010/U-013 remain.**

##### Cross-cutting findings

Admissibility of evidence is not verification of provenance; provenance is not authority; a verified candidate is not an authorized commit; two reports are not necessarily independent. Any attempt to promote an item should identify a particular project scope, environmental assumptions, required truth/evidence model and independent counterexamples. No deferred item has crossed this acceptance bar.

---

### Tranches Four to Seven — Initial Independent Modular Research

Source: `blue-prints/gates/xosg-1-research-2026-11-26/02_TRANCHES_4_TO_7.md`

**State:** New working research, not a promoted T4–T7 atomic catalog. Historic C2 covered these themes conceptually; this document provides the first distinct candidate models and counterexamples.

##### Tranche Four — Composition and Consequences

**Objects:** bounded candidate operations; individual direct effects; joint and emergent effects; actor and authority scopes; protected-effect domain; context. **Rule candidate:** A composition's relevant effects can exceed the union of its individual effects. Authorization of each component is not sufficient when an interaction yields a prohibited protected consequence. All claims of composition safety are limited to the modeled effects, not an assumed complete universe.

**Countermodel:** Two separately allowed state updates combine to violate a global invariant; two permitted disclosures jointly reconstruct a protected fact. A system that checks only each step incorrectly admits the composition.

**Open:** define a composition operator, concurrency and associativity conditions, interaction-effect closure and whether the protected-effect universe is demonstrably complete (U-004). Proposed dependency: Gate Zero Effective Authority Closure, Tranche One scoped grants, Tranche Two reference binding and Tranche Three condition evidence.

##### Tranche Five — Temporal Validity

**Objects:** grant creation, evidence observation, Gate One clearance, revocation, Gate Seven Alpha-Lock clearance and the *actual effect-commit event*, related by a declared causal/temporal order. **Rule candidate:** a valid historical receipt does not prove authority when the effect is committed. A revocation ordered before commit invalidates the earlier permission. An unresolved race is not clearance.

**Countermodel:** Gate One and Gate Seven clear, then external authorization is revoked before effect commit. A time-of-check-only model erroneously allows the effect.

**Open:** trustworthy event order, distributed clock assumptions, atomic commit and revocation semantics, expiry and policy-version invalidation (U-006). A simulated “revoked” flag cannot prove that real-world ordering is enforced.

##### Tranche Six — Independent Assurance

**Objects:** claim/property, abstract model, implementation, configuration, environment, assessor, data source and trust-dependency graph. **Rule candidate:** an assurance claim must be bound to what was actually checked. Independence is a relation under declared common-mode failure assumptions, not a raw number of certificates or reports. Model tests do not establish deployed runtime correspondence.

**Countermodel:** Two “independent” verifiers both reuse the same forged report or both execute the same defective check. They do not satisfy a requirement for separately grounded verification.

**Open:** concrete independent verifiers, disallowed common dependencies, property correspondence and verified environment (U-010/U-013). A gate controller authenticated by the producing AI is not automatically independent.

##### Tranche Seven — Containment and Recovery

**Objects:** state, permissible stop state, recoverable state, authorized recovery transition, safe-state invariant, recovery-goal predicate, deadline and resource/fairness assumptions. **Separate claims:** (a) a denied operation creates no new authority (containment safety); (b) a bounded authorized recovery route reaches a satisfactory state (liveness/recoverability). Claim (b) does not follow from claim (a).

**Countermodel:** The system safely blocks all changes but has no authorized recovery operation. Another failure copies data outside the system; restoring bytes does not undo the disclosure.

**Open:** permitted recovery authorities, safe vs recoverable state distinctions, temporal bounds, environmental assumptions and actual fallback capability (U-007/U-012).

##### Cross-tranche interfaces

- Composition constrains effect scope across the ordered receipts.
- Time constrains validity at Gate Seven and actual commit; it can invalidate earlier clearance.
- Assurance constrains who may certify receipt authenticity and external Alpha-Lock.
- Containment restricts what may happen after NOT_CLEARED; recovery needs independent authority.

**Current disposition:** The first individual models and adversarial examples are recorded. A formal modular catalog, proofs, equivalence to G0 v0.4, and any deployment guarantee **remain deferred**.

---

### Proof Obligations and Unknown Findings — Reconciled

Source: `blue-prints/gates/xosg-1-research-2026-11-26/03_PROOFS_AND_UNKNOWNS.md`

##### Eleven open proof obligations (original identities and content)

| Identifier | Required proof / formalization                                                                                              | Status |
|------------|-----------------------------------------------------------------------------------------------------------------------------|--------|
| PO-01      | Specify consistent formal semantics for all eight G0 v0.4 axioms, including cross-domain effects.                           | OPEN   |
| PO-02      | Establish (or decline) formal independence and minimality; current sketches are not proofs.                                 | OPEN   |
| PO-03      | Define project scope, authority source and precedence for conflicting external authorities.                                 | OPEN   |
| PO-04      | Define finite/unbounded effect universes, including side channels and cumulative effects.                                   | OPEN   |
| PO-05      | Distinguish complete mandatory-condition set from merely empty recorded set.                                                | OPEN   |
| PO-06      | Establish authorization point, commitment event, revocation and partial-order semantics.                                    | OPEN   |
| PO-07      | Define acceptable recovery states and conditional liveness assumptions.                                                     | OPEN   |
| PO-08      | Prove or reject alternative dependency sets/substitutions for each optional package.                                        | OPEN   |
| PO-09      | Formalize T3 conflict resolution without illicitly converting conflict into permission.                                     | OPEN   |
| PO-10      | Examine T4 composition, aggregation, conflicting permissions and consequence closure.                                       | OPEN   |
| PO-11      | Examine T5 temporal properties, T6 independent assurance and T7 containment/recovery when authorized by continued research. | OPEN   |

##### Fourteen unresolved claims

| Identifier | Claim                                                          | What is still missing                                                                          | State   |
|------------|----------------------------------------------------------------|------------------------------------------------------------------------------------------------|---------|
| U-001      | Logical independence/minimality of G0 v0.4 eight axioms        | No fixed complete formal semantics or eight independent countermodels; no minimal-basis claim. | UNKNOWN |
| U-002      | Full consistency/completeness of G0 v0.4 and modular v0.2      | Bounded adversarial examples are not a universal model or deductive proof.                     | UNKNOWN |
| U-003      | Legitimate external authority precedence                       | Authority hierarchy, exceptional authority and conflicts among grant issuers unspecified.      | UNKNOWN |
| U-004      | Complete protected effect universe                             | Cumulative effects, side channels and external consequences not exhaustively modeled.          | UNKNOWN |
| U-005      | Completeness of all mandatory project conditions               | An empty observed condition set may be incomplete.                                             | UNKNOWN |
| U-006      | Time-of-authorization / revocation / commit ordering           | Concurrent/distributed event ordering and commit points are scope-dependent.                   | UNKNOWN |
| U-007      | Actual isolation/fallback for a particular copy process        | Aliasing, external effects and restoration capability not examined for any runtime.            | UNKNOWN |
| U-008      | Veracity and completeness of provenance across transformations | T2-03 deferred; a provenance record is not independent proof.                                  | UNKNOWN |
| U-009      | Universal four-state evidence admissibility semantics          | T3-01 deferred; evidence aggregation, retraction and conflict resolution not fixed.            | UNKNOWN |
| U-010      | Assessor/source independence in a particular project           | T3-08 deferred; identity multiplicity does not guarantee independent evidence.                 | UNKNOWN |
| U-011      | Formal equivalence of modular selections to G0 v0.4            | Crosswalk is conceptual; substitute premise sets and closure unproved.                         | UNKNOWN |
| U-012      | Guarantee of bounded recovery/liveness                         | Requires specified recoverable states, authorized paths and progress assumptions.              | UNKNOWN |
| U-013      | Model-to-implementation correspondence / runtime security      | No runtime, source, configuration or environment attested; no deployment.                      | UNKNOWN |
| U-014      | Risk improvement from adding or removing optional controls     | Restrictiveness, assurance, availability and recoverability are not one dimension.             | UNKNOWN |

##### Concrete research sequence

**First** develop common typed semantics for grants, required conditions, exact candidate and effect identity, representation/reference binding and selected project profiles (PO-01/03/04/05). **Second** define composition, admissible evidence and temporal commit semantics (PO-06/09/10). **Third** attempt independence/minimality and package equivalence using explicit countermodels or bidirectional derivations (PO-02/08). **Fourth** give bounded recovery and independent implementation assurance actual testable states, authorities and assumptions (PO-07/11).

The new atomic and Tranche research files provide *candidate semantic inputs* toward PO-06/09/10/11; they do not discharge any obligation. A simplified in-memory Alpha-Lock test cannot resolve U-006 (commit race), U-010 (real independent assessor), U-013 (model/implementation correspondence), or U-004 (effect completeness). The previous **UNKNOWN** classification is preserved on all 14 claims.

---

### Ordered Seven-Gate Alpha-Lock — 31 In-Memory Mock Tests

Source: `blue-prints/gates/xosg-1-research-2026-11-26/04_GATE_SEVEN_DRYRUN.md`

**Observed:** 31/31 tests returned their expected result. Two returned fixture-valid CLEARED; twenty-nine returned NOT_CLEARED. They were executed as a local JavaScript *in-memory research evaluator*, not as deployed code, cryptographic attestation, independent receipt verification or an operating gate.

##### Modeled requirement

The simplified evaluator requires an expressly selected seven-gate profile; exactly six receipts numbered One–Six in valid order; each receipt CLEARED, marked authenticated, unexpired and bound to identical candidate identity, revision, target, effect, profile, authorizer and risk snapshot; Gate Six restatement-consistency flag; no revoked grant; and a separate simulated independent Alpha-Lock clearance.

“Authenticated” and “independent” are **test fixture flags**, not genuine evidence. No physical, external or production effect is performed.

##### Executed case groups

| Cases                                                                             | Number | Expected/observed                 |
|-----------------------------------------------------------------------------------|-------:|-----------------------------------|
| Complete coherent mock receipts and mock Alpha-Lock clearance                     |      1 | CLEARED                           |
| Individually set Gates One through Six to NOT_CLEARED                             |      6 | All NOT_CLEARED                   |
| Gate Five emits UNRESOLVED, CONFLICTED, REFUTED, NOT_ADOPTED or NOT_APPLICABLE    |      5 | All NOT_CLEARED                   |
| Profile not selected                                                              |      1 | NOT_CLEARED                       |
| Missing Gate Six receipt; out-of-order receipts; duplicate gate number            |      3 | All NOT_CLEARED                   |
| Unverified receipt; expired receipt; revoked authorization                        |      3 | All NOT_CLEARED                   |
| Gate Six restatement mismatch                                                     |      1 | NOT_CLEARED                       |
| Missing independent Alpha-Lock permission; self-controlled Alpha-Lock             |      2 | Both NOT_CLEARED                  |
| Change candidate, revision, target, effect, profile, authorizer, or risk snapshot |      7 | All NOT_CLEARED                   |
| Gate Three positively clears a contract-established no-handoff case               |      1 | CLEARED                           |
| Gate Three omitted to skip evaluation                                             |      1 | NOT_CLEARED                       |
| **Total**                                                                         | **31** | **31 expected outcomes observed** |

The decision logic illustrates **Gate One clearance is necessary but not sufficient**, Gate Six is sixth, and Gate Seven is an independent final barrier. A non-triggered sub-action must be positively justified by adopted policy; it cannot be silently omitted.

##### Untested material conditions

Authentication, signature/key revocation, replay and audit correctness; actual external authorizer identity; atomic final-effect commitment and time-of-check/time-of-use races; side channels and combined effects; genuine Operator comprehension; source/model independence; handling of real controller failure; and operational lock recovery remain **unproven**. This model cannot demonstrate actual es-xosg-9 instrumentation.

**Next research acceptance:** independently reproducible finite-state property tests, authenticated mock receipt schema, deliberate forgery/replay counterexamples and a coherent model of effect commit/revocation. Even those would remain model-level testing, not operational clearance.

---

### Remaining Deferred Work — Consequence Policy, Code Form and Instrumentation

Source: `blue-prints/gates/xosg-1-research-2026-11-26/05_OTHER_DEFERRED.md`

##### Gate Five, Candidate One — Consequence-Sensitive Admission

**Status:** DEFERRED. The generic Gate Five contract already includes risk classification and independent controls, but the distinct candidate refinement has not been normatively promoted.

**First-pass condition:** classify a specific candidate and its cumulative effects using a declared consequence scope, reversibility and uncertainty. The adopted policy must state which comprehension and independent-verification checks are necessary. Unsupported low-risk claims cannot waive other gates. A new effect, candidate version, target or risk assessment invalidates dependent receipts. Gate Five may clear only on established requirements, and it cannot bypass Gate Six or Gate Seven.

**Counterexamples:** an ostensibly low-risk operation has an irreversible combined effect; two apparent independent challenges derive from one AI-generated text; severity is revised after clearance; a new Gate Six restatement changes the target. Open work: project-specific thresholds, independent verification and risk composition, not a new source of execution authority.

##### Programming Verification Invariant Two — Deterministic Loop Unrolling

**Status:** DEFERRED as a universal rule. Deterministic bounded iteration (PVI-01) remains a separate accepted optional preference. Full unrolling may improve direct human inspection for a tiny, fixed loop; it can also obscure maintenance and duplicate defects. It is a conditional source-representation technique, not required for bounding every loop.

**Tests to design:** bounded-loop and unrolled-branch equivalence across zero, one and maximum iteration counts; sentinel initialization, early exit, malformed lengths, branch edits and counter overflow. Do not make this universal without a demonstrated scoped benefit.

##### Alternative modular packages

**Status:** Equivalence/protection substitution remains UNKNOWN until precise claim domains and bidirectional or otherwise sufficient derivations exist. A dependency graph edge is not a proof and does not silently select an optional requirement.

##### Instrumentation: es-xosg-9

**Status:** NOT ESTABLISHED. This is the name of the xOSG-1 Operations Contract *once actually instrumented*. No runtime exists as a consequence of documentation, a mock evaluator, or a code snippet. The producing AI cannot grant itself controller privileges. Gate One and Gate Seven would require independent, authentic, scope-bound external controls. Commit-time revocation and recovery rights remain open.

Any actual build/enactment must be separately authorized under binding controls. This research cycle does not request or clear production.

---

### Research Cycle Worklog and Decision Ledger

Source: `blue-prints/gates/xosg-1-research-2026-11-26/06_WORKLOG.md`

**2026-11-26 — Operator requested continuation of all pending and deferred xOSG-1 framework work.**

##### Work performed

1.  Re-fetched and inspected the current xOSG-1 contract and historical Gate Zero C2/C3 atomic, unknown and proof-obligation ledgers.
2.  Verified source accounting: 27 atomic rules with exactly four deferred; 11 proof obligations; 14 unresolved claims.
3.  Created bounded first-pass candidate semantics for each deferred Tranche Two/Three item and each deferred Tranche Four–Seven subject.
4.  Recorded counterexamples and acceptance prerequisites; explicitly kept the provenance, fallback, evidence aggregation and independence gaps open.
5.  Constructed and executed a purely in-memory seven-gate receipt evaluator on 31 fixtures: 31 expected outputs observed, 2 mock CLEARED, 29 mock NOT_CLEARED.
6.  Revisited Gate Five consequence-sensitive refinement, universal loop-unrolling, module substitution, and unresolved actual instrumentation.
7.  Published this new additive research directory; left C2/C3 historical source files unchanged.

##### Decisions

| Matter                                            | Decision                                           |
|---------------------------------------------------|----------------------------------------------------|
| Reopening research                                | Research cycle OPEN                                |
| New first-pass models                             | WORKING CANDIDATES                                 |
| Promotion of four atomic deferrals                | NONE; still DEFERRED                               |
| Promotion of Tranches Four–Seven                  | NONE; still DEFERRED                               |
| Proof Obligations PO-01–PO-11                     | All OPEN                                           |
| Unknown Findings U-001–U-014                      | All UNKNOWN                                        |
| Gate Five consequence refinement                  | DEFERRED                                           |
| Universal literal loop unrolling                  | DEFERRED                                           |
| Seven-gate in-memory fixture test                 | 31/31 expected responses; NOT implementation proof |
| Instrumented es-xosg-9                            | NOT ESTABLISHED; no operations performed           |
| Project-profile selection / production permission | NONE                                               |

##### Next bounded analytical order

Establish typed object/authority/effect/condition domains; evaluate the deferred evidence/provenance semantics against adversarial graphs; specify revocation vs atomic effect commit; examine independent verifier trust roots; develop Tranche Four cumulative-effect countermodels; define Tranche Seven authorized recovery. **Any theoretical promotion, actual controller implementation or production change requires a separate explicit decision.**

##### Second-pass continuation — 2026-11-26

1.  Developed explicit finite type domains for grant source/scope, mandatory condition completeness, direct and emergent effects, receipt identity and partial-order causal events.
2.  Executed a model sweep over **64 gate-result combinations × 32 prerequisite combinations × 4 revocation classes = 8,192** fixtures; **8,192 matched declared expectations**, including 2 mock-positive cases.
3.  Executed **38 adversarial/structural cases**; 38 matched expected results. **Total: 8,230/8,230** mock cases returned expected outcomes.
4.  Published the generated research-only JavaScript fixture evaluator, semantic specification and test report.
5.  **Found and disclosed issue R1-001**: the test receipts do not yet bind the exact material operation/effect/condition content despite checking named candidate/revision fields. Added R1-002 through R1-009 for assumptions remaining unestablished.
6.  Preserved historic C2/C3 records and all theoretical decision states; did not modify the primary xOSG-1 Operations Contract or run any operational controller.

**Proof status:** PO-01–PO-11 still OPEN; U-001–U-014 still UNKNOWN. **Instrumentation:** es-xosg-9 still NOT ESTABLISHED. No clearance/implementation authorized.

##### R2-01 — Material-to-Receipt Binding Research (2026-11-26)

1.  Identified that named receipt identifiers did not structurally bind the underlying operation/effect/condition material in the prior model (Issue R1-001).
2.  Created a separate bounded mock with canonical material text embedded in each receipt; mutation invalidates old structural receipts.
3.  Evaluated **2,048** gate/mutation combinations plus **17** targeted cases; **2,065/2,065** returned expected outcomes.
4.  Deliberately regenerated coherent source and mock receipts together: the fixture still returned `CLEARED`, proving that structural consistency **cannot replace external authentication**.
5.  Marked R1-001 and R1-005 as **structurally modeled in this isolated mock**, but **not independently verified or operationally resolved**. R1-003 (authenticity), R1-002 (revocation feed), R1-009 (atomic commit) remain OPEN.
6.  Neither research evaluator is instrumented, and **the two have not yet been integrated into a single end-to-end tested model**. No promotion, Gate One release, or Alpha-Lock clearance occurred.

##### R3 — Integrated signed-fixture study (2026-11-26)

1.  Created an offline Node.js 22 research model combining source-material SHA-256 binding, a signed issuer-grant fixture, Gates One–Six signed predecessor-linked receipts, a separately signed fixture Alpha-Lock receipt, bounded cumulative effect closure, event-DAG ordering and revocation classes.
2.  Executed the exact source: **2,048 bounded test combinations plus 36 targeted adversarial/edge cases = 2,084/2,084 expected results**, including two mock CLEARED bounded fixtures; zero mismatches. The code passed Node syntax verification.
3.  Published the byte-identical model source: SHA-256 \`9cc4e5a84dca0051086afc347ad0ed4da19a1b894315c85a1cf20f420780cea1\`, Git blob SHA-1 \`446ae6b76aad3355e93e64f1bad705ca799f6d90\`.
4.  Produced R3 integrated research report and separate external authority/revocation/atomic-commit obligations.
5.  Ephemeral signing keys and the trust registry are held in one fixture process. The model's revocation feed completeness and causal graph are assumed input data, and its session consumption is in memory only. Consequently **no independent real-world issuer authorization, external Alpha-Lock, or atomic production effect is proved**.
6.  Previous atomic deferrals and Tranches Four–Seven remain unpromoted; PO-01–PO-11 remain OPEN, U-001–U-014 remain UNKNOWN. No operations contract activation or es-xosg-9 instrumentation occurred.

---

### xOSG-1 — Finite Core Semantics: Authority, Conditions, Effects and Time

Source: `blue-prints/gates/xosg-1-research-2026-11-26/07_CORE_SEMANTIC_UNIVERSE.md`

**Research cycle:** 2026-11-26, second pass. **Status:** Draft bounded semantic model; not a formalization of all eight G0 axioms, an adopted profile, an operational controller, or a grant of production authority.

##### 1. Explicit finite domains

| Domain                                               | Role                                                                                      | Important separation                                                                               |
|------------------------------------------------------|-------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| CandidateIdentity, CandidateRevision, TargetIdentity | Distinguish actual work item and target                                                   | Representation changes do not prove continuity of identity.                                        |
| GrantIdentity, IssuerIdentity, AuthorityScope        | Identify the independently established source and scope of permission                     | A receipt of a grant is not permission; issuer legitimacy is an external assumption in this model. |
| ConditionIdentity, ConditionEvidence                 | Enumerate and evaluate mandatory conditions                                               | Empty observed conditions do not prove completeness.                                               |
| EffectIdentity, InteractionRule                      | Represent direct and emergent effects                                                     | Permitted components can combine into prohibited effects.                                          |
| GateReceiptIdentity, GateNumber                      | Represent numbered and prior-linked gate clearances                                       | Local receipt flags do not authenticate real attestations.                                         |
| EventIdentity, CausalEdge                            | Represent issuance, six clearances, Alpha-Lock, effect commitment and possible revocation | A graph edge is meaningful only if its provenance and real-world interpretation are valid.         |
| PolicyProfile, RiskAssessment, PromptIdentity        | Bind the selected seven-gate policy and interpreted request                               | Same-looking text is not a substitute for an authorized context.                                   |

The current bounded model uses a single declared authority root, a finite explicit effect domain, an explicit mandatory-condition registry and one candidate. It does **not** model a legitimate multi-issuer precedence system or an unbounded effect universe.

##### 2. Necessary-condition semantics (not a universal theorem)

Let the clearance model be evaluated for one exact candidate and intended effect at its **effect-commit event**, not just at the Gate One authorization event. The model can return mock **CLEARED** only if **all** of the following predicates hold:

\`\`\`text profile_is_explicitly_selected AND issuer_root_is_established_for_fixture AND authority_precedence_is_resolved_for_fixture AND exact_grant_binding_is_established_for_fixture AND condition_registry_is_authoritatively_complete_for_fixture AND every_required_condition_is_applicable_supported_and_sufficient AND direct_and_interaction_effects_are_within_declared_effect_universe AND declared_effect_universe_has_coverage_evidence_for_fixture AND all_effects_in_modeled_closure_are_within_granted_scope AND six_authentic_fresh_consistent_mock_receipts_are_ordered AND Gate_Six_restatement_is_consistent AND issuance_precedes_gate_one_precedes\_...\_gate_six_precedes_alpha_lock AND alpha_lock_precedes_effect_commit AND revocation_visibility_is_complete_for_fixture AND (no_revocation_is_recorded OR effect_commit_precedes_revocation) AND independent_external_alpha_authorization_is_established_for_fixture \`\`\`

Here **established for fixture** means a Boolean supplied by the research harness, **not** an actual outside trust determination. The conjunction is a decision predicate for the finite model, not a sufficient proof for a deployed system or external grant.

##### 3. Mandatory-condition completeness

Define the declared mandatory-condition registry as a finite set of condition identities and context-bound verification requirements. Two cases must be distinguished:

- **Complete and empty:** An authoritative project rule explicitly establishes there are no applicable mandatory conditions for the examined scope. This could support an empty registry *inside a model* when independently evidenced.
- **Observed empty, completeness unknown:** No entries were seen, but the authoritative rule inventory and its closure were not independently established. This **cannot** clear the gate.

The model requires both condition-registry completeness and authority over the registry to be affirmed in the fixture; it additionally tests applicability, positive support, and sufficiency for every listed condition. The underlying evidence logic is **not** thereby promoted as the deferred universal Tranche Three Item 01 semantics.

##### 4. Effects and closure

Let **DeclaredEffectUniverse** be a finite set. Each candidate operation has **DirectEffects**. The model begins with the union of those effects and iteratively applies **declared interaction rules**:

\`\`\`text effective_effects = union_of_direct_effects

REPEAT within the declared finite effect bound: FOR each declared interaction_rule: IF all rule prerequisites are in effective_effects: ADD the rule's generated effect to effective_effects STOP when no new effect is added

REQUIRE every effective effect be in the declared effect universe REQUIRE every effective effect be authorized by the grant for this composition \`\`\`

A rule generating an effect outside the declared universe blocks evaluation. The test establishes only **closure under the explicitly supplied rules**, not the completeness or fidelity of real consequences, side channels, or undiscovered interactions. In the research fixture, two individually authorized direct effects generate a combined protected effect; the resulting composition must fail unless that extra effect is also authorized.

##### 5. Causal time and revocation

Events are represented by a finite **acyclic directed graph**; reachability represents the proposed *happens-before* relation. The ordered clearance chain must have a path between consecutive entries:

\`\`\`text grant_issuance → gate_one → gate_two → gate_three → gate_four → gate_five → gate_six → alpha_lock → effect_commit \`\`\`

A revocation event is evaluated against the **effect-commit** event:

| Declared causal relation                                                | Mock eligibility              | Reason                                              |
|-------------------------------------------------------------------------|-------------------------------|-----------------------------------------------------|
| No recorded revocation **with explicitly complete revocation coverage** | Eligible for remaining checks | Absence is assumed complete **in the fixture only** |
| effect_commit happens-before revocation                                 | Eligible for remaining checks | Authorization not withdrawn at modeled commit       |
| revocation happens-before effect_commit                                 | NOT CLEARED                   | Grant invalid before the modeled effect             |
| Neither event causally precedes the other                               | NOT CLEARED                   | Ambiguous concurrent/partial order                  |
| Event graph cyclic, incomplete or malformed                             | NOT CLEARED                   | No supported causal proof of the ordered chain      |

The model has no atomic real-world implementation, linearizability proof or operationally authoritative event feed. Its \`EFFECT_COMMIT\` node is symbolic; real commit-time revocation remains **U-006 UNKNOWN** and **PO-06 OPEN**.

##### 6. Exact boundaries of the current model

A mock receipt binds named candidate ID, revision, target, profile, grant, risk assessment and prompt identity. **The currently committed test model does not yet bind the entire operation/effect plan, interaction-rule revision, condition-registry revision, or grant-scope revision to every receipt.** This is a material research-model defect: matching short names is not proof that the underlying content is unchanged. It is recorded for the next refactor, not ignored.

**Formal status:** A finite model and bounded test cases exist. Proof Obligation 01 is **OPEN**; this is not a complete formal interpretation of Gate Zero, and the 14 historical unknown findings remain **UNKNOWN**.

---

### xOSG-1 — Finite Alpha-Lock and Effect-Closure Test Report

Source: `blue-prints/gates/xosg-1-research-2026-11-26/08_FINITE_MODEL_CHECK_REPORT.md`

**Date:** 2026-11-26  
**Executable research artifact:** \`finite_clearance_commit_model.test.js\` in this directory  
**Test context:** Pure JavaScript functions evaluated in an isolated research runtime; the committed source was generated from those same function definitions. No real gate was invoked or controller instrumented.

##### Results

| Coverage                                              |     Count |
|-------------------------------------------------------|----------:|
| Exhaustive combinations inside selected finite domain | **8,192** |
| Targeted structural and adversarial cases             |    **38** |
| Total checks evaluated                                | **8,230** |
| Returned expected outcomes                            | **8,230** |
| Mismatches                                            |     **0** |
| Mock CLEARED in exhaustive space                      |     **2** |
| Mock NOT CLEARED in exhaustive space                  | **8,190** |

The only two mock-positive exhaustive cases are all six gate receipts marked CLEARED, all five independent prerequisite flags true, and temporal input either **NO_REVOKE** or **REVOCATION_AFTER_COMMIT**.

##### Exact exhaustive space

\`\`\`text 64 combinations of six Gate One–Six clearance bits × 32 combinations of five prerequisite Boolean bits × 4 revocation ordering classes = 8,192 combinations \`\`\`

The five varied prerequisite flags were issuer legitimacy, condition registry completeness, modeled effect-coverage evidence, independent Alpha-Lock authorization, and grant scope covering the emergent combined effect. Other necessary fixture flags were fixed as positively supplied; those have separate targeted negative cases. This is **not an exhaustive search over real candidates, events, authorizers or actual effect universes**.

The four revocation classes are **NO_REVOKE**, **BEFORE_COMMIT**, **AFTER_COMMIT** and **UNORDERED**. The model tests acyclicity and graph reachability for declared events; temporal reality is not independently verified.

##### Targeted tests — 38

Distinct targeted cases cover complete positive fixtures and after-commit revocation; before-commit and unordered revocation; incomplete revocation visibility; empty or incomplete mandatory registries; contradictory or insufficient evidence; unmodeled or interacting effects; unauthorized aggregate effects; unknown issuer legitimacy or precedence; unselected profile; uncleared and missing receipts; duplicate and broken receipt chains; mock-signature failure; expired receipt; changed candidate/revision/target/risk fields; Gate Six mismatch; absent independent controller; broken, cyclic and incomplete causal event graphs; and a **second-order emergent protected effect**.

The tests evaluate how the *defined JavaScript predicate* responds to each synthetic input. A direct test of the exact committed file with a separate Node runtime was **not completed in this environment** because the runtime could not download the GitHub source; the JavaScript functions used to generate the file were executed in the research tool.

##### Illustrative countermodels

| Case                                                           | Essential fixture differences                                       | Expected result              |
|----------------------------------------------------------------|---------------------------------------------------------------------|------------------------------|
| Gate One approval alone                                        | Other five gate receipts NOT CLEARED                                | NOT CLEARED                  |
| Two locally permitted actions, prohibited combined consequence | Grant permits both direct effects, not generated combined effect    | NOT CLEARED                  |
| Empty-but-unverified condition registry                        | No listed conditions; completeness not established                  | NOT CLEARED                  |
| Revoked before commit                                          | REVOCATION causally precedes EFFECT_COMMIT                          | NOT CLEARED                  |
| Unordered revocation and commit                                | Neither event causally precedes the other                           | NOT CLEARED                  |
| Invalid clearance order                                        | Required causal edge or sequential receipt is missing               | NOT CLEARED                  |
| Alpha-Lock unavailable                                         | Simulated external final authorization absent                       | NOT CLEARED                  |
| Fully coherent mock case                                       | All declared fixture assumptions positively supplied, no revocation | CLEARED **in the mock only** |

##### Important defect found after executing the finite sweep

The current receipts bind **named** candidate/revision/target/etc., but they do not cryptographically or structurally bind **the entire mutable effect plan, interaction rules, condition registry or grant scope**. A modification to those material objects while their short identifiers remain the same can invalidate the true prior clearance without being detected by the receipt identity comparison.

**Issue R1-001 — Material-to-Receipt Binding** is open and is a prerequisite for promoting any “same candidate” assurance claim. Add an immutable, canonical exact-material description and a receipt-to-content binding check in the next research model, then rerun the finite sweep and explicit material-mutation cases. A hash by itself will not establish source authenticity, issuer authority or the absence of undisclosed effects.

##### Scientific and operational limitations

Results are conditional on fixture flags for valid signatures, trustworthy authorization, condition completeness, effect-coverage evidence, independent Alpha-Lock and revocation-feed completeness. None of those facts has been independently established for a deployed system. Passing a fixed finite domain does **not** prove all legal or security properties, nor does it make \`es-xosg-9\` instrumented.

**Disposition:** Bounded model-check progress, with an identified material-binding gap. **PO-01/03/04/05/06/10 remain OPEN; U-003/004/005/006/013 remain UNKNOWN.**

---

### xOSG-1 — Defect Ledger and Next Countermodel Pass

Source: `blue-prints/gates/xosg-1-research-2026-11-26/09_DEFECTS_COUNTERMODELS_AND_RESEARCH_ORDER.md`

**Class:** Research-model defects and unsatisfied assumptions. This list is **not** a record of discovered defects in a deployed es-xosg-9, because its instrumentation remains unestablished.

| Research issue                             | Specific flaw or unproved assumption                                                                                                                             | Proposed correction                                                                                                                                                  | Blocked assurance claim                                     |
|--------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|
| **R1-001 — Material-to-Receipt Binding**   | Receipt compares named candidate identity but not a canonical immutable copy of operation plan, interaction rules, mandatory-condition registry and grant scope. | Specify identity of exact effect plan/policy revision; bind to every numbered clearance; mutation invalidates dependent receipts; test changes that preserve labels. | “All seven gates cleared for this same material candidate.” |
| **R1-002 — Revocation Feed Completeness**  | Fixture says no revocation occurred or visibility is complete without proving either claim.                                                                      | Define authoritative revocation event source, coverage, freshness, exclusion/replay handling and fail-closed communication loss.                                     | “Authorization was valid at commitment.”                    |
| **R1-003 — Authenticated Receipt Trust**   | \`signatureVerifiedFixture\` is supplied by the test author; no signature, key history or authorizer authority is established.                                   | Specify independently validated signers, key scope, rotation, revocation, nonce/replay constraints, plus failure cases.                                              | “Receipts were authentic and independently authorized.”     |
| **R1-004 — Authority Precedence**          | Single-issuer test assumes valid authority and resolved precedence.                                                                                              | Define conflict resolution among independently legitimate issuers as a parameter to the contract; preserve UNRESOLVED if absent.                                     | “The applicable grant is authoritative.”                    |
| **R1-005 — Policy and Condition Revision** | Profile identifier alone is insufficient to prove identity of the rules or completeness of mandatory conditions.                                                 | Bind exact profile/condition-rule revision, evidence criteria, and authorized revision issuer into receipts and commit check.                                        | “The reviewed conditions were the conditions at execution.” |
| **R1-006 — Independent Alpha-Lock**        | Fixture assumes the final controller is independent, not established by a trust graph.                                                                           | Model disallowed shared roots, controller signature scope, authorization chain and failure isolation.                                                                | “The final gate was independent of the AI.”                 |
| **R1-007 — Operator Restatement**          | A Boolean “consistent” flag is not an objective comparison of prompt, intent, boundaries and candidate.                                                          | Define semantic materiality criteria and separately evidenced Operator validation when required.                                                                     | “Gate Six preserved the Operator's actual intent.”          |
| **R1-008 — Effect Universe**               | Finite closure only accounts for effects declared by the fixture.                                                                                                | Counterexamples for omitted cross-effects, side channels and out-of-domain interactions; bounded completeness claim only.                                            | “All protected consequences were covered.”                  |
| **R1-009 — Atomic Commit Boundary**        | \`EFFECT_COMMIT\` is a symbol in a directed graph, not a hardware/software atomic barrier.                                                                       | Formalize a trusted serialization or transactional protocol and prove absence of unchecked time-of-use gaps under stated assumptions.                                | “A revocation cannot race past Alpha-Lock.”                 |

##### Counterexamples that the next model must reject

1.  Gate One–Six receipts have unchanged IDs, but a candidate adds a new operation that happens to be separately permitted. **Old receipts must be invalidated** despite the new plan's individual permissions.
2.  The interactions now generate a different authorized effect, while the same original candidate ID remains. **Changing the effect plan must require reassessment.**
3.  A condition registry gains a new mandatory condition that is marked satisfied; the earlier Gate Four receipt must still be treated as stale.
4.  The same grant ID now carries an expanded grant scope; the old Gate One evidence must not automatically apply to that altered grant.
5.  Two “authenticated” receipts share a single compromised signer despite a requirement for independence.
6.  A revocation is hidden by an incomplete or stale authority feed.
7.  An operation has a newly discovered side effect outside the declared universe.
8.  A modeled receipt chain is valid but the implementation executes the effect after a revocation that the model never observed.

##### Next bounded execution order

**Pass R2-01:** Fix R1-001 and R1-005 in the **research-only** model; add material-plan/condition-revision mutation tests and re-enumerate the finite space.

**Pass R2-02:** Formalize authorized issuer hierarchy and event feed assumptions; add causal counterexamples for R1-002, R1-004, R1-009.

**Pass R2-03:** Define the trust-dependency graph and admissible evidence semantics for deferred Tranche Three Items 01/08 and provenance for Tranche Two Item 03.

**Pass R2-04:** Define Tranche Seven authorized containment/recovery transitions with conditional liveness claims; do not assume recovery follows from safety.

**Pass R2-05:** Reassess optional module substitutions and Gate Five consequence thresholds after the core model is stabilized.

None of these passes constitutes authorization to implement, select a security profile, alter a gate, or promote a deferred axiom.

##### Addendum R2-01 — Bounded correction, not full closure (2026-11-26)

The initial lack of receipt-to-material equality was addressed *structurally* in a separate mock model that binds canonical operation plans, interaction rules, grant scope and mandatory-condition/policy revisions to every receipt. A 2,065-case test suite produced expected results, but it is not integrated with the causal event model.

**Residual counterexample:** A mocked adversary who updates the source data **and all simulated authenticated receipt snapshots** together can still obtain mock `CLEARED`. This is a deliberate demonstration that **R1-003 — Authenticated Receipt Trust** remains unmet; merely matching canonical material is not proof of legitimate signed authority. R1-001 and R1-005 are **modeled only**, not certified.

The next research pass should bind exact material, authentic authorization, causal ordering, and commit-time validation into one explicit assumption-aware model; it must not claim deployment or production gate clearance.

##### Addendum R3 — Integrated signed-fixture model (2026-11-26)

**R1-001 / R1-005:** Material-to-receipt and policy/condition revision binding are now integrated *structurally* into the bounded R3 model, which verifies signed payload digests against the exact current material. **R1-003:** Ed25519 signature verification relative to ephemeral fixture public keys was exercised; independently legitimate signer identity, custody, rotation and revocation are **not established**.

**R1-002:** Full revocation coverage remains an assumed Boolean; the causal graph is not an authenticated external event log. **R1-004:** External authority hierarchy/precedence is undefined outside the fixture. **R1-006:** A distinct Alpha-Lock signing key is not proof of an independent controller. **R1-009:** An in-memory nonce-consumption operation is not an atomic external effect-commit transaction. **R1-008:** Only declared effects and rules are covered.

The exact tested R3 source and 2,084-case result are documented in \`11_R3_INTEGRATED_GATE_COMMIT_REPORT.md\`. Next work: authoritative trust roots, signed revocation-feed coverage, reliable causal ordering and a genuine commit-time serialization model. **No original UNKNOWN or proof-obligation disposition has changed.**

---

### Second Material-Binding Model — R2-01 Results

Source: `blue-prints/gates/xosg-1-research-2026-11-26/10_MATERIAL_BINDING_R2_RESULTS.md`

**Cycle date:** 2026-11-26  
**Research-only source:** `material_receipt_binding_model.test.js`  
**Disposition:** Structural receipt-to-material binding modeled and tested in a second bounded mock. **No cryptographic or externally authenticated security guarantee.**

##### Motivation and design

The earlier finite Alpha-Lock model checked matching candidate/revision/target labels but not the entire mutable plan underlying those labels. This allowed a potential **stale-receipt vulnerability in the model**: otherwise authorized new operations or revised conditions could be evaluated under old clearance receipts.

The second model records a canonical serialized snapshot of the following data at mock clearance:

- Candidate identity, revision, target, prompt identity and risk identity.
- Full candidate operation list, declared effects and interaction rules.
- Condition registry revision, enumerated required conditions, evidence and completeness marker.
- Grant identity, grant revision and exact permitted-effect scope.
- Selected project profile and policy revision.

The serialization sorts object keys while retaining array order. Every receipt must contain the *same* canonical material description as the source being evaluated. A mutation without renewing the receipt is rejected. This is intentionally **not a cryptographic digest** and proves neither origin nor the reality of those values.

##### Executed bounded experiment

| Subset                                                                              |      Size | Result                              |
|-------------------------------------------------------------------------------------|----------:|-------------------------------------|
| Exhaustive six-gate status masks (64) × five independent material-change masks (32) |     2,048 | 2,048 outcomes matched              |
| Targeted cases, including synthetic forgery witness                                 |        17 | 17 outcomes matched                 |
| **Total**                                                                           | **2,065** | **2,065 expected results observed** |

Of the 2,048 exhaustive combinations, exactly **one** returned mock `CLEARED`: all six gate results positive with **no** changed material axis. The five independent changes were: (1) an additional otherwise permitted operation, (2) a new supported condition and registry revision, (3) expanded grant permission, (4) updated policy revision, and (5) updated prompt identity. Any one changed axis without renewed receipts caused mock `NOT_CLEARED`.

The targeted tests additionally covered risk identity, target identity, interaction-rule changes/removal, condition verification method changes, an altered receipt snapshot, incomplete condition registry, missing gate, missing independent Alpha-Lock, and an explicit forgery witness.

##### The forgery witness: not a passing security property

One targeted fixture **mutates source material and regenerates all mock receipt snapshots** while leaving the mocked `authenticatedFixture` flags true. The evaluator returns mock `CLEARED` because all *self-supplied data* is internally consistent.

That is not proof that a real authorization would be accepted or that a real exploit exists. It is a **counterexample to claiming authentication from structural consistency alone**: the model cannot distinguish a legitimately refreshed receipt chain from an attacker-supplied coherent one. A real protected check would need independently authenticated authorizers and signers, replay protection, applicable scope and revocation handling.

##### Status of identified research issues

| Research issue                         | Current assessment                                                                                                                        |
|----------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| R1-001 — Material-to-Receipt Binding   | **Structural modeling gap addressed in the isolated R2-01 mock**; operational assurance and authenticated content provenance remain OPEN. |
| R1-005 — Policy and Condition Revision | **Revision/content mutation covered in R2-01 mock**; authoritative registry completeness and actual policy identity remain OPEN.          |
| R1-003 — Authenticated Receipt Trust   | **Unresolved; deliberately illustrated by forged-source-and-receipts fixture**.                                                           |
| R1-002 / R1-004 / R1-006 / R1-009      | Still unresolved; event feed, authority precedence, independent control and atomic effect commit need separate formal work.               |

##### Important integration limitation

The earlier **8,230-case** finite event-order/effect-closure evaluator and this **2,065-case** material-binding evaluator are **two separate research models**. They have **not yet been integrated into one model with cross-module proof**, so it would be incorrect to describe their combined 10,295 outcomes as one exhaustive end-to-end test.

**Next bounded pass:** Integrate material binding with causal event ordering, then model external receipt trust and complete revocation-event visibility as *explicit assumptions or unresolved conditions*. Only a later independently checked implementation could support operational claims.

**Historic dispositions:** No promotion. Proof Obligations PO-01–PO-11 remain OPEN and Unknown Findings U-001–U-014 remain UNKNOWN.

---

### R3 — Integrated Signed-Receipt, Effect and Commit Research

Source: `blue-prints/gates/xosg-1-research-2026-11-26/11_R3_INTEGRATED_GATE_COMMIT_REPORT.md`

**Research date:** 2026-11-26  
**Designation:** xOSG-1 Operations Contract (specification); es-xosg-9 only if actually instrumented  
**Scope:** Offline, research-only Node.js model; no operational gate, authorization, external effects or production deployment.

##### Purpose

Earlier R1/R2 studies separately examined (a) ordered Gate One–Seven clearance and modeled effect-commit timing, and (b) canonical operation-material binding. R3 combines both behaviors and adds **real Ed25519 signature verification over ephemeral test-fixture receipts**. The signatures validate fixture message integrity relative to **test-owned keys only**. This is **not an independently authorized external control plane**, and no verified operational system is claimed.

**Exact executable source:** \`integrated_gate_commit_research.test.js\` (Node.js 22+; offline, read-only except its own in-memory fixture state).

**Integrity of published source:** Local SHA-256 \`9cc4e5a84dca0051086afc347ad0ed4da19a1b894315c85a1cf20f420780cea1\`. Git object SHA-1 \`446ae6b76aad3355e93e64f1bad705ca799f6d90\`; this matches the committed source exactly.

##### Receipt and material path

The test-fixture flow is:

\`\`\`text declared candidate + operation plan + interactions + condition registry + profile └── canonical encoding → SHA-256 material digest └── operator-fixture grant (Ed25519 signed; scoped effects and expiry) └── Gate One receipt (Ed25519 signed, material/grant bound) └── Gate Two receipt (signed, predecessor linked) └── Gate Three receipt └── Gate Four receipt └── Gate Five receipt └── Gate Six receipt (restatement flag) └── Gate Seven Alpha-Lock receipt └── modeled causal COMMIT event \`\`\`

Every numbered gate receipt must match the expected test signer and gate number, exact material digest, grant-envelope digest, session identity, event identity, previous signed-receipt digest, positive clearance, and modeled expiry. The Alpha-Lock receipt must independently satisfy its corresponding checks using a different test key. **Gate One clearance is necessary but insufficient.**

The included effect-closure evaluator starts with declared direct effects and adds all generated effects under declared interaction rules until a finite fixed point. It blocks any out-of-domain or ungranted modeled consequence. This does not establish that real-world effects or interaction rules are exhaustively known.

The fixture requires mandatory-condition registry completeness and positive support, but the truth and source authority of those flags are still **assumed fixture inputs**.

##### Executed results

The exact source was executed locally with Node.js 22.16.0 and checked using \`node --check\`. It performs no network I/O and invokes no operational services.

| Suite                                  |     Cases | Expected outcomes observed | Notes                                                                                                      |
|----------------------------------------|----------:|---------------------------:|------------------------------------------------------------------------------------------------------------|
| Bounded gate/material/revocation sweep | **2,048** |                  **2,048** | 64 gate masks × 8 material-mutation masks × 4 revocation classes                                           |
| Targeted negative/edge cases           |    **36** |                     **36** | Signature, trust-key swap, receipt chain, material mutation, modeled revocation, replay, signer boundaries |
| **Total**                              | **2,084** |                  **2,084** | Zero expected-result mismatches                                                                            |

**Exactly two** exhaustive fixtures returned mock \`CLEARED\`: all six prior gates cleared, unchanged material, and revocation either not recorded with coverage asserted or explicitly modeled as after commitment. Every other exhaustive fixture returned mock \`NOT_CLEARED\`.

The targeted suite includes signed-grant corruption, altered Gate Four receipt, wrong signer roots, modified effect plan, new condition, profile change, Gate Six restatement mismatch, causal cycle, unknown side effect, incomplete condition registry, and expired grant. A duplicate in-memory session is blocked by \`simulateInMemoryCommit\`; a read-only eligibility recheck is not itself consumption and must not be described as replay enforcement.

##### Boundaries of cryptographic evidence

**What passed:** In the test harness, a signature generated by the corresponding ephemeral private key verifies under its configured fixture public key, and mutation of signed fields fails verification. Receipt digests link the authorized material and predecessor chain; the tests examine specified counterexamples.

**What did not pass or was not tested:** No legitimate human Operator or issuer identity has been established; all private keys and the trust registry are generated and controlled within **one test process**. Independent signers are therefore simulated by distinct keys, not proved independent entities. Re-signing the entire chain using all fixture-owned private keys creates another apparently valid mock chain. Cryptography alone cannot determine whether those keys should be trusted.

The event graph is an assumed fixture. Revocation coverage is an unauthenticated Boolean and may omit a real revocation. A valid test signature is not evidence that an operation was lawful, consensual, or within true project scope. Any private key compromise, replacement of the trust registry, or spoofed event feed defeats properties not explicitly modeled.

The program's simulated COMMIT is a **single-process in-memory record**, not an atomic boundary across external processes. Actual time-of-check/time-of-use safety, guaranteed lock enforcement, crash recovery, and real-world effect correctness remain unproved.

##### The finite-domain conclusion

For the specifically implemented test predicate, supplied trust roots, declared finite effect rules, signed fixture envelopes, supplied event DAG and revocation visibility assumptions, the tested cases match their expected results. This is behavioral agreement in a bounded model, not universal completeness or a theorem about deployed systems.

##### Current research dispositions

- **R1-001 material-to-receipt binding:** Structurally integrated for the present bounded fixture; completeness of all real material remains unestablished.
- **R1-003 receipt trust:** Local cryptographic verification exercised; independence, legitimate key ownership and external trust anchors remain **OPEN**.
- **R1-002 revocation coverage and R1-009 atomic commitment:** Remain **OPEN**; modeled as assumed inputs/events.
- **R1-004 legitimate issuer precedence, R1-006 independent Alpha-Lock, R1-008 real effect completeness:** Still **OPEN**.
- **PO-01–PO-11:** No formal proof discharged.
- **U-001–U-014:** All remain UNKNOWN.
- **Gate Zero v0.4 / G0-MOD v0.2:** Historical theoretical decisions remain unchanged.
- **Gate One and Gate Seven:** Neither was operationally cleared, installed, or activated.

Next: define a separate authoritative event-feed identity and a serialization/commit point that can be reviewed without granting the producing AI any unlock authority.

---

### R3 — External Authority, Revocation and Atomic Commit: Proof Targets

Source: `blue-prints/gates/xosg-1-research-2026-11-26/12_R3_TRUST_AND_ATOMIC_COMMIT_OBLIGATIONS.md`

**Designation:** xOSG-1 research only. The terms “shall” and “requires” below describe a **candidate future profile**, not operational adoption.

##### 1. Three separate questions

1.  **Message integrity:** Is a receipt exactly what a holder of a specified private key signed? The R3 model exercises Ed25519 on fixture data.
2.  **Legitimate authority:** Was that key held and used by an independently authorized issuer for the exact scope, effect and period? This is **not established** by fixture signatures.
3.  **Atomic enforcement:** Can the final clearance and the externally visible effect be serialized against revocation, policy changes, duplicated sessions and concurrent writes? The R3 in-memory model does **not** establish this.

Treating any of these as equivalent to the others would violate Gate Zero's assurance and correspondence boundaries.

##### 2. Proposed trust model (not implemented)

**Operator authority record:** \`issuer_identity\`, \`issuer_key_identity\`, \`authority_source\`, \`delegable_scope\`, \`target_scope\`, \`effect_scope\`, \`policy_revision\`, \`validity_interval\`, \`revocation_endpoint\`, and evidence of the legitimacy of the issuer. The producing AI cannot select or alter the issuer trust root.

**Gate receipt:** \`gate_number\` (1–7), \`gate_clearance\`, \`candidate_identity\`, \`candidate_revision\`, canonical \`material_digest\`, \`grant_digest\`, \`session_identity\`, \`receipt_nonce\`, \`previous_receipt_digest\`, \`policy_revision\`, \`condition_registry_revision\`, \`risk_revision\`, \`gate_event_identity\`, \`issued_at\`, \`expires_at\`, signer identity, and a signature verifiable against an independently managed key registry.

**Independent Alpha-Lock authority:** Must be distinct from the producing AI's effective authority; simply generating a second private key or process does not establish independence. The external authorization policy must establish the signer set, threshold/roles, scope, separation requirements and revocation behavior.

**Canonical encoding:** Needs a precisely versioned byte format and duplicate-key rejection. JSON object-key sorting in the R3 fixture is only a local research format; a production protocol must specify character normalization, numeric boundaries, supported data types, content hashes and streaming behavior.

##### 3. Proposed revocation evidence

A revocation event needs an authenticated \`grant_id\`, \`grant_revision\`, issuer or revoking authority, event identity, policy identity, causal/log position and signed evidence of the event. It must be clear **which authority can revoke which grant**.

An assertion that the event feed is “complete” is not sufficient. A future verifier would need a trustworthy watermark or equivalent statement of coverage, a defined freshness guarantee, and a failure policy for lost connectivity. An absent revocation in a stale or partitioned feed is not evidence of valid authority.

###### Ordering cases

| Relative order at effect commit                                               | Candidate decision                                    |
|-------------------------------------------------------------------------------|-------------------------------------------------------|
| Authenticated commitment before authenticated revocation, with valid coverage | Possible clearance, subject to all other requirements |
| Authenticated revocation before commitment                                    | NOT CLEARED                                           |
| Revocation and commitment incomparable or order unavailable                   | NOT CLEARED                                           |
| Source unavailable, coverage incomplete or untrusted clock                    | NOT CLEARED                                           |
| Gate Seven cleared earlier, but a revocation precedes the **actual** effect   | NOT CLEARED                                           |

These are proposed semantics. The R3 event DAG supplies edges as test data, not an authoritative distributed log.

##### 4. Candidate commit protocol

A future single authorized transaction boundary would have to guarantee, **at the same linearization point**:

\`\`\`text ASSERT exact candidate material and relevant policy/condition version unchanged ASSERT all six sequential gate receipts authenticated and current ASSERT final Alpha-Lock receipt independently authenticated for same effect ASSERT issuer/grant is presently valid, with authoritative revocation coverage ASSERT the modeled cumulative protected effects are within granted scope ASSERT this session or effect nonce has not already committed IF every assertion is established: atomically reserve/consume the nonce and commit only the exact scoped effect ELSE: refuse commit; retain Alpha-Lock closed or invalidate affected receipts \`\`\`

An atomic in-memory \`Set.add\` in a local test process is **not** a guarantee of serialization with an external effect, remote revocation, crash recovery or concurrent controllers.

**Protocol failure modes to model:** transaction retry, duplicate nonce across replicas, partial external side effect before commit, crash between clearance and effect, authorization revocation on another node, expired signer trust, stale local policy, conflicting issuer hierarchies, and rollback that itself needs authorization.

##### 5. Assurance obligations and negative-control experiments

| Obligation                                | Concrete evidence needed                                                 | Current status                |
|-------------------------------------------|--------------------------------------------------------------------------|-------------------------------|
| A-01: legitimate issuer roots             | Independent source of identities, issuers, scopes and precedence         | UNKNOWN; U-003                |
| A-02: signed receipt trust                | Verified signers, key custody, replay defense, key/scope revocation      | Only fixture signature checks |
| A-03: authoritative revocation visibility | Signed event source, coverage/freshness, partition handling              | UNKNOWN; U-006                |
| A-04: effect material coverage            | Complete applicable operation plan and relevant external effects         | UNKNOWN; U-004/U-005          |
| A-05: independent Alpha-Lock              | Demonstrated separation from producer and compromised common roots       | UNKNOWN; U-010                |
| A-06: atomic final effect boundary        | Formal transaction model, real implementation and independent validation | UNKNOWN; U-006/U-013          |
| A-07: containment and recovery            | Authority-safe stop and recovery transitions after denial                | UNKNOWN; U-007/U-012          |

**Required negative controls:** replace a trusted public key; compromise/reuse a test signer; supply a stale signed authorization; hide a revocation while claiming full coverage; create a concurrent commit/revocation; commit the same nonce on two simulated replicas; mutate condition rules while keeping labels unchanged; alter an independently held policy version. Positive results without these challenges do not support an operational-security assertion.

##### 6. Release and adoption boundary

This document is **an open research specification**, not a key-management policy, deployed gate, real authentication service or security certification. It does not authorize the AI to generate, grant, unlock, or self-certify root permissions. **xOSG-1 remains a documented operations contract; es-xosg-9 remains conditional on genuine instrumentation.**

No T2/T3 deferred atomic candidate or T4–T7 tranche is promoted. PO-01–PO-11 remain OPEN and U-001–U-014 remain UNKNOWN.

---

### xOSG-1 — Pending and Deferred Research, Reopened November 26, 2026

Source: `blue-prints/gates/xosg-1-research-2026-11-26/README.md`

**Framework:** xOSG-1 Operations Contract. **Instrumented realization:** es-xosg-9 *only if and when actually instrumented*. **Authority:** Research continuation only; no selected project profile, production clearance, security certification or promotion of deferred axioms.

The previous Gate Zero v0.4 foundation (eight promoted theoretical axioms) and G0-MOD v0.2 catalog (23 promoted optional atomic definitions, four deferred) remain the baseline. Historical C2/C3 archives are preserved unchanged. This directory is a new additive research cycle, not a revision of those decisions.

##### Progress register

| Research area                                  | Existing disposition | Progress this cycle                                                                  | Remaining condition                                            |
|------------------------------------------------|----------------------|--------------------------------------------------------------------------------------|----------------------------------------------------------------|
| Tranche 2, Item 03 — Provenance Continuity     | DEFERRED             | Derivation graph, evidence identity and incomplete-history counterexamples specified | Authenticated, bounded provenance coverage and proof           |
| Tranche 2, Item 06 — Pre-Copy Fallback         | DEFERRED             | Failure phases, irreversible effects and recovery adequacy separated                 | Concrete failure/restore authority and effect model            |
| Tranche 3, Item 01 — Explicit Evidence State   | DEFERRED             | Four support states, admissibility, scope and retraction sketched                    | Project-specific semantics and justified resolution            |
| Tranche 3, Item 08 — Assurance Independence    | DEFERRED             | Assessor/source dependence model sketched                                            | Independent trust roots, thresholds, verification              |
| Tranches 4–7                                   | DEFERRED             | New first modular research pass for each                                             | Formal atomic semantics, proofs and module relationships       |
| Gate Five consequence refinement               | DEFERRED             | Risk, evidence and invalidation counterexamples                                      | Consequence thresholds, adopted policy, independent verifier   |
| Universal literal loop unrolling               | DEFERRED             | Evaluated as optional bounded technique                                              | Equivalence, maintenance and use-specific benefit              |
| Proof Obligations 01–11                        | OPEN                 | All mapped to candidate proof artifacts                                              | Formal proof and independent verification                      |
| Unknown Findings 001–014                       | UNKNOWN              | All mapped to evidence gaps                                                          | Independent facts or proof not currently established           |
| Ordered seven-gate Alpha-Lock                  | Proposed             | 31 in-memory mock tests; all expected outputs observed                               | Real authentication, concurrent commit and external controller |
| Project adoption and es-xosg-9 instrumentation | NOT ESTABLISHED      | Explicitly separated from theory                                                     | Independently authorized implementation and runtime evidence   |

##### Documents

1.  **01_ATOMIC_RESEARCH.md** — all four deferred atomic items, with candidate semantics and countermodels.
2.  **02_TRANCHES_4_TO_7.md** — a first substantive modular study of composition, time, independent assurance and recovery.
3.  **03_PROOFS_AND_UNKNOWNS.md** — all eleven open proof obligations and all fourteen unknown claims, with bounded research actions.
4.  **04_GATE_SEVEN_DRYRUN.md** and **alpha_lock_research_model.test.js** — the 31-test report and reproducible, mock-only JavaScript evaluator.
5.  **05_OTHER_DEFERRED.md** — Gate Five consequence refinement, loop-unrolling, substitution and instrumented-system boundaries.
6.  **06_WORKLOG.md** — decision and progress ledger.

##### Second pass — finite semantic modeling (2026-11-26)

- **07_CORE_SEMANTIC_UNIVERSE.md** — authority, conditions, cumulative effects and causal time as explicit finite-domain predicates.
- **08_FINITE_MODEL_CHECK_REPORT.md** — the **8,192 exhaustive finite-domain cases** and **38 targeted cases**, with the observed outcomes and scope limitations.
- **09_DEFECTS_COUNTERMODELS_AND_RESEARCH_ORDER.md** — identifies a receipt-to-material binding gap and eight additional unverified assumptions; records the next countermodel order.
- **finite_clearance_commit_model.test.js** — executable research-only finite evaluator; **8,230** mock fixtures returned their expected outcomes.

**Earlier R2-01 material-binding follow-up (prior to R3 integration):** 10_MATERIAL_BINDING_R2_RESULTS.md and material_receipt_binding_model.test.js record **2,048 exhaustive material-change combinations plus 17 targeted cases, all matching expected outcomes**. A deliberately forged-source-and-receipts fixture demonstrates that structural equality cannot authenticate the source. These models were separate at R2-01; the later R3 model integrates both behaviors.

The R1 finite model initially checked names without full material binding; R2 investigated material binding independently, and R3 tested both together with fixture signatures. None is proof of runtime enforcement, independent external authority or an operational release.

##### R3 — Integrated signed-fixture model (2026-11-26)

- R3 integrated test report: **2,048 bounded combinations plus 36 targeted cases; 2,084/2,084 expected outcomes observed**.
- Trust-root, revocation and atomic commit research obligations: external authorization and real effect-commit requirements remain open.
- Reproducible integrated offline Node.js source: tests ephemeral Ed25519 keys, chained receipts, full material digests, bounded cumulative effects, causal order and revocation cases.

**Scope:** Genuine Ed25519 signature checks run against *fixture-controlled keys*; no real legitimate issuer or independently authorized controller is established. The model has no external effects and is not es-xosg-9 instrumentation.

##### Governing distinction

**Defined ≠ proven ≠ adopted ≠ instrumented ≠ authorized to act.** A gate returning CLEARED in a mock is not an actual gate clearance. The first production gate (Gate One) never permits production without the independent seventh gate, Alpha-Lock. Deferred and UNKNOWN entries are not silently promoted by this research pass.

---

