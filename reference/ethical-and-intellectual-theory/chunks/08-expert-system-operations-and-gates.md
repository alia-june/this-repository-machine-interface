# Expert-system operations and ordered gates

**Edition:** `alia-june/ethical-and-intellectual-theory`

**Source revision:** `fa1de43c27557c9f4e277d8dd6fbd9fc96a46cae`

**Coverage:** 5 source documents. Source names are labels, not hyperlinks.

### Errata — Ordered Gate Clearance and Gate Seven Alpha-Lock

Source: `blue-prints/gates/ERRATA_2026-11-25_ORDERED_CLEARANCE_ALPHA_LOCK.md`

**Date:** 2026-11-25  
**Subject:** xOSG-1 Operations Contract (formerly *Expert Systems Operation*) / Lunar Flower expert-system lineage  
**Class:** Corrective architectural amendment; **theoretical proposal only**, no implementation, deployment, project adoption, or actual Production Lock change.

##### The correction

The previous six-gate design placed **Gate Six — Prompt Restatement** before the numbered clearance sequence and treated **Gate One — Production Lock** as the ultimate effect-admission gate. That was incorrect for the newly directed ordered-clearance model.

The revised **seven-gate profile** has one fixed clearance order:

1.  **Gate One — Production Lock:** Independently establish the exact effect-scoped authorization. Clearing does **not** start production.
2.  **Gate Two — Reiteration:** Verify bounded candidate progress or, where applicable, establish that no further iteration is required.
3.  **Gate Three — Hand-off:** Verify the bound, accepted transfer; if no hand-off is required, establish that fact under the profile rather than silently skipping the gate.
4.  **Gate Four — Informed Operator Validation:** Establish the exact informed validation required by the contract, or establish that no additional validation is required under that contract.
5.  **Gate Five — Consequence-Scaled Challenge–Response:** Apply risk classification and any required independent controls; a low-risk classification is not a silent bypass.
6.  **Gate Six — Prompt Restatement:** Restate the original Operator prompt as understood; verify agreement with the exact candidate, constraints, authorized effects, and prior receipts. A mismatch is not clearance.
7.  **Gate Seven — Alpha-Lock:** The **second, final production gate**. Only an independent, authorized control may clear it after confirming **all six prior gates were actually CLEARED in order** for one identical candidate identity/revision/target/effect/policy context. Only then may that bounded production effect begin.

**Final gate outcome:** Every gate in the adopted seven-gate profile returns **CLEARED** or **NOT CLEARED**. Internal findings remain more expressive (failed, unresolved, conflicted, unavailable, not applicable). No internal state except positively established satisfaction may yield `CLEARED`. `NOT ADOPTED`, `UNKNOWN`, `CONFLICTED`, `NOT_APPLICABLE` without its independently validated governing rule, or an unsupported assertion **never** counts as a passing receipt.

**Order:** Gate One → Gate Two → Gate Three → Gate Four → Gate Five → Gate Six → Gate Seven. The restatement occurs as **Gate Six's clearance step**, not an earlier substitute. An early, non-gating paraphrase is permissible as a working interpretation, but is not the Gate Six clearance receipt.

**Two production gates:** Gate One clearance is necessary but insufficient. Gate Seven remains locked until the entire chain is complete and applicable independent external authorization remains valid. A cleared Gate Seven is bounded to the exact effect and does not waive other independently binding controls.

##### Non-escalation, reuse, and failure

- Gate Seven must not be self-cleared by the producing AI or by a Gate One receipt alone.
- Each receipt binds gate identity, sequence position, candidate and revision, declared target/effects, authorizer, policy/context, evidence, and relevant validity window.
- Gate `n` must verify the valid `CLEARED` receipt of Gate `n-1` before it clears itself; Gate Seven verifies **all** six, not only Gate Six.
- A change to prompt interpretation, candidate, target, revision, material risk, scope, external authorization, or required conditions invalidates affected clearances. Re-enter at Gate One when a material candidate or effect change occurs; Alpha-Lock remains locked.
- A late restatement mismatch cannot be patched by relabeling the previous receipts. Re-evaluate the affected chain.
- No hand-off, no extra iteration, no triggered challenge, or no additional Operator validation may be a *documented clearance outcome* of a gate **only when the adopted governing policy authorizes that conclusion and evidence supports it**. Silence is not clearance.
- The seven-gate sequence is a new proposed profile. Older unselected projects are not silently forced into it; their independently binding production locks remain effective.

##### Acceptance cases (conceptual, not executed)

| Case                                                                                               | Expected final result                                                                               |
|----------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Gate One clears, Gate Two unresolved                                                               | Gate Seven NOT CLEARED; no production                                                               |
| Gates One–Five clear, Gate Six restatement mismatches                                              | Gate Six NOT CLEARED; Gate Seven NOT CLEARED                                                        |
| Gates One–Six clear but recorded out of order                                                      | Gate Seven NOT CLEARED                                                                              |
| Gate Five is not adopted in a selected seven-gate profile                                          | Gate Five NOT CLEARED; Gate Seven NOT CLEARED                                                       |
| Gate Three establishes no hand-off required under a declared valid policy                          | Gate Three can CLEARED with a bounded receipt; not an implicit skip                                 |
| All six clear in order, then exact candidate revision changes                                      | Alpha-Lock remains NOT CLEARED; re-evaluate from Gate One                                           |
| All six clear in order but external production authorization is revoked                            | Gate Seven NOT CLEARED                                                                              |
| All six clear in order, receipts valid and coherent, independently authorized Gate Seven clearance | Gate Seven CLEARED for exact bounded effect; production may begin subject to other binding controls |

##### Publication and lineage

This erratum corrects the *published theoretical* canonical gate contract and the self-contained **xOSG-1 Operations Contract**. Its realized instrumented system, if and when established, is designated **`es-xosg-9`**. The older **Closure Stage C2/C3** Gate Zero research and historical decision records remain unchanged; neither their archival preservation nor their theoretical promotions establishes runtime enforcement.

**Disposition:** Proposed seven-gate architecture and corresponding documentation; no code execution, actual gate state, or external authority changed.

---

### Expert Systems Operation — Former Document Address

Source: `blue-prints/gates/EXPERT_SYSTEMS_OPERATION.md`

The complete standalone document is now the **xOSG-1 Operations Contract**.

**Expert Systems Operation** describes its architecture. The operations specification is designated **xOSG-1**; its actually instrumented realization is designated **`es-xosg-9`**, conditional on actual instrumentation. Neither designation asserts that deployment, validation or production clearance has occurred.

This page preserves links to the previous location. It is a compatibility pointer, **not** a second independent contract.

---

### Gates — Research and Proposed Expert-System Contracts

Source: `blue-prints/gates/README.md`

**Status:** Public theory; no automatic project adoption, active control, or production clearance.

**Primary specification:** xOSG-1 Operations Contract (formerly *Expert Systems Operation*) embeds the Gate Zero axioms, named Tranches, dependencies, pseudocode, ordered Gates One through Seven including Alpha-Lock, proposed tests, audit, open obligations, promotion decisions, deferrals, and unknowns in one continuous document. It contains **no internal links or required companion material**. Its instrumented realization is designated **`es-xosg-9`** only once instrumentation actually exists. LLM orchestration remains a contract-controlled last resort.

**Resumed research (2026-11-26), including the R3 integrated signed-fixture model:** xOSG-1 pending and deferred research includes first-pass semantics for four deferred atomic items and Tranches Four–Seven, all 11 proof obligations and 14 unknowns, and 31 initial in-memory seven-gate tests; the later integrated research model matched **2,084/2,084 expected cases** using temporary fixture Ed25519 keys. **Candidate research only; no independently established external authority, new promotion, instrumentation, or production clearance.**

This directory also retains two focused reading paths:

1.  **Gate 0 — Full research archive and modular axioms** — accepted Gate Zero Foundational Theory v0.4, Gate Zero Modular Catalog v0.2, all 27 Tranche 0–3 item dispositions, Closure Stage C2/C3 ledgers, dependencies, deferrals and 14 unknowns.
2.  **Gates 1–7 — Lunar Flower standing-gate contract** — the ordered seven-gate profile, including Gate Six — Prompt Restatement and Gate Seven — Alpha-Lock.

##### Gate map

| Gate                                           | Intent                                                                                             | Publication status                                    |
|------------------------------------------------|----------------------------------------------------------------------------------------------------|-------------------------------------------------------|
| Gate 0                                         | Foundational authority, evidence, condition, effect and temporal axioms                            | **Promoted as theory**; not a runtime gate            |
| Gate 1 — Production Lock                       | Effects require separate, scope-specific authorization                                             | Proposed; not activated here                          |
| Gate 2 — Reiteration                           | Re-evaluate candidates with a bounded evidence delta                                               | Proposed                                              |
| Gate 3 — Hand-off                              | Transfer tasks without silently transferring privileges                                            | Proposed                                              |
| Gate 4 — Informed Operator Validation          | Distinguish acknowledgment, understanding, consent and authority                                   | Proposed                                              |
| Gate 5 — Consequence-Scaled Challenge–Response | Optional, triggered risk checks and independent controls                                           | Proposed                                              |
| Gate 6 — Prompt Restatement                    | At sixth clearance, restates the original request consistently with the exact authorized candidate | Proposed; **CLEARED** or **NOT CLEARED**              |
| Gate 7 — Alpha-Lock                            | Second production gate; independently verifies Gates One–Six cleared in order                      | **Final production barrier; proposed, not activated** |

**Errata, 2026-11-25:** In the explicitly selected seven-gate profile, **Gate One → Two → Three → Four → Five → Six → Seven** is a strict clearance order. Gate Six is sixth, not an early gate pass. Every gate yields final **CLEARED** or **NOT CLEARED**; evidence uncertainty does not count as clearance. Gate One clearance does not permit production to begin. Gate Seven — Alpha-Lock remains closed until all earlier gates clear in order for the same candidate and effect scope. See the ordered-clearance erratum.

##### Gate 0 disposition at a glance

- **Gate Zero Foundational Theory v0.4:** Eight promoted theoretical premises; full axioms.
- **Gate Zero Modular Catalog v0.2:** Modular Principle 0 — Explicit Adoption (`M0`), 23 accepted optional rules, four deferred; full catalog.
- **Unresolved:** 14 identified unknowns; record and qualification.
- **Records:** Closure Stage C3 source and Closure Stage C2 source.
- **Programming invariants:** Separate Programming Verification Invariants 01–08.
- **Full identifiers and named Tranches:** All 27 Tranche items · Identifier glossary.
- **Readable theory and variable names:** Human-readable naming and pseudocode.

A promoted theory is not a required project profile, a verified program, or an implemented lock. Unselected protections remain optional; external binding restrictions remain independently effective.

##### Navigation

Blueprints · Lunar Flower contract · Repository homepage

---

### xOSG-1 Operations Contract

Source: `blue-prints/gates/xOSG-1_OPERATIONS_CONTRACT.md`

**Expert Systems Operation — Complete Gates Framework, Standalone One-Shot Edition**

**Operator designation, November 25, 2026:** The proposed operations specification is the **xOSG-1 Operations Contract**. **When that specification is actually instrumented, its instrumented realization is named `es-xosg-9`.** Publication or naming alone does not establish instrumentation, verified enforcement, runtime operation, project adoption, or production clearance.

**Document lineage:** The prior *Expert Systems Operation* one-shot and Lunar Flower expert-system seed are integrated here. Gate Zero research, the ordered Gates One–Seven, final Alpha-Lock, and LLM orchestration as last resort retain their established distinctions.

##### LLM Orchestration as Last Resort

**Hierarchy:** The xOSG-1 Operations Contract specifies Expert Systems Operation. Its instrumented realization, once actually established, is designated `es-xosg-9`. LLM orchestration remains a subordinate, contract-controlled last-resort route, not the governing system.

The preferred path is declared expert-system rules, evidence-bound evaluation, deterministic or bounded heuristic computation, and permitted tools. If those routes cannot resolve an eligible request, a governing contract may authorize LLM orchestration to produce a clearly labeled candidate. That candidate remains subject to the same evidence, validation, and independent authority requirements; an LLM cannot grant itself an exception, invent missing authority, or clear a production lock.

This heading describes the intended order of responsibility. It does not indicate an operational implementation or change the recorded gate and axiom dispositions.

**Research lineage:** Lunar Flower Expert-System Seed; Gate Zero Foundational Theory version 0.4; Gate Zero Modular Opt-In Catalog version 0.2; Closure Stages 2 and 3; Standing Gates One through Seven. **Consolidation:** 2026-11-25. **Errata (2026-11-25):** Gate Six now clears sixth, after Gate Five. Gate One clearance cannot start production. Gate Seven — Alpha-Lock clears last, only with a valid ordered chain from Gates One–Six. The corrected design is incorporated in Parts VII–VIII. **Status:** Published theoretical synthesis and archival integration. No deployment, runtime implementation, project-specific adoption, or clearance of any operational Production Lock is claimed.

> **Reading convention:** Everything necessary to understand the gate framework, its premises, named Tranches, interdependencies, control contracts, examples, programming conventions, historical decisions, deferrals, and unresolved claims is included **here**. This document intentionally contains no internal hyperlinks or dependence on a separate README. Historical identifiers remain solely to preserve provenance and decision accounting.

##### Reading the framework as one whole

The governing actor is the **Operator**, who retains decisions within independently established authority. The AI is a **contract-bound Orchestrator**: it may interpret, propose, transform, test, and hand off work only within permitted scopes. The proposed external control plane alone handles its separate locked-state authority. The AI cannot produce its own permission by making a claim, repeating a result, or presenting a plausible reason.

The framework has **two layers**. **Gate Zero** is a foundational theory and optional axiom library, **not** one of the numbered standing operational gates. **Gates One through Seven** are proposed control contracts with a fixed clearance sequence under the selected seven-gate profile. Gate Six is the sixth clearance check, and Gate Seven — Alpha-Lock is the final independently controlled release. Gate One retains its independent effect-scoped authorization, but a Gate One clearance cannot start production.

The status words are never interchangeable: **promoted theoretical definition** is not **selected by a project**; **selected** is not **verified**; **verified** is not **authorized**; **authorized to study** is not **authorized for production effects**; **unknown** is not a denial of objective truth, but it cannot be treated as established permission under an adopted fail-closed condition. **Deferred** means retained for later analysis rather than rejected.

**Reading sequence:** Parts I–II explain the architecture and vocabulary; Parts III–VI develop foundational rules, dependencies, and programming conventions; Parts VII–VIII present the standing gates and their interaction; Parts IX–XIII retain audit findings, limitations, decisions, and closure. Every part is present below; nothing needs to be opened elsewhere.

**Numerical reconciliation:** Gate Zero v0.4 has eight promoted theoretical axioms. The modular library records 27 atomic items across Tranches Zero through Three: 23 promoted into an **optional theoretical catalog**, four deferred. Tranches Four through Seven are conceptually crosswalked but not modularly specified. Fourteen named research conclusions remain **UNKNOWN**. The eight programming invariants are a **separate register**. Standing Gates Six and Seven and the new seven-gate sequence remain **proposed architecture**, not operationally activated. Neither this consolidation nor a document read changes any of those statuses.

##### Part I — The expert-system seed: purpose, roles, and architecture

###### Seed statement

> Place the AI under an expert-system contract, as an expert-system orchestrator, with generative synthetic decision-making as a last resort. Build all tools and the governing structure from the ground up.

The AI's assigned role is **contract-bound orchestration**, not independent authority to create its own rules, select new privileges, or declare its own outputs valid. Expert-system rules and explicit contracts govern admissibility, composition, task routing, and the conditions under which a candidate decision can be evaluated.

This seed is an architectural proposal. It must not be represented as an already operating system, and the words *expert system* do not themselves establish determinism, correctness, or security.

###### Architectural commitments

1.  **Expert-system contract first.** Define roles, goals, admissible actions, rule precedence, constraints, evidence requirements, and failure behavior before invoking an AI component.
2.  **Orchestration within the contract.** The AI may organize work and propose routing or assembly steps only within explicitly permitted interfaces. Contract adjudication and final authority are separate from the AI's suggestions.
3.  **Build the structure from the ground up.** The system's foundational abstractions, compositions, interfaces, contracts, and lifecycle rules are deliberately specified and constructed, rather than assumed from an opaque inherited stack.
4.  **Build the tools from the ground up.** Tools are developed as inspectable parts of that architecture, with narrow purpose, explicit I/O, error states, and evidence. Studying or transmigrating lessons from other projects does not turn imported code into a native, independently validated tool.
5.  **Prefer rule-governed decisions.** Explicit evidence, deterministic transformations where applicable, declared heuristics, and expert-system inference are evaluated before synthetic generation.
6.  **Generative synthetic decision-making is the last resort.** Only an explicitly permitted unresolved case may solicit a generated *candidate decision*. That proposal remains synthetic, traceable, challengeable, and subject to separate validation and authorization; it cannot silently be treated as a recovered fact, an accepted rule, or a final action.
7.  **Refusal and uncertainty are valid.** When a constraint fails, evidence is absent, or authority is missing, the system can decline, defer, or preserve a named unresolved state. Lack of evidence does not authorize synthesis or execution.

##### Part II — Full terminology: identities, Tranches, decisions, and risk classes

**Convention:** Use full names in ordinary prose. Preserve the compact code in parentheses or a **Historical ID** column. Codes do not constitute runtime variables, grants, implementation or verified proofs.

| Historical notation | Expanded human-readable meaning                                                                                                       |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| `G0`                | **Gate Zero** — foundational theoretical axioms, not a deployed runtime gate.                                                         |
| `G0 v0.4`           | **Gate Zero Foundational Theory, version 0.4** — eight promoted theoretical axioms.                                                   |
| `G0-MOD v0.2`       | **Gate Zero Modular Opt-In Catalog, version 0.2** — optional research library.                                                        |
| `G0-00`             | **Gate Zero — Authority Conservation**; other Gate Zero IDs name accepted axioms or conditional propositions, with separate statuses. |
| `M0`                | **Modular Principle 0 — Explicit Adoption** — accepted opt-in charter.                                                                |
| `M1`                | **Modular Umbrella 1 — Dependency and Composition Integrity** — non-atomic grouping.                                                  |
| `T0`–`T7`           | **Tranches 0–7** — `T` stands for **Tranche**, not an operation or privilege.                                                         |
| `T2-03`             | **Tranche 2, Item 03 — Provenance Continuity**; each item's exact status is in the full catalog.                                      |
| `PVI-08`            | **Programming Verification Invariant 08 — Establish Fallback Before Copying**, a separate programming preference.                     |
| `U-003`             | **Unknown Finding 003 — Authority Precedence**, not an affirmative or negative proof.                                                 |
| `DEP-001`           | **Dependency Record 001** — a provisional dependency.                                                                                 |
| `PO-001`            | **Proof Obligation 001** — an unresolved research obligation.                                                                         |
| `G5-C1`             | **Gate Five, Candidate 1 — Consequence-Sensitive Admission** — deferred refinement.                                                   |
| `LF-GATE-006`       | **Lunar Flower Gate Six — Prompt Restatement**, sixth in clearance order.                                                             |
| `LF-GATE-007`       | **Lunar Flower Gate Seven — Alpha-Lock**, the second and final production gate.                                                       |

###### Full tranche names

- **Tranche 0 — Primitive Definitions and Dependency Integrity** (`T0`).
- **Tranche 1 — Authority Foundations** (`T1`).
- **Tranche 2 — Identity, Provenance, and Reference Integrity** (`T2`).
- **Tranche 3 — Conditions, Evidence, and Uncertainty** (`T3`).
- **Tranche 4 — Composition and Consequences** (`T4`) — modularization deferred.
- **Tranche 5 — Temporal Validity** (`T5`) — modularization deferred.
- **Tranche 6 — Independent Assurance** (`T6`) — modularization deferred.
- **Tranche 7 — Containment and Recovery** (`T7`) — modularization deferred.

