# Issue

**Title:** Improves NVT to use Suzuki-Yoshida substeps.

## Description

Changed how temperature schedules are set.
Fixed bug with vectorization.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `32c60cbc8b9b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.