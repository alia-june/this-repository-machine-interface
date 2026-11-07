# Systems Deployment

> [!WARNING]
> **INSTRUMENT TOOLS BEFORE USING THEM IN AN AI EXPERT-SYSTEM ORCHESTRATOR.**
>
> Every model call used to reconstruct a routine operation, interpret process output, or decide how to handle a mechanical failure consumes LLM credits. Move the repeatable work into a deterministic microcontroller fitted to the tool. Use an adapter for its native interface and glue for the declared connections. Keep intent, approval, acceptance, and unresolved recovery decisions with the operator. Measure actual credit use if savings are part of the acceptance criteria.

## Grow a workplace around one useful task

Start from the [portable m.A.R.S. v0.3.0 workplace seed](https://github.com/alia-june/xOSG-prototype/blob/a73a88a55d605f8d333ad1a53ca5a9f634023a15/docs/systems-deployment/seeds/mars-workspace/WORKSPACE_SEED.json), staged in [xOSG PR #16](https://github.com/alia-june/xOSG-prototype/pull/16). The receiving workplace supplies local goals, authority, and resource bindings.

Declare the task, sources and revisions, operating rules, available capabilities, permitted destinations, and acceptance evidence. Keep source separate from active work and retained receipts. Start with one declared tool and observe its existing contract before proposing any controller. A change to the workplace itself needs its own scope and approval. See [How to grow a living tooling workspace][workspace] and [How to instrument a tool][instrument].

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

## Eject a seed after review

Eject the smallest portable record that lets another workplace understand and repeat the approved method. Use the [xOSG-0 Seed stage][seed] as the reduction criterion. For this example the proposed contents are:

- Workplace purpose, task, and operating boundaries.
- Pinned tool, controller, and validator identities, plus the request and receipt contracts.
- The adapter mapping, the declared glue connections, and the failure and recovery rules.
- Validation references and a record of which results were observed, proposed, or unresolved.
- Explicit receiving-workplace bindings for source, launcher, output and state roots, and authority. Carry a description of the approval boundary and require the receiving operator to establish local approval.

The Mill recipe is a worked reference for an existing fitted controller. A checkpointed workplace using DWSK is a separate candidate. Its workplace-record mapping, adapter, and recovery behavior require an agreed contract and a verified trial before they can be represented as exercised.

[workspace]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/WORKSPACE_HOW_TO.md
[instrument]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/README.md
[tool]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/mill-factory/New-MillBatch.ps1
[controller]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/mill-controllers/creation/controller.py
[creation]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/mill-controllers/creation/README.md
[usage]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/HOW_TO_USE.md
[validation]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/Instrumentation/PUBLICATION_VALIDATION.md
[seed]: https://github.com/alia-june/xOSG-prototype/blob/7a156a314e11e6e4973ab6da23bef32acee81314/syn-xOSG-0/growth/08-seed/README.md
