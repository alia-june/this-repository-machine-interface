# Systems Deployment

> [!WARNING]
> **INSTRUMENT TOOLS BEFORE USING THEM IN AN AI EXPERT-SYSTEM ORCHESTRATOR.**
>
> Every model call used to reconstruct a routine operation, interpret process output, or decide how to handle a mechanical failure consumes LLM credits. Move the repeatable work into a deterministic microcontroller fitted to the tool. Use an adapter for its native interface and glue for the declared connections. Keep intent, approval, acceptance, and unresolved recovery decisions with the operator. Measure actual credit use if savings are part of the acceptance criteria.

## Grow a workplace around one useful task

Start with the [portable m.A.R.S. v0.3.0 memory state](https://github.com/alia-june/xOSG-prototype/blob/a73a88a55d605f8d333ad1a53ca5a9f634023a15/docs/systems-deployment/seeds/mars-workspace/WORKSPACE_SEED.json), staged in [xOSG PR #16](https://github.com/alia-june/xOSG-prototype/pull/16). The receiving workplace supplies local goals, authority, and resource bindings.

Declare the task, sources and revisions, operating rules, available capabilities, permitted destinations, and acceptance evidence. Keep source separate from active work and retained receipts. Start with one declared tool and observe its existing contract before proposing any controller. A change to the workplace itself needs its own scope and approval. See [How to grow a living tooling workspace][workspace] and [How to instrument a tool][instrument].

## What the m.A.R.S. memory state composes

The v0.3.0 artifact is an uninstantiated memory-state template. It gives a receiving workplace a structure for restoring context and identifying values it still needs to establish. The upstream filename remains **WORKSPACE_SEED.json** and the schema identifier remains **mars-tool-less-core-seed/0.3.0**.

| Record group | What the template provides |
| --- | --- |
| Identity | Five referents: user, agent, workspace, prompt, and history. Identity is recorded separately from intent. |
| Intent | Four fields for each referent: goal, current task, task queue, and finished task queue. A finished task records work done and leaves goal success to be assessed separately. |
| State | Eight views: history, trajectory, present, origin, destination, accomplishments, intentions, and obligations. For example, trajectory describes where work is heading, while destination captures where the operator wants it to end up. |
| Orchestration inventory | Sources, resources, and tools, each tracked as started with, obtained, needed, and acquiring. The receiving operator establishes local resource bindings and authority. |

The template marks the intent fields and resource bindings with **SENTINEL_UNRESOLVED** and marks the state and orchestration vectors with **SENTINEL_UNKNOWN**. Retain those distinctions when handing context to another workplace. Resolve values from evidence and explicit local decisions.

## Bound orchestration of memory state

The [bound orchestration profile](ai.MEMORY_STATE_ORCHESTRATION.json) adds a secondary seed reference to the orchestration record. It points to the illustrative Mill evidence workplace composition below. The index separates the [state contract](state/contracts/ai.memory-state.json), [sentinel transitions](state/contracts/ai.sentinel-transitions.json), [Mill bindings](state/bindings/ai.mill-evidence-workplace.json), and [History example](state/examples/ai.history-refresh.json). The receiving system supplies tooling for each of the eight state vectors and verifies its own bindings and authority. A vector declares what it needs to read. The system declares which instrumented tools can meet that need.

**Sentinels determine capabilities.** Read the current sentinel and its declared next operation first. Then select a capability that the vector requires and the receiving system can supply with the necessary binding and authority. An available tool is never a reason to clear a sentinel. Raw tool outcomes are evidence that the state contract may classify.

For History, an unknown value permits an evidence read through the declared receipt retrieval capability. The adapter maps one reviewed request ID to a local receipt, and glue carries that receipt and its source reference to History review. An unbound capability routes to a binding request. Denied access routes to operator review. A tool error or exception routes to recovery review. Keep each condition beside the state value, with the attempted operation and evidence when available.

For this profile, the last committed memory-state JSON is the required survivor. Keep a failed refresh and its condition record separate. The surrounding system handles the failure and decides whether to authorize recovery. A validated and accepted result can replace the committed state. This is a paper example of the boundaries and decision order.

## Worked example with Mill Factory

**Task.** Create one disposable evidence batch so an operator can inspect the intake structure. Begin with the pinned [native creator][tool], [fitted creation controller][controller], [operating guide][usage], and [publication validation][validation]. Python and PowerShell are prerequisites in the receiving workplace. Bind the Mill checkout, PowerShell launcher, disposable output root, and a task-owned controller state directory outside the source tree. Review the destination and secure the assertion and state inputs under the receiving workplace's rules.

| Layer | Responsibility in this example |
| --- | --- |
| Native tool | New-MillBatch.ps1 accepts Slug, Title, and Scope, with WorkspaceRoot, Date, OutputRoot, and Owner options. With no output override it writes under the workspace's mill directory. The batch directory is the slug and date joined by a hyphen. It refuses an existing batch path, creates the directory tree, copies templates, and initializes intake records. A later failure can leave earlier writes. |
| Microcontroller | The existing creation controller checks request facts and the local assertion, checks and leases the derived destination using SQLite, captures the bounded process outcome, runs Test-MillBatch.ps1 after a matching BATCH_CREATED result, and retains a separate-field receipt. Its lease coordinates callers sharing controller state. The workplace must account separately for direct writers and callers using other state stores. |
| Adapter | The fitted controller already maps the bound request to the PowerShell arguments and interprets the returned JSON. The reported batch path must match the derived path. This example requires no additional wrapper. |
| Glue | Pass the reviewed request and separately supplied authority assertion to the existing controller. Pass the resulting receipt and its raw process and validation references to the evidence area and operator. Treat gate writing, promotion, and recovery as separately scoped actions. |

For a paper walkthrough, take slug **orientation-demo**, date **2026-11-07**, and an explicitly bound disposable output root. The expected child directory is **orientation-demo-2026-11-07**. A reviewed request supplies request_id, slug, title, scope, date, and workspace_root. Set output_root explicitly for this example. If owner is relevant, supply it explicitly. A separate authority assertion supplies authority_id, authorized_by, request_digest, tool_identity_sha256, and allowed_output_roots. Bind the digest to the whole request and the tool identity to the controller's sorted list of required relative paths and file digests. Use the [controller source][controller] for canonicalization and the [controller README][creation] for invocation. A matching assertion records a binding and must come from a legitimately approved operation.

## Read the receipt and stop at the boundary

| Observed case | What to retain and what follows |
| --- | --- |
| Creation reported and structure passes | Require admission permitted, creation_reported true, and artifact_verification pass from a full execution. Retain the receipt, derived path, raw process record, and structural validation record. Report structural success and leave the batch available for review. Promotion requires its own decision. |
| Required facts or authority are missing or invalid | If a refusal receipt is available, preserve it and surface its problems. Resolve the missing facts or approval before making another request. An exit code of 3 can indicate that the request or source boundary could not be established. Preserve the diagnostic and check the source and inputs. |
| Existing path, held lease, failed creation, or failed structural check | Preserve the receipt or diagnostics, destination state, and available raw records. Review what was written and who owns the destination or lease. Stop for an explicit recovery decision before retrying, clearing a lease, repairing, or deleting anything. |
| Admission-only check | Treat the result as preflight. A successful admission-only exit can occur without creation or structural verification. |

Read admission, process outcome, reported creation, structural verification, retained state, and next permitted action separately. Published validation records 13 passing creation-controller cases for the declared suite. This walkthrough traces the cases against source and makes no runtime or total credit-savings claim.

## This repository as a Universal JSON example

The site demonstrates how we use Universal JSON. **The AI JSON is the germ of the heuristic JSON seed.** The [full heuristic landing pad](../ai.landing.pad.json) is the expanded seed. The [low-memory AI landing pad](../ai.landing.pad.low-mem.json) is its compact germ. The germ identifies the seed at a pinned revision and carries current routes for the next step.

Follow [ingress](../ai.ingress.json) to establish what may enter, the [launch pad](../ai.launch.pad.json) to identify the operation and handoff, and [egress](../ai.egress.json) to decide what result and evidence may leave. These records demonstrate the exchange in the same Lattice form.

The [memory-state orchestration records](ai.MEMORY_STATE_ORCHESTRATION.json) show how the site carries state, declares tooling requirements, and uses sentinels to determine eligible capabilities. The [reference and composition contract](construction/contracts/ai.json-reference-composition.json) and [safe-copy contract](construction/contracts/ai.safe-copy.json) show how the form describes construction and verification. The [Mill History germ](state/examples/ai.mill-history-germ.json) applies the same seed-to-germ process to one state refresh.

## Advanced technique for low-memory and bare-metal work

**Take the seed → eject a germ immediately → grow from the germ.**

Resolve the seed at a pinned revision. Before binding tools or growing the workplace, eject a compact germ with its own identity, a source seed reference, an initial memory-state value and condition, one growth goal, and the capability and local binding needed for the first step. Keep detailed contracts, source material, and evidence in their own records. A receiving system can resolve them as each step needs them.

The [Mill History germ](state/examples/ai.mill-history-germ.json) starts with an unknown History value and one goal: establish History from a reviewed batch receipt. The sentinel permits an evidence read through the declared receipt capability. An unbound reader routes to a binding request while the germ remains available for handoff. An authorized read with accepted receipt evidence can produce a new germ revision with the established History value and its provenance.

If the dependent step fails, preserve the last committed germ and record the attempt separately for the surrounding system to handle. The compact germ reduces the initial record size. Actual memory use depends on how the receiving system loads references and tools.

## Project seed extraction

This repository is a machine interface. Its expanded heuristic landing seed supplies the compact AI landing germ. Any project may be considered as a source of a separate **project seed** through **transmigration and decomposting**.

**Decomposting** is decomposition, composting, and composition happening together. Examine the project's parts and relationships while deciding what can feed new growth and how to compose that material into a seed. As the candidate takes shape, it can change which source boundaries and relationships need further examination.

Before extraction, identify the selected project and pinned source revision, the intended seed and its use, the extraction boundary, the applicable authority and approval, and the evidence needed for validation. The [launch pad](../ai.launch.pad.json) describes the scope to hand back to the calling AI before extraction.

The [repository lookup project seed](construction/examples/ai.repository-lookup-project-seed.json) is a worked extraction. It selects the pinned request and response contracts as reusable material and retains three paired cases as validation evidence. The receiving project establishes its own source resolution, access, and disclosure rules before adoption.

## Eject a seed after review

Eject the smallest portable record that lets another workplace understand and repeat the approved method. Use the [xOSG-0 Seed stage][seed] as the reduction criterion. For the Mill Factory example, an illustrative deployment seed could carry:

- The m.A.R.S. memory-state records for the workplace purpose, referents, task, and source, resource, and tool inventory, plus the applicable operating boundaries.
- Pinned tool, controller, and validator identities, plus the request and receipt contracts.
- The adapter mapping, the declared glue connections, and the failure and recovery rules.
- Validation references and a record of which results were observed, proposed, or unresolved.
- Explicit receiving-workplace bindings for source, launcher, output and state roots, and authority. Carry a description of the approval boundary and require the receiving operator to establish local approval.

The memory state carries context. A deployment seed can carry that context together with one instrumented capability and the evidence and conditions for adopting it. The Mill recipe is a source-traced illustration of that composition. A checkpointed workplace using DWSK is a separate candidate. Its workplace-record mapping, adapter, and recovery behavior require an agreed contract and a verified trial before they can be represented as exercised.

[workspace]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/WORKSPACE_HOW_TO.md
[instrument]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/README.md
[tool]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/mill-factory/New-MillBatch.ps1
[controller]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/mill-controllers/creation/controller.py
[creation]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/mill-controllers/creation/README.md
[usage]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/HOW_TO_USE.md
[validation]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/PUBLICATION_VALIDATION.md
[seed]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/syn-xOSG-0/growth/08-seed/README.md
