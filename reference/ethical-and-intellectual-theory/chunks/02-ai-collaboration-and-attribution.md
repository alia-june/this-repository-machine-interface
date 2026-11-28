# AI collaboration and attribution

**Edition:** `alia-june/ethical-and-intellectual-theory`

**Source revision:** `fa1de43c27557c9f4e277d8dd6fbd9fc96a46cae`

**Coverage:** 4 source documents. Source names are labels, not hyperlinks.

### AI Collaboration Attribution Protocol

Source: `acap/README.md`

A collaboration can produce many drafts, suggestions, and interpretations. The finished work records only some of those decisions. ACAP gives the human author and the AI collaborator separate places to describe what happened, then connects the material generated to what the author chose to use.

| Start here                    | What to do                                                                                                             |
|:------------------------------|:-----------------------------------------------------------------------------------------------------------------------|
| **Human author**              | State your purpose and editorial role. Record what you selected, revised, or set aside.                                |
| **AI collaborator**           | Copy the prompt into the collaboration chat to produce a first-person account of what the AI generated or transformed. |
| **Fillable protocol**         | Put the two statements, contribution records, and adoption decisions together for a specific version of the work.      |
| **Paired disclosure example** | See how the two accounts and the registry entries describe the same editorial decision.                                |

##### From a candidate draft to the finished work

Suppose the AI offers three definitions and proposes a comparison table. The human author selects the second definition, rewrites its final sentence, and places it in section 2. The author declines the table.

- **Contribution Registry.** Record all three definitions and the table proposal, each with its own ID. Record idea origin and language origin separately.
- **Adoption Registry.** Record the second definition as **Edited** and give its final location. Record the table as **Rejected**. Leave the other two adoption entries open if no decision about them is documented.

The AI can report offering all four candidates. The human author can account for the selection, the revision, and the finished text. The shared contribution ID lets a reader trace the revision between those accounts.

##### How this edition fits together

The March 2026 ACAP draft pairs a **Human Author Declaration** with an **AI Generative Report**. Its revision separates drafted material from adopted material. ACAP-2 adds linked contribution and adoption registries and distinguishes the origin of an idea from the origin of its wording.

This working edition retains the original standalone AI Generative Report alongside the ACAP-2 registries. The source map identifies which fields come from each draft and which instructions were written for this edition.

---

### ACAP AI entry point

Source: `acap/ai-entry-point.md`

Use this prompt with the fillable ACAP protocol.

Give the AI the relevant conversation and draft or final excerpts it is allowed to inspect. Replace the bracketed fields before sending.

> Use the AI Collaboration Attribution Protocol (ACAP) to write your own first-person **AI Generative Report** for **\[work and version\]**. Limit the report to **\[sessions, materials, or passages in scope\]**.
>
> Describe what you actually did in the interaction. Identify candidate wording, examples, structures, or interpretations you generated. Describe how you transformed supplied material and how the dialogue shaped your output. Cite the message, draft, or passage for each substantive contribution when a locator is available.
>
> Separate candidate material from what the human explicitly selected or incorporated. If adoption is unclear, say what you can verify and leave the adoption decision open. Keep idea origin and language origin distinct where the evidence supports both. Say what records were unavailable if that limits the account.
>
> Return a short first-person report. If a contribution list would help, include the candidate material and source locators beneath it. Leave the Human Author Declaration for the human collaborator to write or review.

---

### Paired ACAP disclosure example

Source: `acap/examples/paired-disclosure.md`

This hypothetical example concerns a short guide with a definition of *editorial adoption* in section 2.

##### AI Generative Report

I generated three candidate definitions of editorial adoption and suggested a comparison table. In the example interaction, the author selected my second definition and asked to proceed without the table.

##### Human Author Declaration

I wanted the guide to explain when candidate material becomes part of a work. I chose the second definition, rewrote its final sentence, and incorporated the result into section 2. I set aside the table. I reviewed the final guide and take responsibility for it.

##### Contribution Registry

The human author requested a definition of the term. The AI generated the candidate language and introduced the idea of a comparison table.