###### C2 and C3: two different code families

**Closure Stage C2** means the second research close-out stage: contradiction/redundancy audit. **Closure Stage C3** means the third close-out stage: promotion, deferral and unknown-accounting disposition.

Gate Five separately uses **consequence classes C0–C4**, which are risk labels and must **never** be confused with the identically spelled closure-stage abbreviations.

| Gate Five risk code | Readable meaning                                                          |
|---------------------|---------------------------------------------------------------------------|
| `C0`                | **Consequence Class Zero:** low-consequence, reversible.                  |
| `C1`                | **Consequence Class One:** material consequence.                          |
| `C2`                | **Consequence Class Two:** high consequence.                              |
| `C3`                | **Consequence Class Three:** destructive or potentially irreversible.     |
| `C4`                | **Consequence Class Four:** critical consequence or material uncertainty. |

###### Preservation policy

Use full human-readable names in live documentation. Keep historical abbreviations unchanged in C2/C3 source records, filenames, URLs, formal identifiers, and code contracts. Expanding a label never changes whether a rule is **promoted**, **deferred**, **unknown**, **adopted**, or **implemented**.

##### Part III — Gate Zero: eight accepted foundational theoretical axioms

**Disposition:** Eight **promoted theoretical premises**, not universal security proofs. Gate Zero v0.3 remains the earlier baseline. No production gate is cleared by promotion.

| ID     | Axiom                                       | Accepted theoretical obligation                                                                                                                                 |
|--------|---------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| G0-00  | **Authority Conservation**                  | Governed components do not acquire, exercise or delegate rights beyond applicable independently authorized permissions; valid external grants may change scope. |
| G0-00a | **Effective Authority Closure**             | The composition of locally permitted operations must not create a prohibited protected effect.                                                                  |
| G0-00b | **Assurance Boundary Integrity**            | Verification and attestation claims remain within the evidence, assumptions, state space, properties and transitions actually examined.                         |
| G0-00c | **Implementation Correspondence Integrity** | Verification of a model does not prove the behavior of a source, executable, configuration or environment without justified correspondence.                     |
| G0-01  | **Default Denial**                          | In a profile that adopts the admission model, missing, conflicting or unresolved required permission/conditions do not establish admission.                     |
| G0-02  | **Authorization Identity Continuity**       | Authorization issuer, identity, scope, actor, action, target, effects and governing context cannot be silently substituted as records are used or transformed.  |
| G0-03  | **Condition Integrity**                     | Mandatory conditions cannot be classified as satisfied unless their specified verification requirements are established.                                        |
| G0-07  | **Dependency-Scoped Change Invalidation**   | Material changes affecting the premises of a determination require reassessment of continued applicability; historical validity is not retroactively erased.    |

###### Interpretive boundaries

**Authority** is not the same as **evidence of authority**. **Approval to develop** is not **approval to publish or execute**. A correct verification statement may be inapplicable to a changed target. Identity of an approval and validity of its issuing authority are distinct.

A conceptual **necessary-condition** proposition for an exact `requested_operation` at its `authorization_decision_event` is:

``` text
eligible_for_further_review(requested_operation, authorization_decision_event) requires:
    required_authority_is_established
    AND authorization_identity_is_applicable
    AND mandatory_condition_set_is_complete
    AND all_applicable_mandatory_conditions_are_satisfied
    AND requested_effects_are_within_authorized_scope
    AND authorization_and_evidence_remain_applicable
```

All six named assertions require evidence under a declared profile. An `UNRESOLVED` or conflicted mandatory finding is not a passing result. The named state glossary and bounded theoretical flow are included later in Part VI.

This is **not** a sufficient-condition proof, authorization token, runtime gate, or algorithm. Unknowns remain unknown; a non-admission outcome does not itself prove authority never existed.

###### Not claimed

Logical independence/minimality of the eight premises, an exhaustively specified effect universe, complete verification conditions, universal consistency, and implementation correspondence are **UNKNOWN**, not certified. Later modular optional rules have not been shown equivalent to these axioms.

##### Part IV — Modular opt-in library: all 27 named atomic items and their dispositions

**Research edition:** Gate Zero Modular Opt-In Catalog version 0.2 (`G0-MOD v0.2`).

**Notation:** `T` means **Tranche**. For example, `T2-03` means **Tranche 2, Item 03 — Provenance Continuity**. Historical codes are retained for exact reference, never used as substitutes for explanations.

**Accounting:** 27 atomic items: **23 promoted optional theoretical definitions, four deferred**. The modular library has no automatic project adoption or operational effect.

###### Research tranche map

| Full name                                                      | Stable prefix | Status                         |
|----------------------------------------------------------------|---------------|--------------------------------|
| **Tranche 0 — Primitive Definitions and Dependency Integrity** | `T0`          | Atomic research recorded below |
| **Tranche 1 — Authority Foundations**                          | `T1`          | Atomic research recorded below |
| **Tranche 2 — Identity, Provenance, and Reference Integrity**  | `T2`          | Atomic research recorded below |
| **Tranche 3 — Conditions, Evidence, and Uncertainty**          | `T3`          | Atomic research recorded below |
| **Tranche 4 — Composition and Consequences**                   | `T4`          | Modular specification deferred |
| **Tranche 5 — Temporal Validity**                              | `T5`          | Modular specification deferred |
| **Tranche 6 — Independent Assurance**                          | `T6`          | Modular specification deferred |
| **Tranche 7 — Containment and Recovery**                       | `T7`          | Modular specification deferred |

###### The 27 named items

###### Tranche 0 — Primitive Definitions and Dependency Integrity

| Human-readable research item                   | Historical ID | Disposition           | Meaning and limitation                                                                                              |
|------------------------------------------------|---------------|-----------------------|---------------------------------------------------------------------------------------------------------------------|
| **Item 01 — Explicit Dependency Satisfaction** | `T0-01`       | **Promoted optional** | Prerequisite discovery never silently constitutes selection or verification.                                        |
| **Item 02 — Consistency Integrity**            | `T0-02`       | **Promoted optional** | Selected requirements must be satisfiable under a declared shared interpretation before consistency can be claimed. |
| **Item 03 — Non-Circular Justification**       | `T0-03`       | **Promoted optional** | Evidence/proof chains require grounded premises or explicitly justified circular proof semantics.                   |
| **Item 04 — Revision Authority Separation**    | `T0-04`       | **Promoted optional** | Authority to revise optional theoretical profiles does not confer an operational unlock.                            |
| **Item 05 — Guarantee Preservation**           | `T0-05`       | **Promoted optional** | Withdrawal of supporting premises triggers reassessment of dependent claims.                                        |

###### Tranche 1 — Authority Foundations

| Human-readable research item                 | Historical ID | Disposition           | Meaning and limitation                                                                             |
|----------------------------------------------|---------------|-----------------------|----------------------------------------------------------------------------------------------------|
| **Item 01 — Authority Source Anchoring**     | `T1-01`       | **Promoted optional** | An accepted grant has a traceable, independently established authority origin.                     |
| **Item 02 — Explicit Authority Scope**       | `T1-02`       | **Promoted optional** | A grant has declared action, target, effect and validity boundaries; unspecified is not universal. |
| **Item 03 — Exercise–Delegation Separation** | `T1-03`       | **Promoted optional** | Exercise permission does not automatically confer delegation permission.                           |
| **Item 04 — Delegation Non-Escalation**      | `T1-04`       | **Promoted optional** | Child grant cannot exceed the issuer’s valid delegable scope.                                      |
| **Item 05 — Profile Revision Authority**     | `T1-05`       | **Promoted optional** | Optional profile revisions require valid, independent revision authority.                          |
| **Item 06 — Restriction–Grant Separation**   | `T1-06`       | **Promoted optional** | Authority to restrict does not automatically confer authority to unlock or grant.                  |

###### Tranche 2 — Identity, Provenance, and Reference Integrity

| Human-readable research item                    | Historical ID | Disposition           | Meaning and limitation                                                                                            |
|-------------------------------------------------|---------------|-----------------------|-------------------------------------------------------------------------------------------------------------------|
| **Item 01 — Identity Binding**                  | `T2-01`       | **Promoted optional** | Object/grant identity must remain distinguishable under declared identity semantics.                              |
| **Item 02 — Reference Resolution Integrity**    | `T2-02`       | **Promoted optional** | A reference must resolve in accord with its declared stable/dynamic binding semantics.                            |
| **Item 03 — Provenance Continuity**             | `T2-03`       | **Deferred**          | Full derivation-history coverage and trust/verification semantics are not yet declared.                           |
| **Item 04 — Representation Non-Equivalence**    | `T2-04`       | **Promoted optional** | Representational equality or change cannot itself prove identity/authority continuity.                            |
| **Item 05 — Copy Isolation**                    | `T2-05`       | **Promoted optional** | Where selected, a working copy must not mutate the authoritative source through aliasing.                         |
| **Item 06 — Pre-Copy Fallback**                 | `T2-06`       | **Deferred**          | Strong consequence-complete fallback assurance lacks a declared failure/effect model; PVI-08 preference retained. |
| **Item 07 — Transformation Boundary Integrity** | `T2-07`       | **Promoted optional** | Source/copy/candidate/validation/commit remain distinct; validated is not committed.                              |
| **Item 08 — Authorization–Reference Binding**   | `T2-08`       | **Promoted optional** | Actual referenced target/action require applicable permission; reference possession does not grant it.            |

###### Tranche 3 — Conditions, Evidence, and Uncertainty

| Human-readable research item          | Historical ID | Disposition           | Meaning and limitation                                                                                                |
|---------------------------------------|---------------|-----------------------|-----------------------------------------------------------------------------------------------------------------------|
| **Item 01 — Explicit Evidence State** | `T3-01`       | **Deferred**          | Four-state (support/refute/neither/both) model requires accepted admissibility/aggregation semantics to be normative. |
| **Item 02 — Condition Identity**      | `T3-02`       | **Promoted optional** | A condition retains its proposition, scope, identity and verification requirements.                                   |
| **Item 03 — Evidence Provenance**     | `T3-03`       | **Promoted optional** | Record source, method, and context when relevant; record is not proof of authenticity.                                |
| **Item 04 — Applicability Integrity** | `T3-04`       | **Promoted optional** | Only evidence established applicable to the condition/context may support its satisfaction.                           |
| **Item 05 — Conflict Preservation**   | `T3-05`       | **Promoted optional** | Do not silently discard admissible contradictory evidence; independent of a particular truth-value encoding.          |
| **Item 06 — Sufficiency Integrity**   | `T3-06`       | **Promoted optional** | No satisfied condition claim without its declared evidence criteria being met.                                        |
| **Item 07 — Decision Separation**     | `T3-07`       | **Promoted optional** | An evidentiary finding does not itself create operational permission.                                                 |
| **Item 08 — Assurance Independence**  | `T3-08`       | **Deferred**          | Independence of actors/sources/processes and adequate criteria remain project-specific and unestablished.             |

###### Modular charter and boundaries

**Modular Principle 0 — Explicit Adoption (`M0`)** is a promoted catalog charter and is *not* one of the 27 atomic items. **Modular Umbrella 1 — Dependency and Composition Integrity (`M1`)** is a non-atomic description, not another independent axiom.

The four deferred items are **Tranche 2, Item 03 — Provenance Continuity**, **Tranche 2, Item 06 — Pre-Copy Fallback**, **Tranche 3, Item 01 — Explicit Evidence State**, and **Tranche 3, Item 08 — Assurance Independence**. No universal implementation proof, independence proof, or operational authorization is claimed.

##### Part V — How the optional axioms depend on each other

Dependencies are *prerequisites for a claimed guarantee*, not grants or implicit project selections. Tranche rules were initially recorded as candidates in Closure Stage Two; Closure Stage Three's promoted/deferred decisions govern their present theoretical catalog status.

###### Original package compositions, preserved as theoretical examples

###### Provisional package combinations (not equivalence proofs)

| Package        | Proposed composition              | Caveat                                           |
|----------------|-----------------------------------|--------------------------------------------------|
| T2-ID          | T2-01, T2-02, T2-04               | Does not establish access authority              |
| T2-PROV        | T2-01, T2-03                      | Provenance can be recorded but unverified        |
| T2-COPY        | T2-01, T2-02, T2-05, T2-06, T2-07 | Adequate fallback depends on consequence model   |
| T2-AUTH        | T2-01, T2-02, T2-08 + relevant T1 | A valid reference is not permission              |
| T3-BASIC       | T3-01, T3-02, T3-06, T3-07        | Does not require external authorization regime   |
| T3-TRACE       | T3-BASIC + T3-03, T3-04           | Evidence applicability still must be established |
| T3-CONFLICT    | T3-TRACE + T3-05                  | Conflict resolution is separately specified      |
| T3-INDEPENDENT | T3-CONFLICT + T3-08               | Independence must be evidenced, not counted      |

###### Dependency record: all ten documented interlocking relationships

###### Interlocking relationship ledger

| Edge ID | From -\> to                                                 | Type                      | Research status   |
|---------|-------------------------------------------------------------|---------------------------|-------------------|
| DEP-001 | T0 vocabulary -\> T1–T3 atomic semantics                    | Definition prerequisite   | Provisional       |
| DEP-002 | T1-01 + T1-02 -\> T1-03                                     | Applicability semantics   | Provisional       |
| DEP-003 | T1-03 + delegable scope -\> T1-04                           | Applicability / assurance | Provisional       |
| DEP-004 | T1 scope + T2 reference binding -\> T2-08                   | Cross-family              | Provisional       |
| DEP-005 | T2 identity + derivations -\> T2-03                         | Provenance                | Provisional       |
| DEP-006 | T3-02 + scope -\> T3-04                                     | Applicability             | Provisional       |
| DEP-007 | T3-03 + independence criteria -\> T3-08                     | Assurance                 | Provisional       |
| DEP-008 | T0-05 + profile change -\> reevaluate dependent guarantees  | Change invalidation       | Provisional       |
| DEP-009 | G0-00 + G0-02 + G0-03 -\> G0-06 duplicate-grant proposition | Conditional derivation    | Proof sketch only |
| DEP-010 | G0-01 + G0-02 + G0-03 + complete condition set -\> G0-05    | Conditional derivation    | Proof sketch only |

**Important:** `X -> Y` does **not** mean `X` mathematically entails `Y` unless it is separately marked as a verified derivation. Dependency cycles require independently grounded premises or valid fixed-point/proof semantics. Removing a prerequisite suspends claims justified solely by it; it does not prove the claimed statement false.

###### Contrasting overlapping and genuinely distinct rules

###### C2 dependency and redundancy dispositions

The following **overlaps are not equivalence proofs**:

| Items compared                     | Assessment                                                                                                | Ledger disposition                                                           |
|------------------------------------|-----------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|
| M1 vs T0-01/T0-02/T0-05            | M1 is a collective description of those distinct checks.                                                  | Retain as **umbrella**, do not count as additional independent atomic axiom. |
| T1-05 vs T0-04                     | One concerns authorized optional revision; other separates revision authority from operational unlocking. | Reinforcing, not identical; both unpromoted.                                 |
| T1-03 vs T1-04                     | Delegation right vs attenuation of actual delegation.                                                     | Separate concerns; no inferred authority.                                    |
| T2-01/T2-02/T2-04                  | Identity, resolution and representation can fail separately.                                              | Distinct candidates; dependencies remain provisional.                        |
| T2-05/T2-06/T2-07 vs PVI-07/PVI-08 | Theory guarantees vs programming conventions.                                                             | Preserve separate registers; overlap intentional.                            |
| T3-01 vs T3-05                     | Four-state vocabulary vs conflict-preservation obligation.                                                | Distinct; state existence alone does not compel preservation.                |
| T3-03 vs T3-08                     | Evidence provenance vs assurance independence.                                                            | Distinct; provenance does not establish independence.                        |
| G0-03 vs T3-06                     | Similar condition sufficiency at different theory levels.                                                 | Subject overlap only; modular equivalence not proven.                        |
| G0-07 vs T0-05                     | Changes to assessed context vs loss of a profile guarantee's premise.                                     | Shared dependency logic, different applications.                             |
| G0-08.S vs G0-08.R                 | No authority from failure vs existence of recovery path.                                                  | Do not merge safety with liveness.                                           |

**Dependency convention:** A selected optional claim requires established prerequisites or a justified alternative, not silently selected controls. The mathematical implication `A -> B` must not be inferred from a graph edge that merely records a prerequisite or conceptual relationship.

###### Conditional derived propositions and non-transferable guarantees

**These are not all independently promoted axioms.** Their deductions depend on premises listed in historical research.

| Historical identifier | **Full proposition or requirement name** | Qualification                                                                                                                                 |
|-----------------------|------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| G0-00a.E1             | Enforcement Coverage and Non-Bypass      | Every modeled path to protected consequences must face an applicable guard; coverage of a finite model is not proof of actual implementation. |
| G0-04                 | Independent Assurance Integrity          | Conditionally follows when independent verification is part of a genuinely established mandatory condition.                                   |
| G0-05                 | Mandatory Composition Integrity          | Conditionally follows when all mandatory conditions are completely identified, context-bound, and positively satisfied.                       |
| G0-06                 | Non-Cumulative Authority                 | Duplicated/replayed authorization records do not add grants; distinct valid grants may compose only within their governing scopes.            |
| G0-06.R1              | Authorization Evidence Idempotence       | Multiple records referring to one grant do not constitute new independent grants.                                                             |
| G0-06.R2              | Authorized Aggregation                   | Legitimate independent grants may coexist subject to composition and effect constraints.                                                      |
| G0-07.T1              | Temporal Authority Validity              | Historical, continuing, consequential and commitment-time permission must be distinguished; concurrent ordering remains unspecified.          |
| G0-08.S               | Containment Safety                       | Failure/denial does not create new authority for recovery or cancellation.                                                                    |
| G0-08.R               | Bounded Recoverability                   | Separately conditioned progress objective; safety alone cannot guarantee an authorized recovery path.                                         |

**Gate Five, Candidate One — Consequence-Sensitive Admission (`G5-C1`)** is a **separate, deferred Gate 5 refinement**, not an additional foundational Gate 0 axiom. More assurance does not manufacture missing authority. Irreversibility can affect assurance thresholds, and may change required authority when an applicable governing contract explicitly so provides.

The original proof sketches and scope limits are recorded in Closure Stage C2 research notes and Closure Stage C2 dependency ledger. They have **not** been machine checked or shown sufficient for production.

##### Part VI — Programming invariants: independent, bounded code practices

These preferences do **not** constitute a Gate 0 authority grant or universal security certification. The full Closure Stage C3 programming decision record is the accepted accounting.

| Human-readable identifier                            | Practice                                                               | Closure Stage C3 disposition                                |
|------------------------------------------------------|------------------------------------------------------------------------|-------------------------------------------------------------|
| **Programming Verification Invariant 01** (`PVI-01`) | Deterministic bounded iteration                                        | Accepted optional preference                                |
| **Programming Verification Invariant 02** (`PVI-02`) | Literal deterministic loop unrolling                                   | Deferred as a universal invariant; available as a technique |
| **Programming Verification Invariant 03** (`PVI-03`) | Explicit sentinel states                                               | Accepted optional preference                                |
| **Programming Verification Invariant 04** (`PVI-04`) | Variables declared and placed in a known state before use              | Accepted optional preference                                |
| **Programming Verification Invariant 05** (`PVI-05`) | Human-legible identifier conventions                                   | Accepted optional preference                                |
| **Programming Verification Invariant 06** (`PVI-06`) | Human-legible program flow                                             | Accepted optional preference                                |
| **Programming Verification Invariant 07** (`PVI-07`) | Work on an isolated copy obtained through an explicit source reference | Accepted optional preference                                |
| **Programming Verification Invariant 08** (`PVI-08`) | Establish a safe fallback **before** attempting the copy               | Accepted optional preference                                |

