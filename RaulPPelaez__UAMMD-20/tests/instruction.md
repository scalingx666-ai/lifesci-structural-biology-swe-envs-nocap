# Issue

**Title:** Remove copy of gridVels to a std::vector in FCM

## Description

In FCM_impl.cuh, while spreading forces, there is an unnecessary operation where data is copied from a cached_vector to a std::vector (specifically gridVels). This std::vector does not seem to serve any functional purpose, and the copy operation is quite time-consuming.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d385ab341b77`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.