# Issue

**Title:** Viterbi cuda

## Description

So far an incomplete implementation of the Viterbi algorithm using numba.cuda. It's at a good point to start talking about how to handle the decoder and other issues.

One thing to note: The forward algorithm systematically seems to underestimate the cost in the forward pass relative to the cpu variant. I assume this is from precision issues in log(sum(exp(StuffVec)).

Anyway. It might be time to sit down and talk about what else needs to be done to get this functional.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f75eec621136`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.