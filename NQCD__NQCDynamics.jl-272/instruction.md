# Issue

**Title:** Refactor QuantisedDiatomic module

## Description

* Broken code up into multiple files
* Using Interpolations.jl to fit the binding curve instead of re-evaluating the potential all the time, should be much faster.
* Added additional function for generation with 1D potentials.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `142f53bbff82`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.