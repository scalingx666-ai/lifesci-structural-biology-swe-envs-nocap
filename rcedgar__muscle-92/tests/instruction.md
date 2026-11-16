# Issue

**Title:** Integrates CLOAK alignment cleaning algorithm into MUSCLE

## Description

Introduces command -cloak into muscle, which allows users to run the CLOAK alignment cleaning algorithm.
Adds cloak.cpp, a file containing all the necessary functions to run CLOAK within MUSCLE.
Edits cmds and myopts header files to include the necessary command line options for CLOAK.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `82036d12e424`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.