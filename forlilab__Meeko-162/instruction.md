# Issue

**Title:** rename mk_prepare_receptor.py arg --ligand to --box_enveloping

## Description

@rwxayheee does `--box_enveloping` make sense to you? Maybe there are better alternatives. `--ligand` was a bad choice I made back in the day.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7d1eb931c764`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.