# Issue

**Title:** Add sym info for Feb 2023 GDRs

## Description

* Add symbol info for 11 security updates released in Feb 2023.

* Also remove KB4019099 as the actual ship vehicle for that fix is KB4032542.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f45667391bd6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.