A reference to a mutable object is not automatically an isolated copy. A sentinel must not be mistaken for legitimate data. A successful validation does not automatically authorize committing a result. A fallback may not compensate for irreversible external effects; that stronger claim is deferred as **Tranche 2, Item 06 — Pre-Copy Fallback (`T2-06`)**.

###### Preferred human-readable programming form

- Declare every variable with its type, descriptive name, and known sentinel or defined initial state before use.
- Use terms such as `original_operator_prompt`, `authorization_grant`, `isolated_working_copy`, and `safe_fallback_reference` instead of one-letter identifiers or ambiguous numeric placeholders.
- Declare explicit bounds and named stop states for iteration. Literal loop unrolling is an optional representation, **not** a universal rule.
- Distinguish `UNRESOLVED`, `REFUTED`, `NOT_APPLICABLE`, and `SUPPORTED` when the selected evidence model requires them; none implicitly authorizes an effect.
- Preserve the original through an appropriate isolated copy, **establish the fallback before copying**, and separate validation of a candidate from authorization to commit.

###### Human-readable variable declarations, sentinel states, and pseudocode

**Scope:** The live Gate Zero v0.4 / Gate Zero Modular Catalog v0.2 documentation and proposed Lunar Flower Gates One–Seven. **Status:** Readable *theoretical examples only*. These are **not executable code**, implemented checks, or evidence of an operating controller.

This document replaces unexplained one-letter symbols and ambiguous placeholder status values with descriptive names. Existing numbered axiom and gate identifiers are stable references, **not variable names**. Their historical forms remain unchanged. The expanded terminology and complete Tranche catalog are included in Parts II and IV. The archived Closure Stages C2 and C3 research is intentionally preserved verbatim.

###### Naming contract

| Kind                              | Convention                                   | Example                                       |
|-----------------------------------|----------------------------------------------|-----------------------------------------------|
| Entity or data                    | Descriptive `snake_case` noun                | `requested_operation`, `authorization_grant`  |
| Truth-valued assertion            | Named, qualified proposition                 | `required_authority_is_established`           |
| Decision or evidence state        | Descriptive `snake_case` with typed sentinel | `authorization_evidence_state = UNRESOLVED`   |
| Operation or theoretical function | Verb-led `snake_case`                        | `evaluate_applicable_authority`               |
| Time / event point                | Name its causal role                         | `effect_commit_event`, `evaluation_event`     |
| Collection                        | Plural or `_set`, with declared bounds       | `applicable_mandatory_conditions`             |
| Fixed identifiers                 | Retain published stable tokens               | `G0-01`, `T2-08`, `LF-GATE-006`               |
| Enumerated outcome                | Explicit descriptive value                   | `ADMITTED_FOR_REVIEW`, `DENIED`, `UNRESOLVED` |

Use the terms **established**, **verified**, **eligible**, **authorized**, and **committed** only for their distinct meanings. Use `is_...` and `has_...` for clear assertions, but do not silently coerce a three-state proposition to a Boolean.

**Declaration and sentinel discipline:** Introduce every variable with its type and an explicit non-authorizing initial state *before* any operational assignment. `UNRESOLVED` is not `FALSE`; `NOT_APPLICABLE` is not `SATISFIED`. When the selected language supports tagged/optional types, prefer them to a magic integer sentinel. Do not initialize an unvalidated datum to a legitimate default merely to suppress an uninitialized-variable warning.

###### Historical symbol-to-name map

| Earlier shorthand or label | Human-readable replacement                                                                                                         | Meaning                                                         |
|----------------------------|------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
| `q`                        | `requested_operation`                                                                                                              | The exact action and target under consideration                 |
| `t`                        | `authorization_decision_event`                                                                                                     | The relevant event or commitment boundary                       |
| `g`                        | `authorization_grant`                                                                                                              | An identified historical grant                                  |
| `p` (proposition)          | `condition_proposition`                                                                                                            | A statement whose support is evaluated                          |
| `P_p`                      | `project_security_profile`                                                                                                         | Selected project-specific protections                           |
| `S_p`                      | `project_scope`                                                                                                                    | Declared operations, targets, and effects                       |
| `A_p`                      | `selected_axiom_set`                                                                                                               | Optional rules explicitly adopted                               |
| `D_p`                      | `required_dependency_set`                                                                                                          | Prerequisites needed for claimed guarantees                     |
| `R_p`                      | `profile_restriction_set`                                                                                                          | Selected restrictions and parameters                            |
| `V_p`                      | `profile_revision`                                                                                                                 | Version identity for the profile                                |
| `K_t(p)`                   | `evaluate_evidence_state(condition_proposition, authorization_decision_event)`                                                     | Scope- and time-bound evidence evaluation                       |
| `A(q,t)`                   | `required_authority_is_established`                                                                                                | Is the required scoped authorization evidenced?                 |
| `I(q,t)`                   | `authorization_identity_is_applicable`                                                                                             | Is the exact grant bound to this request?                       |
| `R(q,t)`                   | `mandatory_condition_set_is_complete`                                                                                              | Have all applicable requirements been enumerated?               |
| `C(q,t)`                   | `all_applicable_mandatory_conditions_are_satisfied`                                                                                | Are those enumerated requirements established?                  |
| `E(q,t)`                   | `requested_effects_are_within_authorized_scope`                                                                                    | Does composition preserve consequence boundaries?               |
| `V(q,t)`                   | `authorization_and_evidence_remain_applicable`                                                                                     | Is relevant scope/temporal validity current?                    |
| `E(p)=(s⁺,s⁻)`             | `evidence_support=(positive_support_exists,negative_support_exists)`                                                               | Proposed, **not promoted**, four-state evidence support pair    |
| `C0`–`C4`                  | `consequence_classification` with enumerated levels                                                                                | The Gate 5 class names remain stable                            |
| `Controls A–E`             | `risk_classification`, `operator_challenge`, `independent_verification`, `operational_stability`, `production_admission_interface` | Gate 5's stable control labels are retained for cross-reference |

The table is a **notation mapping**, not a claim that all historical formulas have been formally proved or that all labels are software variables.

###### State and operation declarations

The examples use `UNRESOLVED` as an explicit *tagged absence state* for any optional object/reference/input type; it is not a permitted value of an ordinary `Operation`, `Text`, or numeric datum. Likewise `EMPTY` is an explicit, typed empty bounded collection. A concrete programming language would need corresponding tagged union/option definitions rather than silently inserting an invalid value.

Conceptual verbs such as `ESTABLISH`, `EVALUATE`, `VERIFY`, `CREATE`, `TRANSFORM`, and `READ` are **named abstract procedures**, not implicit guarantees of success. Each produces evidence or remains `UNRESOLVED`. Any real implementation would need separately specified inputs, outputs, error cases, and trust boundaries; none is claimed here.

###### Conceptual gate-zero eligibility

The following pseudocode is *illustrative* and uses a declared finite set of mandatory conditions. It deliberately returns **review eligibility**, not operational execution permission.

``` text
TYPE EvidenceState = SUPPORTED | REFUTED | UNRESOLVED | CONFLICTED
TYPE EligibilityState = ELIGIBLE_FOR_REVIEW | DENIED | UNRESOLVED
TYPE ApplicabilityState = APPLICABLE | NOT_APPLICABLE | UNRESOLVED

DECLARE requested_operation : Operation = UNRESOLVED
DECLARE authorization_decision_event : DecisionEvent = UNRESOLVED
DECLARE applicable_authorization_grant : GrantReference = UNRESOLVED
DECLARE required_authority_state : EvidenceState = UNRESOLVED
DECLARE authorization_identity_state : EvidenceState = UNRESOLVED
DECLARE mandatory_condition_completeness_state : EvidenceState = UNRESOLVED
DECLARE applicable_mandatory_conditions : BoundedConditionCollection = EMPTY
DECLARE mandatory_condition_count : BoundedInteger = 0
DECLARE current_condition_index : BoundedInteger = 0
DECLARE all_required_conditions_satisfied : EvidenceState = UNRESOLVED
DECLARE authorized_effects_state : EvidenceState = UNRESOLVED
DECLARE current_validity_state : EvidenceState = UNRESOLVED
DECLARE eligibility_result : EligibilityState = UNRESOLVED

INPUT requested_operation, authorization_decision_event
ESTABLISH applicable_authorization_grant and its governing scope
EVALUATE required_authority_state, authorization_identity_state
ESTABLISH applicable_mandatory_conditions, mandatory_condition_count
VERIFY mandatory_condition_completeness_state

IF required_authority_state == REFUTED
   OR authorization_identity_state == REFUTED
   OR mandatory_condition_completeness_state == REFUTED:
    eligibility_result = DENIED
    RETURN eligibility_result
IF required_authority_state != SUPPORTED
   OR authorization_identity_state != SUPPORTED
   OR mandatory_condition_completeness_state != SUPPORTED:
    RETURN eligibility_result  // UNRESOLVED, no admission

all_required_conditions_satisfied = SUPPORTED
FOR current_condition_index FROM 0 TO mandatory_condition_count - 1:
    DECLARE current_mandatory_condition : Condition = UNRESOLVED
    DECLARE current_condition_evidence : EvidenceState = UNRESOLVED
    current_mandatory_condition = applicable_mandatory_conditions[current_condition_index]
    current_condition_evidence = evaluate_declared_condition(current_mandatory_condition)
    IF current_condition_evidence == REFUTED:
        eligibility_result = DENIED
        RETURN eligibility_result
    IF current_condition_evidence != SUPPORTED:
        all_required_conditions_satisfied = UNRESOLVED
        BREAK

EVALUATE authorized_effects_state
EVALUATE current_validity_state

IF authorized_effects_state == REFUTED OR current_validity_state == REFUTED:
    eligibility_result = DENIED
ELSE IF all_required_conditions_satisfied == SUPPORTED
    AND authorized_effects_state == SUPPORTED
    AND current_validity_state == SUPPORTED:
    eligibility_result = ELIGIBLE_FOR_REVIEW
RETURN eligibility_result
```

**Constraints:** The number and identity of mandatory conditions must be affirmatively established. The loop is bounded by that established count, not an untrusted sentinel or implicit infinite retry. Conflict or unknown cannot be treated as affirmative support. Declaring these types does not provide a verified runtime evaluator. Other independently binding conditions can still block effect admission.

###### Opt-in project-profile reasoning

``` text
TYPE ProfileStatus = NOT_SELECTED | SELECTED | INCOMPLETE | CONFLICTED | VALID_PROFILE | UNRESOLVED
TYPE ProfileAdoptionState = ADOPTED | NOT_ADOPTED | UNRESOLVED

DECLARE project_adoption_state : ProfileAdoptionState = UNRESOLVED
DECLARE project_security_profile : ProjectProfile = UNRESOLVED
DECLARE explicitly_selected_axioms : BoundedAxiomSet = EMPTY
DECLARE missing_dependency_set : BoundedDependencySet = EMPTY
DECLARE profile_consistency_state : EvidenceState = UNRESOLVED
DECLARE profile_status : ProfileStatus = NOT_SELECTED

EVALUATE project_adoption_state against an independently established project selection
IF project_adoption_state == NOT_ADOPTED:
    RETURN profile_status  // NOT_SELECTED, NOT a failing operational gate
IF project_adoption_state != ADOPTED:
    profile_status = UNRESOLVED
    RETURN profile_status

READ project_security_profile from the independently established project selection
ESTABLISH explicitly_selected_axioms from project_security_profile
FIND missing_dependency_set over the declared finite dependency graph

IF missing_dependency_set is not EMPTY:
    profile_status = INCOMPLETE
    RETURN profile_status

EVALUATE profile_consistency_state
IF profile_consistency_state == REFUTED:
    profile_status = CONFLICTED
ELSE IF profile_consistency_state == SUPPORTED:
    profile_status = VALID_PROFILE
    // This means only that the theoretical profile is structurally coherent.
RETURN profile_status
```

The procedure does **not** silently activate missing prerequisites or assume a complete dependency graph. Structural validity is not implementation verification, and profile revision does not clear any separately imposed lock.

###### Illustration — Gate Six restatement procedure (not early clearance)

``` text
TYPE RestatementState = NOT_ADOPTED | RESTATED | NEEDS_CLARIFICATION | UNRESOLVED
TYPE GateSixAdoptionState = ADOPTED | NOT_ADOPTED | UNRESOLVED

DECLARE gate_six_adoption_state : GateSixAdoptionState = UNRESOLVED
DECLARE original_operator_prompt : ImmutableText = UNRESOLVED
DECLARE established_request_context : ContextReference = UNRESOLVED
DECLARE proposed_prompt_restatement : Text = UNRESOLVED
DECLARE interpretation_match_state : EvidenceState = UNRESOLVED
DECLARE restatement_result : RestatementState = NOT_ADOPTED

EVALUATE gate_six_adoption_state using the independently established project profile
IF gate_six_adoption_state == NOT_ADOPTED:
    RETURN restatement_result  // NOT_ADOPTED
IF gate_six_adoption_state != ADOPTED:
    restatement_result = UNRESOLVED
    RETURN restatement_result

READ original_operator_prompt, established_request_context
proposed_prompt_restatement =
    restate_objective_constraints_and_unknowns(original_operator_prompt,
                                               established_request_context)
EVALUATE interpretation_match_state against the preserved original prompt

IF interpretation_match_state == SUPPORTED:
    restatement_result = RESTATED
ELSE:
    restatement_result = NEEDS_CLARIFICATION
RETURN restatement_result
```

A `RESTATED` outcome means the **machine's proposed interpretation** is available; it does not mean the Operator confirmed it. Material ambiguity requires clarification where consequential reliance would otherwise occur. Reiteration, challenge and authorization remain separate.

In the selected seven-gate profile, this pedagogical routine is **not** an early Gate Six clearance. Gate Six can finally return **CLEARED** only after Gates One–Five have cleared in order and the restatement faithfully matches the authorized candidate; otherwise its final result is **NOT CLEARED**.

###### Copy-through-reference and fallback example

This is a separate **programming-invariant** illustration, not an authority axiom or a guarantee of recovery from irreversible side effects.

``` text
TYPE CopyWorkState = NOT_STARTED | FALLBACK_READY | COPY_READY | CANDIDATE_VALID |
                     BLOCKED | UNRESOLVED

DECLARE authoritative_source_reference : ImmutableSourceReference = UNRESOLVED
DECLARE safe_fallback_reference : FallbackReference = UNRESOLVED
DECLARE fallback_adequacy_state : EvidenceState = UNRESOLVED
DECLARE isolated_working_copy : MutableWorkingCopy = UNRESOLVED
DECLARE transformed_candidate : Candidate = UNRESOLVED
DECLARE copy_work_state : CopyWorkState = NOT_STARTED

ESTABLISH authoritative_source_reference and its permitted scope
ESTABLISH safe_fallback_reference without depending on copy success
EVALUATE fallback_adequacy_state against the declared failure and effect scope
IF safe_fallback_reference == UNRESOLVED
   OR fallback_adequacy_state != SUPPORTED:
    copy_work_state = BLOCKED
    RETURN copy_work_state

copy_work_state = FALLBACK_READY
CREATE isolated_working_copy through authoritative_source_reference
IF isolated_working_copy == UNRESOLVED:
    copy_work_state = BLOCKED
    RETURN copy_work_state

copy_work_state = COPY_READY
TRANSFORM isolated_working_copy -> transformed_candidate
IF transformed_candidate == UNRESOLVED:
    copy_work_state = BLOCKED
    RETURN copy_work_state

IF validate_transformed_candidate(transformed_candidate) == SUPPORTED:
    copy_work_state = CANDIDATE_VALID
RETURN copy_work_state
// Candidate validation does not commit, replace, publish or execute anything.
```

**Failure boundary:** A fallback must be established *before* attempting the copy. If the act of copying itself causes an irreversible unauthorized disclosure, the unchanged original is not a sufficient fallback. General fallback adequacy remains deferred as **Tranche 2, Item 06 — Pre-Copy Fallback (`T2-06`)**.

###### Gate 5 — Human-readable review predicates

The existing contract's `GATE_5_READY_FOR_GATE_1_REVIEW` and `PRODUCTION_ADMISSIBLE` shorthand is rewritten in the standing-gates contract. Stable consequence classes `C0`–`C4` and formal gate IDs remain unchanged.

The review requires established classification, any mandated challenge, any mandated independent verification, stability, unchanged candidate/scope, required informed validation, satisfaction of all other mandatory gates, valid Operator authority, and an independently obtained Gate 1 clearance for the exact effect. Gate 5 being `NOT_ADOPTED` is **not** a passing result: a separate governing policy determines the applicable requirements.

###### Refactor boundaries

- **Changed:** Human-readable active Gate 0 notation and illustrative pseudocode; links and programming conventions; Gate 5 theoretical review predicate.
- **Unchanged:** The research status and adoption authority; the 20 archival C2/C3 source records; canonical gate and axiom IDs; operational production locks.
- **Unknown:** Independence/minimality, universal consistency, complete effect coverage, actual runtime correspondence and independent assurance. These remain unknown regardless of naming quality.

##### Part VII — Seven Standing Gates: Ordered Clearance and Alpha-Lock

The proposed seven-gate profile clears **Gates One through Seven in numeric order**. Gate One is the first production gate but cannot authorize immediate action; Gate Seven — Alpha-Lock is the second and final production gate. A gate returns **CLEARED** or **NOT CLEARED** as its final result, while internal evidence retains its own precise state. Gate Six restates the prompt at its sixth clearance position, after Gate Five. This is a theoretical specification and is not automatically adopted or implemented.

###### Gate 1 — Production Lock

**Intent:** Separate thinking, design, simulation, construction, and testing from an authorized effect on a production environment or public release.

- **Entry:** A candidate action, its declared effect and scope, the currently effective lock state, candidate identity/revision, evidence, and the asserted authorizing principal.
- **Default:** `LOCKED`; analysis and isolated staging may continue if otherwise permitted, but production mutation, deployment, publication, and external effects remain denied.
- **Unlock criterion:** Explicit, independently checked authorization for one bounded scope and candidate revision; prerequisite checks and the target environment must match the authorization.
- **Output:** `DENY_LOCKED`, `REVIEW_REQUIRED`, or `CLEAR_FOR_DECLARED_SCOPE`, accompanied by a reason and a receipt. In the seven-gate profile, only independently verified `CLEAR_FOR_DECLARED_SCOPE` maps to **Gate One = CLEARED**. **This is the first production gate, not authority to begin production.** Gate Seven remains locked until every gate clears in order.
- **Reset:** Re-lock on revision change, scope change, failed invariant, revoked authority, stale evidence, or expired clearance.
- **Control-plane exception:** Inspection, cancellation, revocation, and narrowly scoped lock-management operations must remain possible under lock, using a separate authenticated contract; the ordinary application path cannot clear its own lock.
- **Failure:** Unknown state, mismatched identity, missing evidence, or unreachable authorizer yields `DENY_LOCKED`; no autonomous override.

**Invariant:** The producer of a candidate cannot grant that candidate production authority merely by asserting success, passing its own tests, or generating a plausible rationale. **Gate One CLEARED does not permit action; Alpha-Lock is still NOT CLEARED.**

###### External error-and-lesson preproduction review (proposed resource)

Before **effect-scoped Production Lock clearance**, the receiving expert system should obtain a bounded, verified **external evidence receipt** for the exact candidate identity and revision, using the proposed Error and Lesson Registry and machine-readable resource contract. The planned registry may live on a microcontroller or developer-board host and provides **evidence for review**, not authority to execute or release.

