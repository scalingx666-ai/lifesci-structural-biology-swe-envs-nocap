# Issue

**Title:** Add support for resolving inline frames

## Description

Private PDBs include additional information regarding inlined functions (more information [here](https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/debugging-optimized-code-and-inline-functions-external)). In that case, SQLCallStackResolver is now capable of resolving and displaying those inline frames as well.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2f20f4d3fbfd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.