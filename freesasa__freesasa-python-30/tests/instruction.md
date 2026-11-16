# Issue

**Title:** Adds chain-groups support

## Description

From #29

You can see in `testGetStructures()` that `getStructures()` behaves as `structureArray` when a selection is not specified, so in the future the latter can be replaced by the former, if you're happy with the naming.

Let me know if I'm missed anything.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7841d80194da`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.