| ID  | Type      | Idea origin | Language origin | Candidate material                                                                                             |
|-----|-----------|-------------|-----------------|----------------------------------------------------------------------------------------------------------------|
| C1  | Language  | Human       | AI              | “Editorial adoption is the selection of material for inclusion.”                                               |
| C2  | Language  | Human       | AI              | “Editorial adoption occurs when an author chooses candidate material for a work. The material may be revised.” |
| C3  | Language  | Human       | AI              | “Editorial adoption is the point at which a draft becomes part of a work.”                                     |
| C4  | Structure | AI          | AI              | A comparison table with columns for candidate wording, author decision, and final location.                    |

##### Adoption Registry

| Contribution ID | Adoption type | Modification level       | Final location |
|-----------------|---------------|--------------------------|----------------|
| C2              | Edited        | Final sentence rewritten | Section 2      |
| C4              | Rejected      |                          |                |

The record contains no separate adoption decision for C1 or C3, so they remain in the Contribution Registry with their adoption entries open.

**Author-adopted wording for C2**

> Editorial adoption occurs when an author chooses candidate material for a work. The author may incorporate the wording as written or revise it before inclusion.

---

### AI Collaboration Attribution Protocol

Source: `acap/protocol.md`

**ACAP · Working form extracted from the March 9, 2026 drafts**

Use this form to record what the human author intended and adopted, and what the AI collaborator reports generating, transforming, or contributing to the dialogue. The two statements have different speakers. Fill the human declaration in the author's voice and the generative report in the AI collaborator's voice.

This working edition uses the ACAP-2 records and retains the original ACAP's standalone **AI Generative Report** alongside them. It also retains the original collaboration mode and editorial control fields. The source map below identifies those choices.

##### Fillable form

###### Work metadata

| Field               | Entry                                   |
|---------------------|-----------------------------------------|
| Title               | \[Work title\]                          |
| Author              | \[Author name\]                         |
| Date                | \[Date\]                                |
| Publication context | \[Context\]                             |
| Document version    | \[Version of the work being described\] |
| Protocol basis      | ACAP and ACAP-2, March 9, 2026          |

###### Human Author Declaration

**Name:** \[Name\] **Role:** \[Role in the work\] **Editorial authority:** \[Who controlled selection, revision, and inclusion\]

> \[In your own words, describe your purpose, what you contributed, how you used the AI collaborator, and what you selected or revised for the work.\]

###### AI System Record

| Field                   | Entry                                       |
|-------------------------|---------------------------------------------|
| System type             | \[Type of generative system\]               |
| Model class             | \[Model or model class, if known\]          |
| Interaction mode        | \[How the interaction took place\]          |
| Generative capabilities | \[Capabilities used in this collaboration\] |

###### AI Generative Report

Ask the AI collaborator to complete this section using the interaction it can inspect. For a new collaboration, use the copy-ready AI entry point.

> Describe your own contribution in the first person. Identify the candidate wording, explanations, examples, structures, or interpretations you generated, and describe any transformations you made to material supplied in the dialogue. Explain how the exchange shaped your output. Separate what you drafted from any author adoption shown in the record. Describe observable participation and procedural contributions. Leave the author's account of intent and editorial decisions to the Human Author Declaration.

**AI collaborator's report**

