# Issue

**Title:** refactor: update to `binrw` 0.10

## Description

unfortunately in order to keep CI green, a bunch of things were updated in parallel. (making cargo fmt, clippy, etc happy while also introducing the changes necessary for binrw 0.10). 

If you insist, I can try to reorder and split some of the changes.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `151b2a1497f9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.