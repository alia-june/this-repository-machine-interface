```text
IF reader = heuristic engine THEN read ai.landing.pad.json.
ELSE IF reader = AI THEN read ai.landing.pad.low-mem.json.
ELSE continue with the human README.
IF a required reference fails to resolve THEN stop the dependent step AND report the unresolved reference.
```

[Heuristic engine landing pad](ai.landing.pad.json) · [AI landing germ](ai.landing.pad.low-mem.json)

# This Repository Machine Interface

Alia-June uses this interface as a shared front door for repository requests. A heuristic engine reads the expanded landing seed. An AI starts with the compact germ. Human readers can continue here.

A request enters through [ingress](ai.ingress.json), proceeds to the [launch pad](ai.launch.pad.json) when admitted, and returns through [egress](ai.egress.json). The worked read-only lookup shows how to establish a target and source revision, return a cited answer when evidence permits, and hand back clarification or a blocked outcome when needed.

The landing seed supplies the AI germ. A **project seed** is a separate extraction through transmigration and decomposting, with its own selected source, intended use, authority, and evidence.

Continue with the [human orientation guide](.ai.system.logic/human.README.md), or use the [project JSON map](.ai.system.logic/human.PROJECT_JSON_MAP.md) to find a specific record. Our developing technology is documented in [xOSG Prototype](https://github.com/alia-june/xOSG-prototype).
