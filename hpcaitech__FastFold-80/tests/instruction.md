# Issue

**Title:** fix row_idx overflow in triton softmax

## Description

when squence length extremely long, row_idx may overflow with int32. especially in extra_msa.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ec9352d19fac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.