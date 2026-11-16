# Issue

**Title:** Fix tag-sequence mismatch when predicting for multiple fastas

## Description

Fixes a small bug which assigns only the last fasta chain descriptions to all sequences when running inference for multiple fastas.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `04fd6d346f31`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.