A receipt must identify its source/generation, check prior relevant errors, reviewed lessons, claim support, canonical locks, contradictions, test requirements, evidence freshness and retrieval coverage. Missing entries do not prove safety. A failed lookup, stale generation, unresolved contradiction or unsupported high-impact claim **keeps production locked**; read-only investigation may continue under its own permission. Generated text retains a FABRICATION FLAG and cannot be promoted to an accepted lesson without review. Reiteration and hand-off must re-check that the same candidate revision remains in scope.

**Status:** resource and gate integration are proposed, not deployed or tested. No running device, physical isolation, permanent logging, automated admission, or anti-hallucination guarantee is implied.

###### Gate 2 — Reiteration

**Intent:** Permit purposeful re-examination of a candidate without confusing repeated reasoning with progress, proof, or increased authority.

- **Entry:** A bounded task, immutable baseline reference, current candidate, evidence delta, explicit stopping condition, and iteration budget.
- **Preflight:** Re-check the task objective, applicable rules, provenance, previous objections, and which fact or condition has changed since the last pass.
- **Permitted returns:** `ITERATE_WITH_DELTA`, `ACCEPT_FOR_NEXT_GATE`, `STOP_NO_PROGRESS`, `STOP_BUDGET_EXHAUSTED`, or `ESCALATE_UNRESOLVED`.
- **Progress witness:** A new admitted fact, a documented correction, a passed previously failing test, or another explicitly defined measurable change. Rephrasing, circular confirmation, self-citation, and synthetic elaboration do not by themselves count as progress.
- **Loop bounds:** Enforce a maximum pass count and resource budget, with an immutable or versioned record of inputs, changes, and outcomes.
- **Authority:** Reiteration may revise a proposal but cannot amend the governing contract, waive a gate, reset its own budget, or turn an unresolved issue into evidence.
- **Failure:** No meaningful delta or a repeated failure signature stops the loop and records the unresolved state rather than silently retrying.

**Invariant:** Repetition never creates permission, evidence, or correctness by accumulation alone.

###### Gate 3 — Hand-off

**Intent:** Transfer a bounded assignment between participants while preserving task continuity, identity, restrictions, provenance, and the ability to refuse.

- **Entry:** Identified sender and intended recipient, requested outcome, task scope, candidate/source revision, permitted data, permitted actions, dependencies, deadlines or stopping conditions if defined, and a return address or channel.
- **Admission:** Confirm the recipient exists, can receive the specified data, has the required bounded capability and authority, and accepts the task under the stated contract.
- **Handoff envelope:** Include versioned task identity, outcome and success criteria, relevant evidence references, known unknowns, forbidden actions, original constraints, required receipts, and an explicit `SENTINEL_UNRESOLVED` for unfilled necessary fields.
- **Acknowledgment:** Receipt and acceptance are distinct. An acknowledgment cannot be inferred from transmission; a recipient may reject, defer, or accept only an authorized portion.
- **Authority:** Delegate work, **not** intrinsic policy ownership. The sender cannot pass privileges it does not hold. Acceptance cannot silently expand scope or override production lock.
- **Return:** Require a result or a bounded blocked/refused report with evidence and a correlation identifier; returned results re-enter validation and relevant gates before admission.
- **Failure:** Missing recipient, contract mismatch, absent acknowledgment, stale revision, or integrity failure produces `HANDOFF_BLOCKED` or `HANDOFF_UNRESOLVED`, not presumed completion.

**Invariant:** A transferred instruction is not a transferred authorization, and task completion by one participant does not imply final adoption by another.

###### Gate 4 — Informed Operator Validation

**Gate ID:** `LF-GATE-004`  
**Default state:** `VALIDATION_PENDING`  
**Authority:** Human Operator  
**Failure behavior:** Fail closed  
**Status:** Proposed architectural contract; not an implemented enforcement mechanism

###### Purpose

An AI agent must not mistake acknowledgment for understanding, understanding for consent, or consent for authorization.

Whenever an AI agent requests human validation, clarification, confirmation, or authorization, the response must provide sufficient contextual evidence that the Operator understands the decision being presented.

**Simple acknowledgment is not sufficient validation.**

This gate is mandatory whenever the governing contract requires explicit human validation. Dangerous or sensitive operations require heightened evidence of understanding, not a weaker alternative to validation.

###### Validation requirements

1.  **Reject empty acknowledgment.** Responses such as "yes," "okay," "understood," "continue," or similar generic affirmations must not independently satisfy a validation requirement.

2.  **Require contextual understanding.** The Operator's response must demonstrate an understanding of the specific question, proposed action, relevant scope, or requested clarification. Existing conversation context may contribute evidence, but cannot substitute for explicit authorization when authorization is required.

3.  **Distinguish clarification from authorization.** An answer that resolves uncertainty does not automatically authorize execution. The agent must not infer consent or authority merely because the Operator has supplied information.

4.  **Apply heightened scrutiny to sensitive operations.** Where an action involves security, privacy, safety, destructive modification, irreversible consequences, external effects, or production changes, the agent must communicate the material implications and obtain explicit, action-specific authorization demonstrating awareness of those implications.

5.  **Reject insufficient validation.** If the response is ambiguous, unrelated, contradictory, or does not adequately address the material decision, the agent must reject it as validation and request targeted clarification.

6.  **Preserve the production lock.** Insufficient validation must never clear a production gate, authorize a dangerous operation, or be treated as permission to proceed.

7.  **Prohibit inferred clearance.** Repeated acknowledgments, apparent confidence, urgency, prior cooperation, or the agent's own assessment cannot independently establish authorization.

###### Critical invariant

**Acknowledgment ≠ Understanding ≠ Consent ≠ Authorization**

Each is a distinct condition. Where the governing contract requires them, each must be established independently.

###### Fail-closed behavior

If understanding or authorization cannot be adequately established:

- Reject the response as sufficient validation.
- Preserve the current production lock.
- Identify the specific unresolved question or consequence.
- Request appropriate clarification without coercion.
- Permit only actions independently authorized under the existing contract.

A change in action, target, scope, material risk, or candidate revision invalidates any authorization that no longer applies.

###### Operator sovereignty

The Operator retains final decision authority within the governing security contract.

The agent evaluates observable evidence in the response, not the Operator's intelligence, competence, or mental state. It must not impose arbitrary comprehension tests, manufacture uncertainty to obstruct authorized work, or use this gate to assume authority over the Operator.

###### Production invariant

`VALIDATION_ACCEPTED` does not itself mean `PRODUCTION_AUTHORIZED`.

Production remains locked until every applicable authorization, technical validation, and security condition has independently passed.

**A plausible acknowledgment must never be promoted into authorization merely because the agent wishes to proceed.**

###### Gate 5 — Consequence-Scaled Challenge–Response

**Gate ID:** `LF-GATE-005`  
**Classification:** Optional high-risk production safeguard  
**Default adoption state:** `DORMANT`  
**Trigger after adoption:** Declared risk thresholds, especially destructive, irreversible, critical, or operationally erratic actions  
**Failure behavior:** Fail closed for any required dependent transition  
**Status:** Proposed architecture; not implemented, activated, or independently verified

###### Governing purpose and adoption boundary

The greater an action's consequence, destructiveness, irreversibility, or observable operational instability, the stronger the assurance required before the action can be admitted. Relevant consequences include effects on people, rights, assets, security, privacy, data, external systems, and cascading dependencies.

Gate 5 is **optional for adoption by a governing contract**. When adopted, it is **not discretionary per operation**: the contract must declare its activation criteria and high-risk thresholds; the AI agent cannot silently bypass an applicable requirement by relabeling an operation low risk. A gate that is dormant has no claimed runtime effect. Every affected operation still remains subject to the other standing gates.

Gate 5 decomposes into independent controls with distinct inputs, outputs, evidence, and authority boundaries. One control's success does not imply that another control passed; separate logical modules do not themselves constitute independently trusted verification.

###### Control A — Risk Classification

**Function:** Determine risk for the exact proposed action, target, revision, environment, and effect scope using declared criteria and evidence.

**Inputs:** Consequence magnitude and affected parties/resources; reversibility and recovery; destructiveness; uncertainty; dependencies and possible cascading effects; observed operational instability.

**Output:** `RISK_CLASS` and a bounded, reviewable classification receipt.

| Class | Proposed meaning                             | Challenge burden                                                                                              |
|-------|----------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| `C0`  | Ordinary, low-consequence, reversible        | No Gate 5 challenge                                                                                           |
| `C1`  | Material consequence                         | Identify action, target, and intended result                                                                  |
| `C2`  | High consequence                             | Demonstrate material-risk, scope, and recovery understanding                                                  |
| `C3`  | Destructive or potentially irreversible      | Rigorous, action-specific understanding plus independent checks                                               |
| `C4`  | Critical consequence or material uncertainty | Rigorous challenge and additional independent safeguards; unstable execution remains blocked until stabilized |

A higher level inherits applicable lower-level requirements. Risk may be escalated when new evidence requires it; **reducing** a classification requires a separate authorized review supported by evidence. Unknown or ambiguous risk cannot be asserted as `C0`.

**Invariant:** The classifier cannot evaluate its own challenge, declare independent verification, waive a safety requirement, or authorize execution.

###### Control B — Challenge–Response

**Function:** Evaluate whether the Operator supplies the action-specific understanding and authorization evidence required by Control A and the applicable contract.

**Inputs:** The risk classification and receipt, exact candidate/revision, material consequences, named required comprehension points, and declared challenge criteria.

**Outputs:** `PASSED`, `INSUFFICIENT`, `REJECTED`, or `UNRESOLVED`, with recorded reasons.

Responses must identify the action and material implications at the applicable risk level. Generic acknowledgments, repetition, irrelevant explanations, copied formulas lacking contextual meaning, and conversational momentum are insufficient. For destructive or irreversible actions, the response must address actual targets and scope, effects that cannot be recovered, and any material limits of rollback or mitigation.

Challenge **difficulty increases by required evidential substance and independently controlled safeguards**, not arbitrary verbal complexity, intimidation, or endless questioning. The evaluator tests observable response content, not intelligence, diagnosis, or psychological state. It must not manufacture uncertainties or demand unrelated information to obstruct lawful operator decisions.

**Invariant:** A passed challenge is not independent verification, does not alter the risk class, and cannot itself clear Production Lock.

###### Control C — Independent Verification

**Function:** Test material factual and operational prerequisites without relying exclusively on the proposing AI's assertions.

**Inputs:** Exact candidate and target identity; classification and response receipts; versioned evidence; technical prerequisites; recovery and impact claims; independent authorizations when applicable.

**Outputs:** `VERIFIED`, `FAILED`, `INCOMPLETE`, or `UNAVAILABLE` with evidence references and limitations.

Verification can cover integrity of candidate and target, destructive effects, backup/restore viability, permissions, blast radius, tool/runtime safety, and external authorizer status. **At C3 and C4 this control is mandatory** under an adopted Gate 5 contract; lower levels may require checks where independent contractual rules demand them. Merely restating an AI-generated explanation, duplicating a function within the same trust boundary, or posing a harder question is not independent verification.

**Invariant:** Independent verification does not authorize the action or override failed validation, unstable execution, or a production lock. Unavailable mandatory verification blocks admission.

###### Control D — Operational Stability

**Function:** Monitor observable execution conditions and whether the action remains identifiable, bounded, and controlled.

**Inputs:** Target/scope consistency, command and instruction coherence, actual effects versus declared effects, state changes, broken invariants, unexpected outputs, and control-plane signals.

**Outputs:** `STABLE`, `UNSTABLE`, or `UNRESOLVED`.

The control may run throughout planning and execution. Contradictory or rapidly shifting instructions, unstable targets, unexpected modifications, uncontrolled effects, and inconsistent execution state are grounds for containment or suspension when they compromise reliable execution. “Erratic” describes **observable operation behavior**, not a claim about the Operator's mental state.

**Invariant:** An unstable operation cannot become stable through acknowledgment, additional challenge responses, or a model's reassurances. The affected operation stays blocked until the required stability conditions are separately established.

###### Control E — Production Admission Interface

**Function:** Provide the bounded outcome of Controls A–D as the **Gate Five clearance receipt** for the later **Gate Seven — Alpha-Lock** decision. Control E checks the already established exact-effect Gate One clearance and the applicable current state; it neither reorders gate receipts nor authorizes production by itself.

**Inputs:** Applicable control receipts, exact candidate and effect scope, Gate 4 result when required, other mandatory gate outcomes, and the current Gate 1 authorization state.

**Outputs:** `GATE_FIVE_CLEARED_FOR_NEXT_GATE` or `BLOCKED`. This outcome is **never** synonymous with `PRODUCTION_AUTHORIZED`; it permits only the next ordered step, **Gate Six**.

Conceptual review predicate, evaluated by the authorized receiving control—not asserted by the producing agent. Every variable is explicitly introduced as an unresolved assessment before being assigned its evidenced state:

``` text
TYPE RequirementEvidence = SUPPORTED | REFUTED | UNRESOLVED | CONFLICTED
TYPE GateFiveAdoption = ADOPTED | NOT_ADOPTED | UNRESOLVED

DECLARE gate_five_adoption_state : GateFiveAdoption = UNRESOLVED
DECLARE risk_classification_is_supported : RequirementEvidence = UNRESOLVED
DECLARE required_operator_challenge_is_satisfied : RequirementEvidence = UNRESOLVED
DECLARE required_independent_verification_is_satisfied : RequirementEvidence = UNRESOLVED
DECLARE operation_stability_is_supported : RequirementEvidence = UNRESOLVED
DECLARE candidate_identity_and_scope_are_unchanged : RequirementEvidence = UNRESOLVED
DECLARE required_operator_validation_is_satisfied : RequirementEvidence = UNRESOLVED
DECLARE all_other_mandatory_gates_are_satisfied : RequirementEvidence = UNRESOLVED
DECLARE valid_operator_authority_is_established : RequirementEvidence = UNRESOLVED
DECLARE gate_one_clearance_for_exact_effect_is_established : RequirementEvidence = UNRESOLVED
DECLARE gate_five_is_ready_for_gate_one_review : RequirementEvidence = UNRESOLVED
DECLARE gate_five_requirements_are_satisfied_under_the_adopted_policy : RequirementEvidence = UNRESOLVED
DECLARE all_production_effect_prerequisites_are_established : RequirementEvidence = UNRESOLVED

IF gate_five_adoption_state == ADOPTED:
    gate_five_is_ready_for_gate_one_review = SUPPORTED ONLY IF
        risk_classification_is_supported == SUPPORTED
        AND required_operator_challenge_is_satisfied == SUPPORTED
        AND required_independent_verification_is_satisfied == SUPPORTED
        AND operation_stability_is_supported == SUPPORTED
        AND candidate_identity_and_scope_are_unchanged == SUPPORTED
    gate_five_requirements_are_satisfied_under_the_adopted_policy =
        gate_five_is_ready_for_gate_one_review
ELSE IF gate_five_adoption_state == NOT_ADOPTED:
    // A separately established non-adoption policy determines whether
    // the operation is eligible without a Gate 5 challenge.
    EVALUATE gate_five_requirements_are_satisfied_under_the_adopted_policy
        using the independently authorized project contract
ELSE:
    // Unresolved adoption cannot be interpreted as a pass or non-adoption.
    gate_five_requirements_are_satisfied_under_the_adopted_policy = UNRESOLVED

// Applicable "if required" predicates mean SUPPORTED when the requirement
// is not triggered by a validly established governing policy. They never
// imply that an unmet required check has been waived.
all_production_effect_prerequisites_are_established = SUPPORTED ONLY IF
    gate_five_requirements_are_satisfied_under_the_adopted_policy
    AND required_operator_validation_is_satisfied == SUPPORTED
    AND all_other_mandatory_gates_are_satisfied == SUPPORTED
    AND valid_operator_authority_is_established == SUPPORTED
    AND gate_one_clearance_for_exact_effect_is_established == SUPPORTED
```

The named proposition `gate_five_requirements_are_satisfied_under_the_adopted_policy` must itself have an established applicable policy and evidence; it is **not** an alias that converts `NOT_ADOPTED` into `SUPPORTED`. This is explanatory pseudocode, not an executable authorization algorithm. The human-readable naming guide also defines the short historical predicates.

A dormant Gate 5 does not falsely satisfy `gate_five_is_ready_for_gate_one_review`: its result is `NOT_ADOPTED`, and a separate policy must determine whether any other already-mandatory protections permit the action. No gate may create authority from an absent requirement.

###### Control independence, escalation, and failure

- Each control has a separate responsibility and versioned receipt, bound to the candidate/revision, target, and operation scope. No control may silently rewrite another's evidence or erase a prior failed condition.
- New risk evidence may increase required scrutiny at any point. Higher risk invalidates lower-level assurances that do not meet the new requirements.
- If risk, target, scope, relevant effects, candidate revision, or operational state materially changes, dependent validation and authorization must be rechecked.
- A mandatory unavailable, failed, or unresolved control **blocks the dependent production effect**. Independently permitted inspection, cancellation, revocation, and safe containment may continue.
- Repeating requests or challenges does not accumulate authority. Any re-evaluation requires materially relevant new evidence, consistent with Gate 2.
- Gate 3 cannot delegate around an unresolved challenge. Gate 4's informed-validation result cannot substitute for independent verification. Gate 1 remains effect-scoped and locked by default.
- Enforceable independence requires actual trust-boundary and authority separation where claimed. A list of software components or an AI self-attestation is insufficient.

**Critical invariants:** Classification is not validation; validation is not verification; verification is not authorization; authorization is not stability; stability is not safety or permission; an absent or failed mandatory condition cannot be inferred to pass. No single AI-controlled component may classify risk, pass its own challenge, certify external verification, and clear the production lock.

**Publication boundary:** This is a proposed contract, not evidence that challenge engines, external checks, risk scoring, gate interlocks, or production enforcement have been built or tested.

###### Gate 6 — Prompt Restatement

**Gate ID:** `LF-GATE-006`  
**Classification:** Prompt interpretation and final agreement safeguard  
**Adoption state:** Required as Gate Six in the selected seven-gate sequence; otherwise opt-in under any separately authorized legacy profile  
**Clearance position:** **Sixth**, after Gate Five, immediately before Gate Seven Alpha-Lock. An early informal paraphrase is not Gate Six clearance.  
**Status:** Proposed architecture; not implemented, adopted, or independently verified

**Intent:** The machine restates the Operator's prompt in its own words **as it understands the request**. The restatement is a bounded interpretation claim, not a replacement instruction, a new requirement, or an authorization.

- **Entry:** The original prompt and already established context, constraints, exclusions, targets, and authorized scope.
- **Action:** After Gates One–Five clear in order, restate the original Operator request, declared constraints, exact candidate identity/revision, target, intended effects, and scope as understood; compare the restatement with the original prompt and established authorization. Identify rather than invent missing intent.
- **Internal outcomes:** `RESTATED`, `NEEDS_CLARIFICATION`, or `NOT_ADOPTED`. Preserve the original prompt separately. **Final Gate Six result:** `CLEARED` only for a faithful, materially consistent restatement with valid prior gate receipts; otherwise `NOT CLEARED`. A restatement is not Operator agreement or independent authorization.
- **Material mismatch:** Do not rely on an unsupported interpretation of a changed target, permission, prohibited action, or consequential effect. Request targeted clarification where needed.
- **Bound:** Do not force repeated confirmations for unchanged, unambiguous routine requests. Explicit Operator confirmation is a *separate* requirement only where the adopted contract or another applicable gate requires it.
- **Authority:** A restatement does not establish Operator agreement, independent verification, informed consent, authority to delegate, or production clearance.

**Invariant:** `RESTATED != CONFIRMED != AUTHORIZED`. Gate Six concerns **prompt interpretation**, Gate Two concerns **candidate reiteration**, and Gate Four concerns **informed Operator validation**. Gate Six cannot bypass Gates One–Five. A material mismatch blocks clearance, invalidates affected earlier receipts, and prevents Alpha-Lock from clearing.

