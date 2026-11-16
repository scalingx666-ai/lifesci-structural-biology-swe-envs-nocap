# Issue

**Title:** Split ratio check into light and heavy atoms

## Description

Molecules for which sanitization adds radicals can fail the energy ratio check. Assume no radicals here and fill with hydrogens. Additional radical check added as chemical sanity check.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a770e0c0ca39`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.