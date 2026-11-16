# Issue

**Title:** Add options for easy benchmarking

## Description

Those features were previously part of a private fork - now the same features are wrapped in a new subcommand for easy use. Those are:
- PyOpal contact map filtering (it can drop some structures so default off)
- Ability to search all databases without dropping queries
- Ability to choose identity ranges (to simulate further homology matches by e.g only matching below 0.5 identity)
- Random choice from MMSeqs2 hits, not only top-bitscore
- Iteration over many --generate-contacts values
- Writing of timing.tsv with wall times per stage
- Possibility to reuse MMSeqs2 search results

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6f9858f4a6fc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.