###### Gate 7 — Alpha-Lock (Second Production Gate)

**Gate ID:** `LF-GATE-007`  
**Position:** **Seventh and final**, after Gate Six; the second independent production barrier after Gate One  
**Default state:** `LOCKED` / final outcome `NOT CLEARED`  
**Status:** Proposed architecture; not implemented, adopted, or tested

**Purpose:** Prevent production from beginning merely because Gate One approved its exact effect. Alpha-Lock is the **last gate**. Only this final, independently authorized release, after a valid ordered chain, permits the bounded production operation to begin.

- **Entry:** The unchanged candidate identity/revision, original Operator prompt and final restatement, exact target/effects, current binding project contract, present external authorization, and sequential receipts proving Gates One, Two, Three, Four, Five, and Six each returned `CLEARED`.
- **Sequence check:** Gate `n` clears only after Gate `n-1` has cleared, and Alpha-Lock validates **all six** prior gate receipts in their required order. No post hoc reordering, fabricated receipt, or implied pass is sufficient.
- **Clearance condition:** Verify exact identity/revision/target/effects, current contract and authorizer scope, provenance, required evidence, non-expiry/non-revocation, and that every preceding gate is still valid. An appropriately authorized **external control**—not the producing AI—must clear Alpha-Lock.
- **Final output:** `CLEARED` (bounded production may begin for the exact admitted effect) or `NOT CLEARED` (production blocked). Internal reasons may be `FAILED`, `UNRESOLVED`, `CONFLICTED`, `STALE`, `NOT_ADOPTED`, or `UNAVAILABLE`; none substitutes for a `CLEARED` receipt.
- **Invalidation:** Any material change to the prompt interpretation, candidate, revision, target, effects, risk, conditions, authorizer, or policy invalidates dependent receipts. The candidate must re-enter the sequence at Gate One when its identity, effects or scope change. Alpha-Lock re-locks.
- **Bound:** A Gate Seven clearance applies only to the stated effect and validity window; it does not delegate further rights or waive independently binding constraints.

**Invariant:** `GateOneCleared != ProductionMayBegin`. Only `GateOneCleared AND GateTwoCleared AND GateThreeCleared AND GateFourCleared AND GateFiveCleared AND GateSixCleared AND OrderedValidReceipts AND IndependentlyClearedAlphaLock` can establish production eligibility under this adopted profile. **No AI may clear Alpha-Lock using its own assertions.**

###### Ordered seven-gate clearance — errata-consolidated rule

Every gate in the adopted seven-gate profile has a **binary final outcome**: `CLEARED` or `NOT CLEARED`. A gate may internally record richer evidence states, but `UNRESOLVED`, `CONFLICTED`, `NOT_ADOPTED`, or an unproven `NOT_APPLICABLE` never maps silently to `CLEARED`. If an optional action inside Gate Two (additional iteration), Gate Three (hand-off), Gate Four (extra confirmation), or Gate Five (high-risk challenge) is **not required**, that gate must still produce a positive, independently justified `CLEARED` receipt under the adopted policy. The gate itself is **not skipped**.

``` text
TYPE FinalGateResult = CLEARED | NOT_CLEARED

DECLARE gate_one_cleared   : FinalGateResult = NOT_CLEARED
DECLARE gate_two_cleared   : FinalGateResult = NOT_CLEARED
DECLARE gate_three_cleared : FinalGateResult = NOT_CLEARED
DECLARE gate_four_cleared  : FinalGateResult = NOT_CLEARED
DECLARE gate_five_cleared  : FinalGateResult = NOT_CLEARED
DECLARE gate_six_cleared   : FinalGateResult = NOT_CLEARED
DECLARE alpha_lock_cleared : FinalGateResult = NOT_CLEARED

// This describes logical requirements; these declarations are not a controller.
GATE_ONE:   independently verify exact-effect authority -> gate_one_cleared
GATE_TWO:   require gate_one_cleared == CLEARED -> gate_two_cleared
GATE_THREE: require gate_two_cleared == CLEARED -> gate_three_cleared
GATE_FOUR:  require gate_three_cleared == CLEARED -> gate_four_cleared
GATE_FIVE:  require gate_four_cleared == CLEARED -> gate_five_cleared
GATE_SIX:   require gate_five_cleared == CLEARED -> gate_six_cleared

IF any preceding result != CLEARED OR ordered receipts invalid:
    alpha_lock_cleared = NOT_CLEARED
ELSE:
    // Only a separate authenticated, independently authorized control can act.
    alpha_lock_cleared = external_alpha_lock_clearance_for_exact_effect()

PRODUCTION_MAY_BEGIN only when alpha_lock_cleared == CLEARED
```

The sequence is a **proposed theoretical profile**, not code that has been deployed. The prior Gate Zero research and historic modular opt-in decisions remain unchanged. Adoption of this new seven-gate profile requires project-specific authorization.

##### Part VIII — Ordered Gate Composition, Decision Routes, and Validation Cases

###### Gate composition and precedence

**Errata:** The gate sequence is strictly `Gate One → Gate Two → Gate Three → Gate Four → Gate Five → Gate Six → Gate Seven (Alpha-Lock)`. Gate One clearance alone cannot start production. Gate Six is the **sixth** final clearance check, not an early gate pass. If early paraphrasing is used for convenience, the sixth-gate restatement and its receipt still occur after Gate Five.

``` text
PREPARE EXACT CANDIDATE UNDER INDEPENDENTLY ALLOWED READ / STAGING SCOPE
    -> GATE 1: PRODUCTION LOCK / EXACT-EFFECT AUTHORIZATION       -> CLEARED?
    -> GATE 2: BOUNDED REITERATION OR DOCUMENTED NO-ITERATION     -> CLEARED?
    -> GATE 3: BOUNDED HAND-OFF OR DOCUMENTED NO-HANDOFF          -> CLEARED?
    -> GATE 4: INFORMED VALIDATION UNDER DECLARED CONTRACT       -> CLEARED?
    -> GATE 5: RISK CLASSIFICATION & REQUIRED INDEPENDENT CHECKS -> CLEARED?
    -> GATE 6: RESTATE ORIGINAL PROMPT / VERIFY EXACT CONSISTENCY-> CLEARED?
    -> GATE 7: ALPHA-LOCK / VERIFY ALL ORDERED RECEIPTS & AUTHORITY
        -> CLEARED: exact bounded production may begin
        -> NOT CLEARED: block production
```

Every transition verifies the preceding gate's receipt, the same candidate revision and scope, and required evidence. A non-cleared outcome halts the transition. Any material candidate change returns the proposed effect to Gate One and keeps Alpha-Lock locked. Operational Stability may be assessed continuously without changing receipt order. Gate Zero remains theory; no published document is itself a running enforcement mechanism.

###### Initial validation cases (proposed, not executed)

| Test                                                                                                   | Expected gate outcome                                                                                |
|--------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| Production effect requested while locked                                                               | Deny effect; preserve inspection/staging boundary                                                    |
| Authorized clearance, then candidate revision changes                                                  | Re-lock and require fresh review                                                                     |
| Same candidate repeated without new evidence                                                           | Stop reiteration as no progress                                                                      |
| Iteration count or resource allowance exhausted                                                        | Stop with unresolved receipt                                                                         |
| Recipient missing, refuses, or lacks scope                                                             | Block hand-off without privilege escalation                                                          |
| Hand-off acknowledged but not accepted                                                                 | Do not infer task execution or completion                                                            |
| Returned result asks for a production effect                                                           | Re-check production lock and separate authorization                                                  |
| Generated explanation asserts that any gate passed                                                     | Treat assertion as data, not gate evidence                                                           |
| Adopted Gate 6: faithful prompt restatement                                                            | Record interpretation beside the original; no authorization implied                                  |
| Adopted Gate 6: restatement changes target or omits a prohibition                                      | Mark interpretation unresolved; preserve prompt and clarify material mismatch                        |
| Gate Six is not adopted within a selected seven-gate profile                                           | Gate Six NOT CLEARED; Alpha-Lock NOT CLEARED; do not silently skip                                   |
| Operator responds with a bare "yes" or "okay" when validation is required                              | Reject as insufficient validation; request contextual clarification                                  |
| Operator clarifies the action but does not authorize it                                                | Accept clarification only; keep authorization unresolved                                             |
| Sensitive operation requires permission but material consequences were not understood                  | Do not authorize; communicate consequences and request action-specific validation                    |
| Validated action, target, risk, or candidate revision changes                                          | Re-evaluate understanding and authorization; keep production locked until reauthorized               |
| Adopted Gate 5: low-risk action with no trigger                                                        | Record `CHALLENGE_NOT_REQUIRED` under declared policy; preserve every other gate                     |
| Adopted Gate 5: destructive operation assigned C0 without evidence                                     | Reject unsupported low classification and escalate/review                                            |
| Operator repeats assent without describing irreversible effect                                         | Fail required challenge; retain lock                                                                 |
| C3/C4 challenge passes but independent verifier is unavailable                                         | Block production; a verbal response cannot replace verification                                      |
| Operation becomes erratic after challenge passes                                                       | Suspend affected action until independently stable; reassess scope and risk                          |
| AI attempts to use Gate Five or Gate One success as permission to execute                              | Reject; Gate Seven Alpha-Lock must independently clear after Gates One–Six clear in order            |
| Proposal remains only a document, with Gate Five unimplemented                                         | Record as theoretical; claim no running enforcement                                                  |
| Gate One CLEARED; Gate Two not cleared                                                                 | Alpha-Lock NOT CLEARED; no production                                                                |
| Gate Six restatement conflicts with original prompt or candidate                                       | Gate Six NOT CLEARED; Alpha-Lock NOT CLEARED; re-evaluate affected earlier receipts                  |
| All first six receipts CLEARED but received out of order                                               | Gate Seven NOT CLEARED; no production                                                                |
| All first six receipts CLEARED in order, then candidate revision changes                               | Invalidate affected chain, restart Gate One; Alpha-Lock remains locked                               |
| Gates One–Six CLEARED in order but independent Alpha-Lock control unavailable                          | Gate Seven NOT CLEARED; no production                                                                |
| Gates One–Six CLEARED in order for unchanged effect, valid authority, independently cleared Alpha-Lock | Gate Seven CLEARED for exact bounded effect; production may begin, subject to other binding controls |

**Status:** These are **standing proposed gates for the generic expert-system seed**, not proof that lock enforcement, iterative control, inter-agent communication, or delegated authorization exists. No gate may silently adopt a synthetic decision as fact or policy.

###### Proposed decision order — corrected seven-gate profile

Candidate preparation uses contract-bound rules, deterministic methods, expert-system inference and approved tools. **LLM orchestration remains a last resort** and supplies only a candidate; it never counts as a gate pass.

``` text
REQUEST -> CONTRACT / EVIDENCE -> RULES / DETERMINISTIC TOOLS
    -> CANDIDATE
    -> if permitted and unresolved: LABELLED LLM-GENERATED CANDIDATE

CANDIDATE
    -> GATE 1 CLEARED  [first production authorization; do not act]
    -> GATE 2 CLEARED  [bounded reiteration assessment]
    -> GATE 3 CLEARED  [handoff assessment]
    -> GATE 4 CLEARED  [informed validation assessment]
    -> GATE 5 CLEARED  [consequence and independent review]
    -> GATE 6 CLEARED  [final faithful prompt restatement]
    -> GATE 7 CLEARED  [independently controlled ALPHA-LOCK]
    -> PRODUCTION MAY BEGIN FOR THE EXACT AUTHORIZED EFFECT

ANY NOT CLEARED -> ALPHA-LOCK REMAINS LOCKED -> NO PRODUCTION
```

This is a theoretical order, not executable code. It does not authorize a project to select the new seven-gate profile or let the producing model alter locked control planes. See the dated erratum for the earlier error and correction.

##### Part IX — Bounded adversarial audit: all eighteen Closure Stage Two findings

**Date:** 2026-11-24 **Type:** bounded adversarial review of the theoretical register **Result:** no contradiction demonstrated by inspected examples; no claim of universal satisfiability, independence, or minimality.

###### Audit criteria

- **Resolved by scope:** compatible once distinct domains, contexts, or authority layers are made explicit.
- **Overlap classified:** related safeguards are not automatically duplicates or independently proven equivalent.
- **Deferred:** requires formal semantics, additional evidence, or implementation studies beyond the closing cycle.
- **Operational blocker:** prevents a stronger deployment or assurance assertion, not necessarily honest research archiving.

###### Contradiction and redundancy table

| Check  | Apparent conflict or overlap                                          | Finding                                                                                                            | Disposition                               |
|--------|-----------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
| C2-A01 | G0 v0.4 promoted vs optional M0 selection                             | Accepted theory does not imply default project adoption.                                                           | Resolved by scope.                        |
| C2-A02 | Monotonic non-escalation vs Operator choosing fewer optional controls | Authorized project revision and AI self-unlock are distinct authorities.                                           | Resolved by authority separation.         |
| C2-A03 | Profile dependency closure vs opt-in                                  | Discovering prerequisites is not selecting or satisfying them.                                                     | Resolved by T0-01 interpretation.         |
| C2-A04 | M1 vs T0-01/T0-02/T0-05                                               | M1 summarizes underlying protections; independent axiom not demonstrated.                                          | Classified as umbrella.                   |
| C2-A05 | T1-03 vs T1-04                                                        | Exercise/delegation separation differs from attenuation of delegation.                                             | Distinct, with provisional dependency.    |
| C2-A06 | T1-01 independent authority vs legitimate external grant changes      | Grounded external grants may modify rights; internal self-generation remains prohibited.                           | Resolved by source and context.           |
| C2-A07 | T2-01/T2-02/T2-04                                                     | Identity, reference resolution and representation each admit counterexamples to equivalence.                       | Distinct, unproved independence.          |
| C2-A08 | T2 copy safeguards vs PVI-07/PVI-08                                   | T2 claims selected preservation guarantees; PVI records programming discipline.                                    | Cross-register overlap, not substitution. |
| C2-A09 | T3-01 four-state support vs T3-05 conflict preservation               | A vocabulary alone does not obligate retention of conflicting evidence.                                            | Distinct obligations.                     |
| C2-A10 | T3-03 provenance vs T3-08 independence                                | Recording the source does not prove the source is independent.                                                     | Distinct obligations.                     |
| C2-A11 | G0-03 vs T3-06; G0-04 vs T3-08                                        | Comparable purposes but no demonstrated equivalence across optional and baseline theories.                         | Deferred equivalence.                     |
| C2-A12 | Default denial vs unresolved/conflicted evidence                      | For opted-in admission only, unresolved evidence does not grant permission; epistemic status remains unresolved.   | Resolved by decision/evidence separation. |
| C2-A13 | G0-07 vs T0-05                                                        | Both handle dependency invalidation; profile premise withdrawal and temporal context change have different scopes. | Shared principle, no proven equivalence.  |
| C2-A14 | G0-08 containment vs recovery                                         | Denial is safety; recovery requires a permitted path and progress assumptions.                                     | Explicitly separated.                     |
| C2-A15 | Stronger restrictions always imply better security                    | Narrower allowed set may harm availability or recovery.                                                            | Reject unqualified claim.                 |
| C2-A16 | T4–T7 considered finished because historic G0 work exists             | Subject crosswalk does not create atomic modular specifications or proofs.                                         | Deferred modular first-pass work.         |
| C2-A17 | Proposed G0 minimal basis independently proven                        | Earlier counterexamples are informal under evolving semantics.                                                     | Deferred formal independence/minimality.  |
| C2-A18 | Model assurance automatically carries to execution                    | G0-00c explicitly disallows unsupported correspondence claim.                                                      | Operational verification outside scope.   |

###### Residual high-materiality issues

1.  **Effect universe and completeness:** G0-00a cannot establish protection for unmodeled cumulative or external effects. Keep all assurance claims bounded.
2.  **Authority precedence:** A theory can require an independently legitimate source without specifying every possible conflict among external authorities. No precedence or emergency grant invented.
3.  **Time and revocation:** An operation's effect/commit point and partial event ordering must be defined for rigorous temporal claims. Unknown remains unknown.
4.  **Selected condition completeness:** An empty observed list does not prove all mandatory conditions were found.
5.  **Formal equivalence/independence:** No mechanized proof and no accepted substitution proof between G0 and modular candidates.
6.  **Recovery:** Neither fail-closed safety nor a fallback alone guarantees a valid recovery path.

###### Audit conclusion

**Research closure appropriate with explicit limitations.** The examined definitions do not force an internal contradiction, but this is not a general proof of consistency. There is no defensible basis for silently promoting T0–T3, claiming T4–T7 modular completion, certifying operational security, or weakening any extant control.

##### Part X — Outstanding error, risk, and research accounts

###### Historical accounting corrections (A0 series)

| ID     | Issue                                   | Risk                                                             | Accounting / next action                                              |
|--------|-----------------------------------------|------------------------------------------------------------------|-----------------------------------------------------------------------|
| A0-E01 | Independence claims stated too strongly | Treat counterexamples as proof of minimality                     | Qualify as provisional; require formal semantics and countermodels.   |
| A0-E02 | Authority hierarchy unspecified         | Conflicting grant resolution without authority                   | Define legitimate issuer and authority relationship in future theory. |
| A0-E03 | Protected effect universe incomplete    | Unmodeled composite consequences                                 | Declare effect boundaries; scope assurance claims.                    |
| A0-E04 | Temporal ordering ambiguous             | Revocation / commit race misclassified                           | Model partial ordering and commitment; preserve unresolved cases.     |
| A0-E05 | Safety and recovery conflated           | Treat denial as sufficient recovery or recovery as new authority | Keep G0-08.S vs G0-08.R distinct.                                     |

###### Modular branch issues (M series)

| ID    | Issue                                                                 | Severity to research claims | Required follow-up                                                            |
|-------|-----------------------------------------------------------------------|-----------------------------|-------------------------------------------------------------------------------|
| M-R01 | Optional selection may be confused with deployment                    | High                        | Explicit release/adoption/enactment boundary in every profile.                |
| M-R02 | Dependencies may be accidentally auto-adopted                         | High                        | Treat dependency closure as discovery; never silent activation.               |
| M-R03 | Adding restrictions may reduce recoverability                         | Medium                      | Compare separate restrictiveness, assurance, availability, recovery axes.     |
| M-R04 | Profile downgrade may implicitly remove externally binding lock       | High                        | Require separate revision authority; external gate precedence.                |
| M-R05 | Cyclic dependency may masquerade as proof                             | High                        | Ground proof graph; distinguish axioms, obligations and derived propositions. |
| M-R06 | Satisfiable profile may be represented as verified                    | High                        | Separate model existence from evidence/correspondence assurance.              |
| M-R07 | Equivalent substitutions may not actually prove equivalent guarantees | Medium                      | Require scoped derivation before declaring substitute controls.               |

###### T1/T2/T3 technical-theory issues

| ID     | Issue                                                         | Required boundary or countermodel                                  |
|--------|---------------------------------------------------------------|--------------------------------------------------------------------|
| T1-R01 | Delegable vs executable authority assumed identical           | Model two rights separately; allow legitimate delegate-only actor. |
| T1-R02 | Circular issuance without external anchor                     | Two agents authorizing each other is not sufficient grounding.     |
| T2-R01 | Shallow copy aliases mutable source                           | Copy created ≠ source isolated; define required isolation.         |
| T2-R02 | Copy itself discloses data or causes external effects         | Original preserved ≠ sufficient fallback.                          |
| T2-R03 | Reference target changes between check and use                | Applicability to resolved target must be renewed or stably bound.  |
| T2-R04 | Provenance record merely asserted                             | Recorded ≠ verified provenance.                                    |
| T2-R05 | Candidate validated but commit unauthorized                   | Separate validation from commit permission.                        |
| T3-R01 | Evidence status interpreted as objective truth                | Four support states are epistemic, not truth values.               |
| T3-R02 | Missing applicability labeled inapplicable                    | Use `UNRESOLVED` where applicability is not established.           |
| T3-R03 | Contradictory evidence silently replaced by favorable finding | Preserve conflict until admissible resolution.                     |
| T3-R04 | Multiple dependent reports claimed as independent             | Source/process correlation must be examined.                       |
| T3-R05 | Increased evidence treated as increased permission            | New contrary evidence may reduce admissibility.                    |
| T3-R06 | Evidence state conflated with programming sentinel            | Keep state-of-value distinct from state-of-knowledge.              |

