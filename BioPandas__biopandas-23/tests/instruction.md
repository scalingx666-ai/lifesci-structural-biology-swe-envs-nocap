# Issue

**Title:** Substantial speed improvement of distance methods

## Description

both `PandasMol2.distance` and `PandasPdb.distance` are now ~300 percent faster

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `193f998a9648`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.