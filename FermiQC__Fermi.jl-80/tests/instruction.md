# Issue

**Title:** Single precision implemented

## Description

Integrals are computed using double precision but stored as `Float32`. Future improvements should be aimed to produce these integrals directly from `libcint` in single precision.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0ceb3c54f915`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.