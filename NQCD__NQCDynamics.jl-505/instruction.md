# Issue

**Title:** Point DifferentialEquations.jl links at docs.sciml.ai

## Description

.

Swaps the `diffeq.sciml.ai` prefix for `docs.sciml.ai/DiffEqDocs`, 22 links across 8 files. Checked all 10 distinct URLs return 200 after the swap.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `479ef7f6035c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.