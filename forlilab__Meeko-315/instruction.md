# Issue

**Title:** Remove all uppercase types CL and BR from GPF file

## Description

In MacOS filesystem, which is case-insensitive, they are the same as the mixed case Cl/Br counterparts, causing confusion.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4c960993a7b4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.