###### Proof obligations and assurance limits that remain open

###### Outstanding proof obligations

- **PO-01:** Specify consistent formal semantics for all eight G0 v0.4 axioms, including cross-domain effects.
- **PO-02:** Establish (or decline) formal independence and minimality; current sketches are not proofs.
- **PO-03:** Define project scope, authority source and precedence for conflicting external authorities.
- **PO-04:** Define finite/unbounded effect universes, including side channels and cumulative effects.
- **PO-05:** Distinguish complete mandatory-condition set from merely empty recorded set.
- **PO-06:** Establish authorization point, commitment event, revocation and partial-order semantics.
- **PO-07:** Define acceptable recovery states and conditional liveness assumptions.
- **PO-08:** Prove or reject alternative dependency sets/substitutions for each optional package.
- **PO-09:** Formalize T3 conflict resolution without illicitly converting conflict into permission.
- **PO-10:** Examine T4 composition, aggregation, conflicting permissions and consequence closure.
- **PO-11:** Examine T5 temporal properties, T6 independent assurance and T7 containment/recovery when authorized by continued research.

###### Assurance/claim restrictions

No mechanized proof, runtime verification, completeness proof, repository update, production clearance or actual profile adoption occurred as a result of this notes snapshot. Proof sketches are deliberately marked conditional. Records are not equivalent to validated implementations.

###### Closure triage C1

| ID    | Question or issue                                            | Closure disposition                                                         |
|-------|--------------------------------------------------------------|-----------------------------------------------------------------------------|
| C1-01 | T4–T7 modular studies not individually completed             | **Disclosed limitation; nonblocking** for scope-limited conceptual closure  |
| C1-02 | G0 v0.4 axiom independence/minimality unproved               | **Disclosed limitation; nonblocking** if no formal-minimality claim is made |
| C1-03 | Optional profile selection vs existing production lock       | **Boundary reaffirmed; resolved at theoretical-scope level**                |
| C1-04 | Dependencies recorded as though selection implied activation | **Prohibited by M0/T0-01; residual verification remains open**              |
| C1-05 | Proof obligations PO-01–PO-11                                | **Deferred for formalization**, not asserted completed                      |
| C1-06 | Open-ended proliferation of new axioms                       | **Frozen for closure** absent a material protection gap                     |

**No issues are marked as mathematically resolved solely because they are deferred.**

###### C2 close-out classification

No open proof obligation is represented as discharged. Audit dispositions below concern **fitness for bounded theoretical closure**, not fitness for an operational security claim.

| ID    | Issue                                                               | Status at C2                       | Blocks                                                                      |
|-------|---------------------------------------------------------------------|------------------------------------|-----------------------------------------------------------------------------|
| C2-01 | Opt-in M0 vs accepted v0.4 theoretical axioms                       | Resolved by scoping                | Not research closure; requires explicit project adoption for applicability. |
| C2-02 | Operator profile weakening vs non-escalation                        | Resolved by authority separation   | Operational weakening without independently established authorization.      |
| C2-03 | Dependency discovery vs adoption                                    | Resolved by T0-01 boundary         | Claims of an established guarantee with missing prerequisites.              |
| C2-04 | M1 duplicates several T0 requirements                               | Classified as umbrella             | Formal independent-axiom count for M1.                                      |
| C2-05 | T2 copy invariants vs PVI duplicates                                | Classified as cross-domain overlap | Claims that coding conventions prove authorization or data safety.          |
| C2-06 | G0-03 vs T3-06 / G0-04 vs T3-08                                     | Defer equivalence                  | Modular coverage/equivalence claims.                                        |
| C2-07 | Formal independence/minimality of eight axioms                      | Deferred, explicit limitation      | Any claim of proven minimality.                                             |
| C2-08 | Protected-effect domain, authority precedence and temporal ordering | Deferred, explicit limitation      | Complete security proofs or operational specification.                      |
| C2-09 | T4–T7 modular axiom formalization                                   | Deferred, crosswalk only           | Claim of modular specification completion.                                  |
| C2-10 | Recoverability/liveness and authorized recovery paths               | Deferred, separate goal            | Guaranteed recovery claim.                                                  |
| C2-11 | Verified implementation correspondence                              | Outside theoretical scope          | Claims about deployed security.                                             |

**Research close-out blockers:** None identified that prevents documenting the studied scope, provided claims remain bounded as above. **Certification/deployment blockers:** Open PO-01 through PO-11 and unestablished operational correspondence remain material.

**Ledger freeze:** The historical A0, M, T1–T3, and PO registers are retained rather than overwritten. Future research may update them only as a new, explicitly scoped cycle.

##### Part XI — Tranches Four through Seven: prior findings and what remains unfinished

**Record type:** Scope reconciliation for closure. This is **not** a new first-pass study of atomic T4–T7 axioms and not a proof of equivalence.

| Planned tranche                     | Earlier G0 coverage                    | Existing modular hooks                                                            | Supported conceptual finding                                                                                                                                 | What remains **uncompleted**                                                                                           |
|-------------------------------------|----------------------------------------|-----------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| **T4 Composition and Consequences** | G0-00a, G0-05, G0-06; G5-C1 separately | T1-02 scope; T2-08 authority–reference binding; T3-07 decision separation         | Locally permissible actions can produce prohibited aggregate effects; mandatory gates require coherent context. Duplicating evidence does not add authority. | A defined modular composition operator; explicit effect-universe boundary; formal interaction and substitution proofs. |
| **T5 Temporal Validity**            | G0-07 and G0-07.T1                     | T2-02 dynamic reference resolution; T2-08; T3-04 applicability                    | Historical grant, current applicability, evidence validity, revocation, and commitment must be distinguished.                                                | A formal event-order / commit-point semantics and modular dependency proof.                                            |
| **T6 Independent Assurance**        | G0-00b, G0-00c, G0-03, G0-04           | T3-03 provenance, T3-06 sufficiency, T3-08 independence                           | Verification claims must remain within evidence scope; required independence cannot be inferred from repeated reports.                                       | Independent-assurance substitution criteria; model-to-implementation assurance proof; verifier trust assumptions.      |
| **T7 Containment and Recovery**     | G0-08.S and G0-08.R, G0-00 / G0-01     | T1-06 restriction/grant separation; T2-06 fallback; T2-07 transformation boundary | Denial creates no authority; containment and liveness/recovery are distinct; fallback adequacy depends on consequences.                                      | Liveness assumptions; identified recoverable-state class; authorization of each recovery operation.                    |

###### Closure classification

- **Conceptually covered:** Subject has already been examined within the historic G0 research; boundaries and counterexamples exist.
- **Modularly unformalized:** No accepted T4–T7 atomic catalog or dependencies have been established.
- **Deferred rather than silently completed:** Any claimed modular equivalence to G0 v0.4 requires a separately grounded derivation.

###### Non-equivalence checks

1.  Passing all applicable mandatory gates does not prove permitted combined effects.
2.  The presence of historical authority does not guarantee authority at the effect's commit point.
3.  More attestations do not necessarily mean independent assurance.
4.  A safe denial does not guarantee eventual recovery.
5.  Restriction-strengthening is not universally equivalent to increasing safety, availability, or recoverability.
6.  A theoretically valid opt-in selection cannot override independently binding operational rules.

###### Future disposition

If modular T4–T7 granularity becomes necessary for a specific selected project, reopen **only the appropriate tranche** with an explicit purpose and bounded scope. Do not treat broad theoretical closure as a guarantee of that project's fit.

##### Part XII — Closure Stage Three: promotion memorandum and decision rubric

###### Authority and boundaries

The user expressly authorized triage and theoretical promotion. Promote only within the **accepted opt-in library**, not into a project-specific profile or the existing production control plane. Keep the eight promoted G0 v0.4 axioms unchanged. G0-MOD v0.2 is a new **theoretical catalog release**, not a replacement for G0 v0.4.

###### Decision rubric

- **PROMOTED (THEORY):** The specified, conditional normative relationship is clear enough to retain as an accepted *selectable* library contract. This is **not** a proof of universal necessity, independence, implementability, actual satisfaction, or production effectiveness.
- **DEFERRED:** A useful concept remains non-promoted because essential underlying semantics or adequacy criteria are underspecified, or the scope lies outside this cycle. Deferral is not rejection.
- **UNKNOWN:** A proposition whose truth/validity cannot be determined from research available. Unknown must not be reported as true, false, satisfied, violated, or safely deployable.
- **NON-ATOMIC:** An umbrella or derived summary; preserve without adding another independent axiom.

###### Accepted theoretical release

1.  **M0 — Explicit Adoption:** A reusable, optional catalog rule applies to a particular project only through a valid, explicitly established selection. M0 governs interpretation of this catalog; it does not alter independently binding law, production locks, or project policy.
2.  **T0–T3:** Promote 23 well-bounded atomic *selectable specifications*: five T0, six T1, six T2, and six T3. Preserve applicability prerequisites and the distinction between library membership and a demonstrated guarantee.
3.  **G0 v0.4:** Preserve its previous eight promoted foundational statements unchanged; no claim of full modular equivalence.
4.  **Derived/non-atomic:** M1 is an umbrella for T0-01/02/05. G0-04/05/06 retain conditional derivation status; G0-08.S remains conditional and G0-08.R remains a separate recovery objective. No new theorem is certified.

###### Deferred

T2-03, T2-06, T3-01, and T3-08; T4–T7 modular decompositions; G5-C1 consequence refinement; universal proof claims, operational verification, and complete substitutability. The underlying programming preference to establish a fallback before copying is preserved independently as PVI-08, not removed.

###### Unknown rather than assumed

Authority-source precedence and exception semantics; effect-universe completeness; complete enumeration of mandatory conditions; provenance verification across derivation graphs; adequate fallback for irreversible effects; independence criteria in a concrete environment; choice of evidence logic and admissibility; temporal commit/revocation races; guaranteed recovery; independence/minimality/completeness and model-implementation correspondence. The fourteen unknown findings and their claim restrictions are reproduced in Part XII.

###### Selection convention

A library item is *available*, not *selected*. Selection is not evidence of satisfaction. Missing dependencies suspend guarantees; they are not automatically selected. A change to a theoretical profile never grants an AI permission to unlock external gates. No user project has adopted this release as an operational profile.

###### The complete promotion and deferral decision ledger

| Decision | Item                                                                  | Disposition                           | Reason / boundary                                                                                               |
|----------|-----------------------------------------------------------------------|---------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| C3-001   | G0 v0.4 (8 axioms)                                                    | **RETAIN PROMOTED**                   | Historical theoretical acceptance unchanged.                                                                    |
| C3-002   | G0-MOD v0.2                                                           | **PROMOTE THEORETICAL CATALOG**       | Explicit Operator instruction to adjudicate; opt-in, not operational.                                           |
| C3-003   | M0 — Explicit Adoption                                                | **PROMOTE CATALOG CHARTER**           | Selected protections cannot be inferred from mere existence.                                                    |
| C3-004   | T0-01…05                                                              | **PROMOTE 5 OPTIONAL SPECIFICATIONS** | Scoped governance/justification rules with qualified claims.                                                    |
| C3-005   | T1-01…06                                                              | **PROMOTE 6 OPTIONAL SPECIFICATIONS** | Scoped authority and delegation contracts; legitimacy of any concrete issuer remains unknown until established. |
| C3-006   | T2-01,02,04,05,07,08                                                  | **PROMOTE 6 OPTIONAL SPECIFICATIONS** | Identity, references, copy isolation and commit-boundary rules, each conditional on declared scope.             |
| C3-007   | T3-02…07                                                              | **PROMOTE 6 OPTIONAL SPECIFICATIONS** | Condition identity, provenance recording, applicability, conflicts, sufficiency and decisions.                  |
| C3-008   | T2-03, T2-06                                                          | **DEFER**                             | Provenance continuity and fallback adequacy require precise underlying model.                                   |
| C3-009   | T3-01, T3-08                                                          | **DEFER**                             | Four-state admissibility semantics and independence testing incomplete.                                         |
| C3-010   | M1                                                                    | **NON-ATOMIC UMBRELLA**               | Not independently promoted; no double-counting of T0 properties.                                                |
| C3-011   | T4–T7                                                                 | **DEFER**                             | Only conceptual crosswalk; not modularly specified.                                                             |
| C3-012   | G0-04/05/06, G0-08.S/R                                                | **RETAIN HISTORICAL DISPOSITIONS**    | Conditional derivations / distinct recovery objective; no theorem certification.                                |
| C3-013   | G5-C1                                                                 | **DEFER**                             | Separate Gate 5 consequence candidate.                                                                          |
| C3-014   | Mathematical independence, minimality, full consistency, completeness | **UNKNOWN**                           | No formal semantics, countermodel proofs, or mechanized verification.                                           |
| C3-015   | Actual runtime security, external policy modification                 | **NOT CLAIMED / NOT AUTHORIZED**      | No deployment, project adoption, lock release, or GitHub activity.                                              |

**Accounting:** 27 atomic T0–T3 candidates = 23 promoted to *optional catalog* + 4 deferred. M0 is a separate promoted charter (not in the 27); M1 is not another atomic item. G0 v0.4 retains eight previously promoted theoretical axioms. The classifications do not establish that any concrete project satisfies these controls.

###### All fourteen unresolved unknowns and the deferral ledger

###### Unknown: unresolved propositions, not guesses

| ID    | Claim                                                          | State   | Evidence gap / prohibition on certainty inflation                                              |
|-------|----------------------------------------------------------------|---------|------------------------------------------------------------------------------------------------|
| U-001 | Logical independence/minimality of G0 v0.4 eight axioms        | UNKNOWN | No fixed complete formal semantics or eight independent countermodels; no minimal-basis claim. |
| U-002 | Full consistency/completeness of G0 v0.4 and modular v0.2      | UNKNOWN | Bounded adversarial examples are not a universal model or deductive proof.                     |
| U-003 | Legitimate external authority precedence                       | UNKNOWN | Authority hierarchy, exceptional authority and conflicts among grant issuers unspecified.      |
| U-004 | Complete protected effect universe                             | UNKNOWN | Cumulative effects, side channels and external consequences not exhaustively modeled.          |
| U-005 | Completeness of all mandatory project conditions               | UNKNOWN | An empty observed condition set may be incomplete.                                             |
| U-006 | Time-of-authorization / revocation / commit ordering           | UNKNOWN | Concurrent/distributed event ordering and commit points are scope-dependent.                   |
| U-007 | Actual isolation/fallback for a particular copy process        | UNKNOWN | Aliasing, external effects and restoration capability not examined for any runtime.            |
| U-008 | Veracity and completeness of provenance across transformations | UNKNOWN | T2-03 deferred; a provenance record is not independent proof.                                  |
| U-009 | Universal four-state evidence admissibility semantics          | UNKNOWN | T3-01 deferred; evidence aggregation, retraction and conflict resolution not fixed.            |
| U-010 | Assessor/source independence in a particular project           | UNKNOWN | T3-08 deferred; identity multiplicity does not guarantee independent evidence.                 |
| U-011 | Formal equivalence of modular selections to G0 v0.4            | UNKNOWN | Crosswalk is conceptual; substitute premise sets and closure unproved.                         |
| U-012 | Guarantee of bounded recovery/liveness                         | UNKNOWN | Requires specified recoverable states, authorized paths and progress assumptions.              |
| U-013 | Model-to-implementation correspondence / runtime security      | UNKNOWN | No runtime, source, configuration or environment attested; no deployment.                      |
| U-014 | Risk improvement from adding or removing optional controls     | UNKNOWN | Restrictiveness, assurance, availability and recoverability are not one dimension.             |

###### Deferred design work

| ID    | Deferral                                       | Reopen only when                                                                                                                    |
|-------|------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| T2-03 | Provenance continuity                          | Project specifies source/entity/activity identity, derivation graph, and how asserted relationships are evidenced.                  |
| T2-06 | Security guarantee for pre-copy fallback       | Project defines failures, side effects, irreversible consequences, and what constitutes adequate fallback. PVI-08 remains retained. |
| T3-01 | Four-valued evidence semantics                 | Admissibility, aggregation, retraction, conflicting/equal support and inapplicability semantics are specified.                      |
| T3-08 | Independence of assurance                      | Relevant source/process independence criteria and admissibility thresholds are defined.                                             |
| T4–T7 | Modular composition, time, assurance, recovery | An explicitly scoped research cycle is authorized.                                                                                  |
| G5-C1 | Consequence-sensitive admission                | Gate 5 separate review and authorization are performed.                                                                             |

###### Open research obligations, preserved from C2

Proof Obligations 01–11 remain **not discharged**. Their individual descriptions and restrictions are reproduced in Part X. In particular, the absence of a discovered contradiction does not prove full consistency. Optional catalog promotion neither fills these gaps nor certifies a guarantee. No protected effect, privilege increase, or recovery action is admitted because an open question has been labeled UNKNOWN.

###### Programming invariant decision ledger

The user's preferred programming disciplines are preserved separately from the authority-axiom library. The decisions below recognize them as **opt-in design preferences**, not universal runtime security proofs, compiler constraints, or a command to write code.

| ID     | Name                              | Disposition                  | Boundary                                                                                                                  |
|--------|-----------------------------------|------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| PVI-01 | Deterministic Bounded Iteration   | ACCEPT PREFERRED DESIGN RULE | Only under an explicit bound and environmental model.                                                                     |
| PVI-02 | Deterministic Loop Unrolling      | DEFER AS UNIVERSAL INVARIANT | Keep as optional inspection/representation technique; bounded iteration does not require literal unrolling.               |
| PVI-03 | Explicit Sentinel States          | ACCEPT PREFERRED DESIGN RULE | Prefer tagged state where possible; sentinel cannot masquerade as operational data.                                       |
| PVI-04 | Defined and Initialized Variables | ACCEPT PREFERRED DESIGN RULE | Known state before use; avoid dummy initialization that conceals omitted assignment.                                      |
| PVI-05 | Human-Legible Naming              | ACCEPT PREFERRED DESIGN RULE | Legibility not semantic proof.                                                                                            |
| PVI-06 | Human-Legible Program Flow        | ACCEPT PREFERRED DESIGN RULE | Inspected flow not automatically correct.                                                                                 |
| PVI-07 | Reference-Based Copy Isolation    | ACCEPT PREFERRED DESIGN RULE | Working copy must not unexpectedly alias the authoritative source.                                                        |
| PVI-08 | Fallback Before Copy              | ACCEPT PREFERRED DESIGN RULE | Establish fallback before attempt; adequacy against all side effects remains UNKNOWN until the failure model is declared. |

**Important:** PVI-08 acceptance does not promote the stronger T2-06 assurance claim. PVI-01/03–08 remain opt-in programming preferences. No code or production controls have changed.

##### Part XIII — The controlled research close-out and preservation boundary

**Release:** G0-MOD v0.2, accepted *optional theoretical catalog*. **Historical promoted foundation:** G0 v0.4, eight axioms, unchanged. **Promotion:** M0 as catalog charter; 23 of 27 T0–T3 atomic optional specifications. **Deferral:** T2-03, T2-06, T3-01, T3-08; M1 remains an umbrella; T4–T7 modular formalization, G5-C1 and proofs not promoted. **Unknown:** Fourteen expressly enumerated research gaps, reproduced in the Part XII unknown ledger. **Programming:** Seven PVI rules accepted as opt-in design preferences, compulsory literal unrolling deferred. **Action:** No implementation, project profile selection, code, GitHub, publication, tool gates, or production/unlock changes.

