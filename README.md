# This Repository Machine Interface

mARS provides machine-readable reference material for AI handling repository requests in chat across the alia-june GitHub account.

- [readme.json](readme.json) is the machine entry point. It describes repository discovery and indexes the kinds of requests an AI might receive.
- [ai.hook.json](ai.hook.json) describes how to identify the requested operations, locate evidence, give an answer or lookup steps, and return control to the calling AI.

Both files are reference data. The calling AI uses the handoff to continue under the user's instructions and applicable repository rules.

## Systems Deployment

[Grow a workplace, instrument a tool, and eject a seed](SYSTEMS_DEPLOYMENT.md). Start with the instrumentation warning and follow the worked Mill Factory example.
