# Issue

**Title:** Run PSEA in a temporary directory

## Description

~This PR updates Bio.PDB.PSEA.run_psea() to execute the external
PSEA tool inside a temporary directory, This prevents unnecessary
output files from being left in the user's working directory.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0d829a8d0018`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.