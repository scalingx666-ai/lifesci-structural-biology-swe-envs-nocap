# Issue

**Title:** to_pdb: ensure newline

## Description

LINK records may miss newline when distance>100 Å. It should not happen, but I think it should not break PDB file in any case. I added this to others just in case.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb06b6790486`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.