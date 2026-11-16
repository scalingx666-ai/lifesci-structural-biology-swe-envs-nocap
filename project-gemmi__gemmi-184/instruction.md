# Issue

**Title:** monlib: read nucleus distances in modifications

## Description

New monomer library (in bzr, not yet in ccp4) includes nucleus distances for modifications.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `91c3433e4b61`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.