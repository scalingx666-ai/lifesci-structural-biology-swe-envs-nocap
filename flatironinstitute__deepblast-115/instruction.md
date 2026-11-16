# Issue

**Title:** Adding option to run smith waterman

## Description

- [ ] Update unittest with `NeedlemanWunchAligner -> NeuralAligner`

If one wants to run Smith-Waterman style alignment, specify `--alignment-mode 'smith-waterman'`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c560be720fed`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.