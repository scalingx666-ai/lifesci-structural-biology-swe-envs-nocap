# Issue

**Title:** Improving path registry

## Description

1. Give value to the path_registry. Files names are now files id. Which are the ones the agent will use to use files inside tools (already implemented in simulations and cleaning tools)
2. Improve ListRegistryPath as names are hardly self-explanatory, a description of each file is also included.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `16b69dc37c7d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.