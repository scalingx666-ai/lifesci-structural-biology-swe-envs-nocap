# Issue

**Title:** fix(pdb): fix album string reading

## Description

I guess our current test pdb doesn't result in good coverage which is why reading album names never worked after the `binrw` refactor.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `151b2a1497f9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.