> \[Insert the AI collaborator's first-person report here.\]

###### Collaboration Mode and Human Editorial Control Level

**Collaboration mode:** \[Select all that apply\]

| Mode       | Activity                               |
|------------|----------------------------------------|
| Assistive  | Grammar, editing, or formatting        |
| Generative | Drafting passages or examples          |
| Structural | Organizing arguments or narratives     |
| Analytical | Critique, interpretation, or analysis  |
| Dialogical | Iterative development through dialogue |

**Human editorial control level:** \[Full, Moderate, or Minimal\]

| Level    | Meaning in the original ACAP draft         |
|----------|--------------------------------------------|
| Full     | The author edited or rewrote extensively.  |
| Moderate | The author curated and modified outputs.   |
| Minimal  | The author used outputs largely unchanged. |

Use the Human Author Declaration to record **who held editorial authority**. The level above records **how extensively the author intervened in the output**.

###### Contribution Registry · Drafted material

Record candidate material produced by the AI, including drafts that were rejected or never entered the work. Assign each contribution an ID for use in the Adoption Registry.

| Contribution ID | Type     | Idea origin | Language origin | Description            | Draft excerpt |
|-----------------|----------|-------------|-----------------|------------------------|---------------|
| \[ID\]          | \[Type\] | \[Origin\]  | \[Origin\]      | \[What was generated\] | \[Excerpt\]   |

| Field           | Values in the ACAP-2 draft                                |
|-----------------|-----------------------------------------------------------|
| Type            | Explanation · Example · Structure · Comparison · Language |
| Idea origin     | Human · AI · Dialogical                                   |
| Language origin | Human · AI · Mixed                                        |

###### Adoption Registry · Author decisions

Use the contribution ID to connect an author decision to the candidate material. Under ACAP-2, generated material becomes part of the work through explicit adoption by the author. Where the source evidence does not establish a decision, leave the adoption entry open.

| Contribution ID                   | Adoption type | Modification level                      | Final location                                          |
|-----------------------------------|---------------|-----------------------------------------|---------------------------------------------------------|
| \[ID from Contribution Registry\] | \[Type\]      | \[Description of the extent of change\] | \[Section, passage, or other locator where applicable\] |

| Adoption type | Meaning in the ACAP-2 draft    |
|---------------|--------------------------------|
| Full          | Adopted unchanged              |
| Edited        | Wording modified               |
| Adapted       | Concept retained but rewritten |
| Reference     | Idea used but text replaced    |
| Rejected      | Excluded from the work         |

The draft gives overlapping descriptions for **Adapted** and **Reference**. Where the category remains unclear, describe the actual treatment. ACAP-2 gives *Moderate* as a modification-level example and leaves the full set of values unspecified.

**Optional draft-to-adoption comparison**

- **Contribution ID** \[ID\]
- **AI draft** \[Candidate wording\]
- **Author-adopted version** \[Wording incorporated into the work\]
- **Final location** \[Locator in the identified work version\]

###### Process Record

| Field            | Entry                              |
|------------------|------------------------------------|
| Session count    | \[Number of sessions covered\]     |
| Interaction mode | \[How the exchange was conducted\] |
| Prompt type      | \[Kind of prompts used\]           |
| Iteration level  | \[Extent of iteration\]            |

###### Generative Attribution Summary

Summarize the registries for the work version above. If you give counts, specify which registry entries and categories they cover.

| Measure               | Entry                    |
|-----------------------|--------------------------|
| Drafted contributions | \[Count or description\] |
| Adopted contributions | \[Count or description\] |
| Adapted concepts      | \[Count or description\] |
| Rejected drafts       | \[Count or description\] |

###### Responsibility Statement

> \[Identify the human author who takes responsibility for the final work's accuracy, interpretation, conclusions, and publication, as applicable.\]

##### Source map

All three drafts appear in the March 9, 2026 conversation **Ethics of LLM Collaboration**. Message IDs identify the records in the August 2026 export. The source conversation requires access to that history.

| Source                                      | Message ID                             | Material carried into this form                                                                                                                       |
|---------------------------------------------|----------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| Original ACAP, §§ II–IV                     | `b9e69758-c65b-4e2e-b6c1-5de5075a7b07` | Dual Testimony Model, Human Author Declaration, AI Generative Report, Collaboration Mode, Human Editorial Control Level, and Responsibility Statement |
| Generative Attribution Separation, §§ I–III | `4e14d030-0002-42c4-83ca-6797d5d40d8c` | Drafted Text and Adopted Text distinction and optional side-by-side comparison                                                                        |
| ACAP-2 Hardened Schema, §§ I–X              | `2517cab4-ed00-4b0a-b6a4-72d84e4e7a4e` | Attribution dimensions, work and participant records, registries, process record, derived summary, and responsibility                                 |

The fill-in instructions are editorial guidance for using the extracted fields. The report prompt is newly worded from the historical procedural disclosure principle. This form leaves undecided adoption entries open and carries through the source's unresolved category boundaries.

---