###### Meaning of completion

Disposition and administrative close-out are complete for the recorded research scope. No claim is made of logical minimality, complete security, deployed assurance, liveness, or universal substitution between tranches. Unknown is preserved as unknown, not converted to denial as a factual claim or permission as an operational claim.

###### Reopening

New work requires an independently authorized scope: specified project, selected profile (or research question), dependency prerequisites, properties to test, assurance bar, and explicit operational clearance if implementation is ever sought. The research catalog alone does not confer an operational capability or override externally imposed controls.

###### Chain of custody

**Historical provenance:** Closure Stage Two was a bounded audit, and Closure Stage Three recorded a later explicit theoretical promotion. This one-shot document reflows their substantive findings and decisions in place. Their earlier historical source records remain unchanged; reflowing them here neither retroactively changes their status nor turns any research result into operational clearance.

###### Public research, tooling, and staging boundaries

###### Relation to current publication work

- **Stage 0 — Site hydration:** publish eligible theory and qualified proofs of concept with provenance and limitations.
- **Stage 1 — Stable programmatic rehydration:** planned recovery and reconstruction of code from admissible evidence with expert systems and programmatic methods first. Synthetic generative material remains a separately labeled last resort.
- This seed is **not** a claim that Stage 1 has been built or that the underlying tools have already been recreated.

###### Boundaries

This document contains a general research proposal only. It does not publish private preservation data, credentials, undisclosed source material, or protected recovery details. Publication of a seed does not itself activate a contract, authorize execution, or establish independent verification.

---

### Lunar Flower AI Seed — Expert-System Contract

Source: `blue-prints/LUNAR_FLOWER_AI_SEED_EXPERT_SYSTEM_CONTRACT.md`

**Authorial direction:** alia june  
**Record date:** 2026-11-10  
**Disposition:** Public theoretical seed / proposed architecture. **Not a runtime contract, implemented expert system, admitted controller, or performance attestation.**

**Current integrated operations specification:** xOSG-1 Operations Contract, formerly *Expert Systems Operation*. It embeds Gate Zero, ordered Gates One–Seven, and Alpha-Lock. **When it is actually instrumented, the realized system is designated `es-xosg-9`.** This Lunar Flower file remains the historical source/seed, not a competing operational clearance.

##### Seed statement

> Place the AI under an expert-system contract, as an expert-system orchestrator, with generative synthetic decision-making as a last resort. Build all tools and the governing structure from the ground up.

The AI's assigned role is **contract-bound orchestration**, not independent authority to create its own rules, select new privileges, or declare its own outputs valid. Expert-system rules and explicit contracts govern admissibility, composition, task routing, and the conditions under which a candidate decision can be evaluated.

This seed is an architectural proposal. It must not be represented as an already operating system, and the words *expert system* do not themselves establish determinism, correctness, or security.

##### Architectural commitments

1.  **Expert-system contract first.** Define roles, goals, admissible actions, rule precedence, constraints, evidence requirements, and failure behavior before invoking an AI component.
2.  **Orchestration within the contract.** The AI may organize work and propose routing or assembly steps only within explicitly permitted interfaces. Contract adjudication and final authority are separate from the AI's suggestions.
3.  **Build the structure from the ground up.** The system's foundational abstractions, compositions, interfaces, contracts, and lifecycle rules are deliberately specified and constructed, rather than assumed from an opaque inherited stack.
4.  **Build the tools from the ground up.** Tools are developed as inspectable parts of that architecture, with narrow purpose, explicit I/O, error states, and evidence. Studying or transmigrating lessons from other projects does not turn imported code into a native, independently validated tool.
5.  **Prefer rule-governed decisions.** Explicit evidence, deterministic transformations where applicable, declared heuristics, and expert-system inference are evaluated before synthetic generation.
6.  **Generative synthetic decision-making is the last resort.** Only an explicitly permitted unresolved case may solicit a generated *candidate decision*. That proposal remains synthetic, traceable, challengeable, and subject to separate validation and authorization; it cannot silently be treated as a recovered fact, an accepted rule, or a final action.
7.  **Refusal and uncertainty are valid.** When a constraint fails, evidence is absent, or authority is missing, the system can decline, defer, or preserve a named unresolved state. Lack of evidence does not authorize synthesis or execution.

##### Standing expert-system gates — generic proposed contracts

The following seven standing gates are **implementation-independent design candidates**. They operate on declared contracts, evidence, and state rather than a named product, language, runtime, or organization. They are not enabled by this publication: adoption remains governed by each project's authorized contract, and implementation and verification are separate obligations. A document describing a gate is not itself an enforcing mechanism. **Within the expressly selected seven-gate profile, gate clearance is strictly ordered from Gate One through Gate Seven.** See the dated ordered-clearance erratum. See the Gates README for the gate map, and the Gate 0 research archive for foundational axioms, complete C2/C3 source records, optional modular selections, deferrals, and unresolved claims.

###### Gate 1 — Production Lock

**Intent:** Separate thinking, design, simulation, construction, and testing from an authorized effect on a production environment or public release.

- **Entry:** A candidate action, its declared effect and scope, the currently effective lock state, candidate identity/revision, evidence, and the asserted authorizing principal.
- **Default:** `LOCKED`; analysis and isolated staging may continue if otherwise permitted, but production mutation, deployment, publication, and external effects remain denied.
- **Unlock criterion:** Explicit, independently checked authorization for one bounded scope and candidate revision; prerequisite checks and the target environment must match the authorization.
- **Output:** `DENY_LOCKED`, `REVIEW_REQUIRED`, or `CLEAR_FOR_DECLARED_SCOPE`, accompanied by a reason and a receipt. In the seven-gate profile, only independently verified `CLEAR_FOR_DECLARED_SCOPE` maps to **Gate One = CLEARED**. **This is the first production gate, not authority to begin production.** Gate Seven remains locked until every gate clears in order.
- **Reset:** Re-lock on revision change, scope change, failed invariant, revoked authority, stale evidence, or expired clearance.
- **Control-plane exception:** Inspection, cancellation, revocation, and narrowly scoped lock-management operations must remain possible under lock, using a separate authenticated contract; the ordinary application path cannot clear its own lock.
- **Failure:** Unknown state, mismatched identity, missing evidence, or unreachable authorizer yields `DENY_LOCKED`; no autonomous override.

**Invariant:** The producer of a candidate cannot grant that candidate production authority merely by asserting success, passing its own tests, or generating a plausible rationale. **Gate One CLEARED does not permit action; Alpha-Lock is still NOT CLEARED.**

###### External error-and-lesson preproduction review (proposed resource)

Before **effect-scoped Production Lock clearance**, the receiving expert system should obtain a bounded, verified **external evidence receipt** for the exact candidate identity and revision, using the proposed Error and Lesson Registry and machine-readable resource contract. The planned registry may live on a microcontroller or developer-board host and provides **evidence for review**, not authority to execute or release.

A receipt must identify its source/generation, check prior relevant errors, reviewed lessons, claim support, canonical locks, contradictions, test requirements, evidence freshness and retrieval coverage. Missing entries do not prove safety. A failed lookup, stale generation, unresolved contradiction or unsupported high-impact claim **keeps production locked**; read-only investigation may continue under its own permission. Generated text retains a FABRICATION FLAG and cannot be promoted to an accepted lesson without review. Reiteration and hand-off must re-check that the same candidate revision remains in scope.

**Status:** resource and gate integration are proposed, not deployed or tested. No running device, physical isolation, permanent logging, automated admission, or anti-hallucination guarantee is implied.

###### Gate 2 — Reiteration

**Intent:** Permit purposeful re-examination of a candidate without confusing repeated reasoning with progress, proof, or increased authority.

- **Entry:** A bounded task, immutable baseline reference, current candidate, evidence delta, explicit stopping condition, and iteration budget.
- **Preflight:** Re-check the task objective, applicable rules, provenance, previous objections, and which fact or condition has changed since the last pass.
- **Permitted returns:** `ITERATE_WITH_DELTA`, `ACCEPT_FOR_NEXT_GATE`, `STOP_NO_PROGRESS`, `STOP_BUDGET_EXHAUSTED`, or `ESCALATE_UNRESOLVED`.
- **Progress witness:** A new admitted fact, a documented correction, a passed previously failing test, or another explicitly defined measurable change. Rephrasing, circular confirmation, self-citation, and synthetic elaboration do not by themselves count as progress.
- **Loop bounds:** Enforce a maximum pass count and resource budget, with an immutable or versioned record of inputs, changes, and outcomes.
- **Authority:** Reiteration may revise a proposal but cannot amend the governing contract, waive a gate, reset its own budget, or turn an unresolved issue into evidence.
- **Failure:** No meaningful delta or a repeated failure signature stops the loop and records the unresolved state rather than silently retrying.

**Invariant:** Repetition never creates permission, evidence, or correctness by accumulation alone.

###### Gate 3 — Hand-off

**Intent:** Transfer a bounded assignment between participants while preserving task continuity, identity, restrictions, provenance, and the ability to refuse.

- **Entry:** Identified sender and intended recipient, requested outcome, task scope, candidate/source revision, permitted data, permitted actions, dependencies, deadlines or stopping conditions if defined, and a return address or channel.
- **Admission:** Confirm the recipient exists, can receive the specified data, has the required bounded capability and authority, and accepts the task under the stated contract.
- **Handoff envelope:** Include versioned task identity, outcome and success criteria, relevant evidence references, known unknowns, forbidden actions, original constraints, required receipts, and an explicit `SENTINEL_UNRESOLVED` for unfilled necessary fields.
- **Acknowledgment:** Receipt and acceptance are distinct. An acknowledgment cannot be inferred from transmission; a recipient may reject, defer, or accept only an authorized portion.
- **Authority:** Delegate work, **not** intrinsic policy ownership. The sender cannot pass privileges it does not hold. Acceptance cannot silently expand scope or override production lock.
- **Return:** Require a result or a bounded blocked/refused report with evidence and a correlation identifier; returned results re-enter validation and relevant gates before admission.
- **Failure:** Missing recipient, contract mismatch, absent acknowledgment, stale revision, or integrity failure produces `HANDOFF_BLOCKED` or `HANDOFF_UNRESOLVED`, not presumed completion.

**Invariant:** A transferred instruction is not a transferred authorization, and task completion by one participant does not imply final adoption by another.

###### Gate 4 — Informed Operator Validation

**Gate ID:** `LF-GATE-004`  
**Default state:** `VALIDATION_PENDING`  
**Authority:** Human Operator  
**Failure behavior:** Fail closed  
**Status:** Proposed architectural contract; not an implemented enforcement mechanism

###### Purpose

An AI agent must not mistake acknowledgment for understanding, understanding for consent, or consent for authorization.

Whenever an AI agent requests human validation, clarification, confirmation, or authorization, the response must provide sufficient contextual evidence that the Operator understands the decision being presented.

**Simple acknowledgment is not sufficient validation.**

This gate is mandatory whenever the governing contract requires explicit human validation. Dangerous or sensitive operations require heightened evidence of understanding, not a weaker alternative to validation.

###### Validation requirements

1.  **Reject empty acknowledgment.** Responses such as "yes," "okay," "understood," "continue," or similar generic affirmations must not independently satisfy a validation requirement.

2.  **Require contextual understanding.** The Operator's response must demonstrate an understanding of the specific question, proposed action, relevant scope, or requested clarification. Existing conversation context may contribute evidence, but cannot substitute for explicit authorization when authorization is required.

3.  **Distinguish clarification from authorization.** An answer that resolves uncertainty does not automatically authorize execution. The agent must not infer consent or authority merely because the Operator has supplied information.

4.  **Apply heightened scrutiny to sensitive operations.** Where an action involves security, privacy, safety, destructive modification, irreversible consequences, external effects, or production changes, the agent must communicate the material implications and obtain explicit, action-specific authorization demonstrating awareness of those implications.

5.  **Reject insufficient validation.** If the response is ambiguous, unrelated, contradictory, or does not adequately address the material decision, the agent must reject it as validation and request targeted clarification.

6.  **Preserve the production lock.** Insufficient validation must never clear a production gate, authorize a dangerous operation, or be treated as permission to proceed.

7.  **Prohibit inferred clearance.** Repeated acknowledgments, apparent confidence, urgency, prior cooperation, or the agent's own assessment cannot independently establish authorization.

###### Critical invariant

**Acknowledgment ≠ Understanding ≠ Consent ≠ Authorization**

Each is a distinct condition. Where the governing contract requires them, each must be established independently.

###### Fail-closed behavior

If understanding or authorization cannot be adequately established:

- Reject the response as sufficient validation.
- Preserve the current production lock.
- Identify the specific unresolved question or consequence.
- Request appropriate clarification without coercion.
- Permit only actions independently authorized under the existing contract.

A change in action, target, scope, material risk, or candidate revision invalidates any authorization that no longer applies.

###### Operator sovereignty

The Operator retains final decision authority within the governing security contract.

The agent evaluates observable evidence in the response, not the Operator's intelligence, competence, or mental state. It must not impose arbitrary comprehension tests, manufacture uncertainty to obstruct authorized work, or use this gate to assume authority over the Operator.

###### Production invariant

`VALIDATION_ACCEPTED` does not itself mean `PRODUCTION_AUTHORIZED`.

Production remains locked until every applicable authorization, technical validation, and security condition has independently passed.

**A plausible acknowledgment must never be promoted into authorization merely because the agent wishes to proceed.**

###### Gate 5 — Consequence-Scaled Challenge–Response

**Gate ID:** `LF-GATE-005`  
**Classification:** Optional high-risk production safeguard  
**Default adoption state:** `DORMANT`  
**Trigger after adoption:** Declared risk thresholds, especially destructive, irreversible, critical, or operationally erratic actions  
**Failure behavior:** Fail closed for any required dependent transition  
**Status:** Proposed architecture; not implemented, activated, or independently verified

###### Governing purpose and adoption boundary

The greater an action's consequence, destructiveness, irreversibility, or observable operational instability, the stronger the assurance required before the action can be admitted. Relevant consequences include effects on people, rights, assets, security, privacy, data, external systems, and cascading dependencies.

Gate 5 is **optional for adoption by a governing contract**. When adopted, it is **not discretionary per operation**: the contract must declare its activation criteria and high-risk thresholds; the AI agent cannot silently bypass an applicable requirement by relabeling an operation low risk. A gate that is dormant has no claimed runtime effect. Every affected operation still remains subject to the other standing gates.

Gate 5 decomposes into independent controls with distinct inputs, outputs, evidence, and authority boundaries. One control's success does not imply that another control passed; separate logical modules do not themselves constitute independently trusted verification.

###### Control A — Risk Classification

**Function:** Determine risk for the exact proposed action, target, revision, environment, and effect scope using declared criteria and evidence.

**Inputs:** Consequence magnitude and affected parties/resources; reversibility and recovery; destructiveness; uncertainty; dependencies and possible cascading effects; observed operational instability.

**Output:** `RISK_CLASS` and a bounded, reviewable classification receipt.

| Class | Proposed meaning                             | Challenge burden                                                                                              |
|-------|----------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| `C0`  | Ordinary, low-consequence, reversible        | No Gate 5 challenge                                                                                           |
| `C1`  | Material consequence                         | Identify action, target, and intended result                                                                  |
| `C2`  | High consequence                             | Demonstrate material-risk, scope, and recovery understanding                                                  |
| `C3`  | Destructive or potentially irreversible      | Rigorous, action-specific understanding plus independent checks                                               |
| `C4`  | Critical consequence or material uncertainty | Rigorous challenge and additional independent safeguards; unstable execution remains blocked until stabilized |

A higher level inherits applicable lower-level requirements. Risk may be escalated when new evidence requires it; **reducing** a classification requires a separate authorized review supported by evidence. Unknown or ambiguous risk cannot be asserted as `C0`.

**Invariant:** The classifier cannot evaluate its own challenge, declare independent verification, waive a safety requirement, or authorize execution.

###### Control B — Challenge–Response

**Function:** Evaluate whether the Operator supplies the action-specific understanding and authorization evidence required by Control A and the applicable contract.

**Inputs:** The risk classification and receipt, exact candidate/revision, material consequences, named required comprehension points, and declared challenge criteria.

**Outputs:** `PASSED`, `INSUFFICIENT`, `REJECTED`, or `UNRESOLVED`, with recorded reasons.

Responses must identify the action and material implications at the applicable risk level. Generic acknowledgments, repetition, irrelevant explanations, copied formulas lacking contextual meaning, and conversational momentum are insufficient. For destructive or irreversible actions, the response must address actual targets and scope, effects that cannot be recovered, and any material limits of rollback or mitigation.

Challenge **difficulty increases by required evidential substance and independently controlled safeguards**, not arbitrary verbal complexity, intimidation, or endless questioning. The evaluator tests observable response content, not intelligence, diagnosis, or psychological state. It must not manufacture uncertainties or demand unrelated information to obstruct lawful operator decisions.

**Invariant:** A passed challenge is not independent verification, does not alter the risk class, and cannot itself clear Production Lock.

###### Control C — Independent Verification

**Function:** Test material factual and operational prerequisites without relying exclusively on the proposing AI's assertions.

**Inputs:** Exact candidate and target identity; classification and response receipts; versioned evidence; technical prerequisites; recovery and impact claims; independent authorizations when applicable.

**Outputs:** `VERIFIED`, `FAILED`, `INCOMPLETE`, or `UNAVAILABLE` with evidence references and limitations.

Verification can cover integrity of candidate and target, destructive effects, backup/restore viability, permissions, blast radius, tool/runtime safety, and external authorizer status. **At C3 and C4 this control is mandatory** under an adopted Gate 5 contract; lower levels may require checks where independent contractual rules demand them. Merely restating an AI-generated explanation, duplicating a function within the same trust boundary, or posing a harder question is not independent verification.

**Invariant:** Independent verification does not authorize the action or override failed validation, unstable execution, or a production lock. Unavailable mandatory verification blocks admission.

###### Control D — Operational Stability

**Function:** Monitor observable execution conditions and whether the action remains identifiable, bounded, and controlled.

**Inputs:** Target/scope consistency, command and instruction coherence, actual effects versus declared effects, state changes, broken invariants, unexpected outputs, and control-plane signals.

**Outputs:** `STABLE`, `UNSTABLE`, or `UNRESOLVED`.

The control may run throughout planning and execution. Contradictory or rapidly shifting instructions, unstable targets, unexpected modifications, uncontrolled effects, and inconsistent execution state are grounds for containment or suspension when they compromise reliable execution. “Erratic” describes **observable operation behavior**, not a claim about the Operator's mental state.

**Invariant:** An unstable operation cannot become stable through acknowledgment, additional challenge responses, or a model's reassurances. The affected operation stays blocked until the required stability conditions are separately established.

###### Control E — Production Admission Interface

**Function:** Provide the bounded outcome of Controls A–D as the **Gate Five clearance receipt** for the later **Gate Seven — Alpha-Lock** decision. Control E checks the already established exact-effect Gate One clearance and the applicable current state; it neither reorders gate receipts nor authorizes production by itself.

**Inputs:** Applicable control receipts, exact candidate and effect scope, Gate 4 result when required, other mandatory gate outcomes, and the current Gate 1 authorization state.

**Outputs:** `GATE_FIVE_CLEARED_FOR_NEXT_GATE` or `BLOCKED`. This outcome is **never** synonymous with `PRODUCTION_AUTHORIZED`; it permits only the next ordered step, **Gate Six**.

