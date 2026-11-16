# Issue

**Title:** feat(pdb): Add binrw-based DeviceSQLString impl

## Description

I still have to reiterate a bit on the design, especially since I already found flaws while creating unit tests (also notice all the TODOs)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2c79f1328ec1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.