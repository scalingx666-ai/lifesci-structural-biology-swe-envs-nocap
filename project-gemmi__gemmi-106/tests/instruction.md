# Issue

**Title:** to_pdb: limit the atom name length

## Description

I saw a program (accidentally) set long atom name and gemmi write a broken pdb file. So this should be safer.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `790a2e1713f7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.