Conceptual review predicate, evaluated by the authorized receiving control—not asserted by the producing agent. Every variable is explicitly introduced as an unresolved assessment before being assigned its evidenced state:

``` text
TYPE RequirementEvidence = SUPPORTED | REFUTED | UNRESOLVED | CONFLICTED
TYPE GateFiveAdoption = ADOPTED | NOT_ADOPTED | UNRESOLVED

DECLARE gate_five_adoption_state : GateFiveAdoption = UNRESOLVED
DECLARE risk_classification_is_supported : RequirementEvidence = UNRESOLVED
DECLARE required_operator_challenge_is_satisfied : RequirementEvidence = UNRESOLVED
DECLARE required_independent_verification_is_satisfied : RequirementEvidence = UNRESOLVED
DECLARE operation_stability_is_supported : RequirementEvidence = UNRESOLVED
DECLARE candidate_identity_and_scope_are_unchanged : RequirementEvidence = UNRESOLVED
DECLARE required_operator_validation_is_satisfied : RequirementEvidence = UNRESOLVED
DECLARE all_other_mandatory_gates_are_satisfied : RequirementEvidence = UNRESOLVED
DECLARE valid_operator_authority_is_established : RequirementEvidence = UNRESOLVED
DECLARE gate_one_clearance_for_exact_effect_is_established : RequirementEvidence = UNRESOLVED
DECLARE gate_five_is_ready_for_gate_one_review : RequirementEvidence = UNRESOLVED
DECLARE gate_five_requirements_are_satisfied_under_the_adopted_policy : RequirementEvidence = UNRESOLVED
DECLARE all_production_effect_prerequisites_are_established : RequirementEvidence = UNRESOLVED

IF gate_five_adoption_state == ADOPTED:
    gate_five_is_ready_for_gate_one_review = SUPPORTED ONLY IF
        risk_classification_is_supported == SUPPORTED
        AND required_operator_challenge_is_satisfied == SUPPORTED
        AND required_independent_verification_is_satisfied == SUPPORTED
        AND operation_stability_is_supported == SUPPORTED
        AND candidate_identity_and_scope_are_unchanged == SUPPORTED
    gate_five_requirements_are_satisfied_under_the_adopted_policy =
        gate_five_is_ready_for_gate_one_review
ELSE IF gate_five_adoption_state == NOT_ADOPTED:
    // A separately established non-adoption policy determines whether
    // the operation is eligible without a Gate 5 challenge.
    EVALUATE gate_five_requirements_are_satisfied_under_the_adopted_policy
        using the independently authorized project contract
ELSE:
    // Unresolved adoption cannot be interpreted as a pass or non-adoption.
    gate_five_requirements_are_satisfied_under_the_adopted_policy = UNRESOLVED

// Applicable "if required" predicates mean SUPPORTED when the requirement
// is not triggered by a validly established governing policy. They never
// imply that an unmet required check has been waived.
all_production_effect_prerequisites_are_established = SUPPORTED ONLY IF
    gate_five_requirements_are_satisfied_under_the_adopted_policy
    AND required_operator_validation_is_satisfied == SUPPORTED
    AND all_other_mandatory_gates_are_satisfied == SUPPORTED
    AND valid_operator_authority_is_established == SUPPORTED
    AND gate_one_clearance_for_exact_effect_is_established == SUPPORTED
```

The named proposition `gate_five_requirements_are_satisfied_under_the_adopted_policy` must itself have an established applicable policy and evidence; it is **not** an alias that converts `NOT_ADOPTED` into `SUPPORTED`. This is explanatory pseudocode, not an executable authorization algorithm. The human-readable naming guide also defines the short historical predicates.

A dormant Gate 5 does not falsely satisfy `gate_five_is_ready_for_gate_one_review`: its result is `NOT_ADOPTED`, and a separate policy must determine whether any other already-mandatory protections permit the action. No gate may create authority from an absent requirement.

###### Control independence, escalation, and failure

- Each control has a separate responsibility and versioned receipt, bound to the candidate/revision, target, and operation scope. No control may silently rewrite another's evidence or erase a prior failed condition.
- New risk evidence may increase required scrutiny at any point. Higher risk invalidates lower-level assurances that do not meet the new requirements.
- If risk, target, scope, relevant effects, candidate revision, or operational state materially changes, dependent validation and authorization must be rechecked.
- A mandatory unavailable, failed, or unresolved control **blocks the dependent production effect**. Independently permitted inspection, cancellation, revocation, and safe containment may continue.
- Repeating requests or challenges does not accumulate authority. Any re-evaluation requires materially relevant new evidence, consistent with Gate 2.
- Gate 3 cannot delegate around an unresolved challenge. Gate 4's informed-validation result cannot substitute for independent verification. Gate 1 remains effect-scoped and locked by default.
- Enforceable independence requires actual trust-boundary and authority separation where claimed. A list of software components or an AI self-attestation is insufficient.

**Critical invariants:** Classification is not validation; validation is not verification; verification is not authorization; authorization is not stability; stability is not safety or permission; an absent or failed mandatory condition cannot be inferred to pass. No single AI-controlled component may classify risk, pass its own challenge, certify external verification, and clear the production lock.

**Publication boundary:** This is a proposed contract, not evidence that challenge engines, external checks, risk scoring, gate interlocks, or production enforcement have been built or tested.

###### Gate 6 — Prompt Restatement

**Gate ID:** `LF-GATE-006`  
**Classification:** Prompt interpretation and final agreement safeguard  
**Adoption state:** Required as Gate Six in the selected seven-gate sequence; otherwise opt-in under any separately authorized legacy profile  
**Clearance position:** **Sixth**, after Gate Five, immediately before Gate Seven Alpha-Lock. An early informal paraphrase is not Gate Six clearance.  
**Status:** Proposed architecture; not implemented, adopted, or independently verified

**Intent:** The machine restates the Operator's prompt in its own words **as it understands the request**. The restatement is a bounded interpretation claim, not a replacement instruction, a new requirement, or an authorization.

- **Entry:** The original prompt and already established context, constraints, exclusions, targets, and authorized scope.
- **Action:** After Gates One–Five clear in order, restate the original Operator request, declared constraints, exact candidate identity/revision, target, intended effects, and scope as understood; compare the restatement with the original prompt and established authorization. Identify rather than invent missing intent.
- **Internal outcomes:** `RESTATED`, `NEEDS_CLARIFICATION`, or `NOT_ADOPTED`. Preserve the original prompt separately. **Final Gate Six result:** `CLEARED` only for a faithful, materially consistent restatement with valid prior gate receipts; otherwise `NOT CLEARED`. A restatement is not Operator agreement or independent authorization.
- **Material mismatch:** Do not rely on an unsupported interpretation of a changed target, permission, prohibited action, or consequential effect. Request targeted clarification where needed.
- **Bound:** Do not force repeated confirmations for unchanged, unambiguous routine requests. Explicit Operator confirmation is a *separate* requirement only where the adopted contract or another applicable gate requires it.
- **Authority:** A restatement does not establish Operator agreement, independent verification, informed consent, authority to delegate, or production clearance.

**Invariant:** `RESTATED != CONFIRMED != AUTHORIZED`. Gate Six concerns **prompt interpretation**, Gate Two concerns **candidate reiteration**, and Gate Four concerns **informed Operator validation**. Gate Six cannot bypass Gates One–Five. A material mismatch blocks clearance, invalidates affected earlier receipts, and prevents Alpha-Lock from clearing.

For the full background, examples, relationship to Gate Zero Foundational Theory v0.4 and Gate Zero Modular Catalog v0.2, and opt-in boundaries, see Gate Framework README.

###### Gate 7 — Alpha-Lock (Second Production Gate)

**Gate ID:** `LF-GATE-007`  
**Position:** **Seventh and final**, after Gate Six; the second independent production barrier after Gate One  
**Default state:** `LOCKED` / final outcome `NOT CLEARED`  
**Status:** Proposed architecture; not implemented, adopted, or tested

**Purpose:** Prevent production from beginning merely because Gate One approved its exact effect. Alpha-Lock is the **last gate**. Only this final, independently authorized release, after a valid ordered chain, permits the bounded production operation to begin.

- **Entry:** The unchanged candidate identity/revision, original Operator prompt and final restatement, exact target/effects, current binding project contract, present external authorization, and sequential receipts proving Gates One, Two, Three, Four, Five, and Six each returned `CLEARED`.
- **Sequence check:** Gate `n` clears only after Gate `n-1` has cleared, and Alpha-Lock validates **all six** prior gate receipts in their required order. No post hoc reordering, fabricated receipt, or implied pass is sufficient.
- **Clearance condition:** Verify exact identity/revision/target/effects, current contract and authorizer scope, provenance, required evidence, non-expiry/non-revocation, and that every preceding gate is still valid. An appropriately authorized **external control**—not the producing AI—must clear Alpha-Lock.
- **Final output:** `CLEARED` (bounded production may begin for the exact admitted effect) or `NOT CLEARED` (production blocked). Internal reasons may be `FAILED`, `UNRESOLVED`, `CONFLICTED`, `STALE`, `NOT_ADOPTED`, or `UNAVAILABLE`; none substitutes for a `CLEARED` receipt.
- **Invalidation:** Any material change to the prompt interpretation, candidate, revision, target, effects, risk, conditions, authorizer, or policy invalidates dependent receipts. The candidate must re-enter the sequence at Gate One when its identity, effects or scope change. Alpha-Lock re-locks.
- **Bound:** A Gate Seven clearance applies only to the stated effect and validity window; it does not delegate further rights or waive independently binding constraints.

**Invariant:** `GateOneCleared != ProductionMayBegin`. Only `GateOneCleared AND GateTwoCleared AND GateThreeCleared AND GateFourCleared AND GateFiveCleared AND GateSixCleared AND OrderedValidReceipts AND IndependentlyClearedAlphaLock` can establish production eligibility under this adopted profile. **No AI may clear Alpha-Lock using its own assertions.**

###### Ordered seven-gate clearance — errata-consolidated rule

Every gate in the adopted seven-gate profile has a **binary final outcome**: `CLEARED` or `NOT CLEARED`. A gate may internally record richer evidence states, but `UNRESOLVED`, `CONFLICTED`, `NOT_ADOPTED`, or an unproven `NOT_APPLICABLE` never maps silently to `CLEARED`. If an optional action inside Gate Two (additional iteration), Gate Three (hand-off), Gate Four (extra confirmation), or Gate Five (high-risk challenge) is **not required**, that gate must still produce a positive, independently justified `CLEARED` receipt under the adopted policy. The gate itself is **not skipped**.

``` text
TYPE FinalGateResult = CLEARED | NOT_CLEARED

DECLARE gate_one_cleared   : FinalGateResult = NOT_CLEARED
DECLARE gate_two_cleared   : FinalGateResult = NOT_CLEARED
DECLARE gate_three_cleared : FinalGateResult = NOT_CLEARED
DECLARE gate_four_cleared  : FinalGateResult = NOT_CLEARED
DECLARE gate_five_cleared  : FinalGateResult = NOT_CLEARED
DECLARE gate_six_cleared   : FinalGateResult = NOT_CLEARED
DECLARE alpha_lock_cleared : FinalGateResult = NOT_CLEARED

// This describes logical requirements; these declarations are not a controller.
GATE_ONE:   independently verify exact-effect authority -> gate_one_cleared
GATE_TWO:   require gate_one_cleared == CLEARED -> gate_two_cleared
GATE_THREE: require gate_two_cleared == CLEARED -> gate_three_cleared
GATE_FOUR:  require gate_three_cleared == CLEARED -> gate_four_cleared
GATE_FIVE:  require gate_four_cleared == CLEARED -> gate_five_cleared
GATE_SIX:   require gate_five_cleared == CLEARED -> gate_six_cleared

IF any preceding result != CLEARED OR ordered receipts invalid:
    alpha_lock_cleared = NOT_CLEARED
ELSE:
    // Only a separate authenticated, independently authorized control can act.
    alpha_lock_cleared = external_alpha_lock_clearance_for_exact_effect()

PRODUCTION_MAY_BEGIN only when alpha_lock_cleared == CLEARED
```

The sequence is a **proposed theoretical profile**, not code that has been deployed. The prior Gate Zero research and historic modular opt-in decisions remain unchanged. Adoption of this new seven-gate profile requires project-specific authorization.

###### Gate composition and precedence

**Errata:** The gate sequence is strictly `Gate One → Gate Two → Gate Three → Gate Four → Gate Five → Gate Six → Gate Seven (Alpha-Lock)`. Gate One clearance alone cannot start production. Gate Six is the **sixth** final clearance check, not an early gate pass. If early paraphrasing is used for convenience, the sixth-gate restatement and its receipt still occur after Gate Five.

``` text
PREPARE EXACT CANDIDATE UNDER INDEPENDENTLY ALLOWED READ / STAGING SCOPE
    -> GATE 1: PRODUCTION LOCK / EXACT-EFFECT AUTHORIZATION       -> CLEARED?
    -> GATE 2: BOUNDED REITERATION OR DOCUMENTED NO-ITERATION     -> CLEARED?
    -> GATE 3: BOUNDED HAND-OFF OR DOCUMENTED NO-HANDOFF          -> CLEARED?
    -> GATE 4: INFORMED VALIDATION UNDER DECLARED CONTRACT       -> CLEARED?
    -> GATE 5: RISK CLASSIFICATION & REQUIRED INDEPENDENT CHECKS -> CLEARED?
    -> GATE 6: RESTATE ORIGINAL PROMPT / VERIFY EXACT CONSISTENCY-> CLEARED?
    -> GATE 7: ALPHA-LOCK / VERIFY ALL ORDERED RECEIPTS & AUTHORITY
        -> CLEARED: exact bounded production may begin
        -> NOT CLEARED: block production
```

Every transition verifies the preceding gate's receipt, the same candidate revision and scope, and required evidence. A non-cleared outcome halts the transition. Any material candidate change returns the proposed effect to Gate One and keeps Alpha-Lock locked. Operational Stability may be assessed continuously without changing receipt order. Gate Zero remains theory; no published document is itself a running enforcement mechanism.

###### Initial validation cases (proposed, not executed)

| Test                                                                                                   | Expected gate outcome                                                                                |
|--------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| Production effect requested while locked                                                               | Deny effect; preserve inspection/staging boundary                                                    |
| Authorized clearance, then candidate revision changes                                                  | Re-lock and require fresh review                                                                     |
| Same candidate repeated without new evidence                                                           | Stop reiteration as no progress                                                                      |
| Iteration count or resource allowance exhausted                                                        | Stop with unresolved receipt                                                                         |
| Recipient missing, refuses, or lacks scope                                                             | Block hand-off without privilege escalation                                                          |
| Hand-off acknowledged but not accepted                                                                 | Do not infer task execution or completion                                                            |
| Returned result asks for a production effect                                                           | Re-check production lock and separate authorization                                                  |
| Generated explanation asserts that any gate passed                                                     | Treat assertion as data, not gate evidence                                                           |
| Adopted Gate 6: faithful prompt restatement                                                            | Record interpretation beside the original; no authorization implied                                  |
| Adopted Gate 6: restatement changes target or omits a prohibition                                      | Mark interpretation unresolved; preserve prompt and clarify material mismatch                        |
| Gate Six is not adopted within a selected seven-gate profile                                           | Gate Six NOT CLEARED; Alpha-Lock NOT CLEARED; do not silently skip                                   |
| Operator responds with a bare "yes" or "okay" when validation is required                              | Reject as insufficient validation; request contextual clarification                                  |
| Operator clarifies the action but does not authorize it                                                | Accept clarification only; keep authorization unresolved                                             |
| Sensitive operation requires permission but material consequences were not understood                  | Do not authorize; communicate consequences and request action-specific validation                    |
| Validated action, target, risk, or candidate revision changes                                          | Re-evaluate understanding and authorization; keep production locked until reauthorized               |
| Adopted Gate 5: low-risk action with no trigger                                                        | Record `CHALLENGE_NOT_REQUIRED` under declared policy; preserve every other gate                     |
| Adopted Gate 5: destructive operation assigned C0 without evidence                                     | Reject unsupported low classification and escalate/review                                            |
| Operator repeats assent without describing irreversible effect                                         | Fail required challenge; retain lock                                                                 |
| C3/C4 challenge passes but independent verifier is unavailable                                         | Block production; a verbal response cannot replace verification                                      |
| Operation becomes erratic after challenge passes                                                       | Suspend affected action until independently stable; reassess scope and risk                          |
| AI attempts to use Gate Five or Gate One success as permission to execute                              | Reject; Gate Seven Alpha-Lock must independently clear after Gates One–Six clear in order            |
| Proposal remains only a document, with Gate Five unimplemented                                         | Record as theoretical; claim no running enforcement                                                  |
| Gate One CLEARED; Gate Two not cleared                                                                 | Alpha-Lock NOT CLEARED; no production                                                                |
| Gate Six restatement conflicts with original prompt or candidate                                       | Gate Six NOT CLEARED; Alpha-Lock NOT CLEARED; re-evaluate affected earlier receipts                  |
| All first six receipts CLEARED but received out of order                                               | Gate Seven NOT CLEARED; no production                                                                |
| All first six receipts CLEARED in order, then candidate revision changes                               | Invalidate affected chain, restart Gate One; Alpha-Lock remains locked                               |
| Gates One–Six CLEARED in order but independent Alpha-Lock control unavailable                          | Gate Seven NOT CLEARED; no production                                                                |
| Gates One–Six CLEARED in order for unchanged effect, valid authority, independently cleared Alpha-Lock | Gate Seven CLEARED for exact bounded effect; production may begin, subject to other binding controls |

**Status:** These are **standing proposed gates for the generic expert-system seed**, not proof that lock enforcement, iterative control, inter-agent communication, or delegated authorization exists. No gate may silently adopt a synthetic decision as fact or policy.

##### Proposed decision order — corrected seven-gate profile

Candidate preparation uses contract-bound rules, deterministic methods, expert-system inference and approved tools. **LLM orchestration remains a last resort** and supplies only a candidate; it never counts as a gate pass.

``` text
REQUEST -> CONTRACT / EVIDENCE -> RULES / DETERMINISTIC TOOLS
    -> CANDIDATE
    -> if permitted and unresolved: LABELLED LLM-GENERATED CANDIDATE

CANDIDATE
    -> GATE 1 CLEARED  [first production authorization; do not act]
    -> GATE 2 CLEARED  [bounded reiteration assessment]
    -> GATE 3 CLEARED  [handoff assessment]
    -> GATE 4 CLEARED  [informed validation assessment]
    -> GATE 5 CLEARED  [consequence and independent review]
    -> GATE 6 CLEARED  [final faithful prompt restatement]
    -> GATE 7 CLEARED  [independently controlled ALPHA-LOCK]
    -> PRODUCTION MAY BEGIN FOR THE EXACT AUTHORIZED EFFECT

ANY NOT CLEARED -> ALPHA-LOCK REMAINS LOCKED -> NO PRODUCTION
```

This is a theoretical order, not executable code. It does not authorize a project to select the new seven-gate profile or let the producing model alter locked control planes. See the dated erratum for the earlier error and correction.

##### Relation to current publication work

- **Stage 0 — Site hydration:** publish eligible theory and qualified proofs of concept with provenance and limitations.
- **Stage 1 — Stable programmatic rehydration:** planned recovery and reconstruction of code from admissible evidence with expert systems and programmatic methods first. Synthetic generative material remains a separately labeled last resort.
- This seed is **not** a claim that Stage 1 has been built or that the underlying tools have already been recreated.

See the EOL and site-hydration roadmap, Heuristic-Grown Seed System, and Blueprints index.

##### Boundaries

This document contains a general research proposal only. It does not publish private preservation data, credentials, undisclosed source material, or protected recovery details. Publication of a seed does not itself activate a contract, authorize execution, or establish independent verification.

---

