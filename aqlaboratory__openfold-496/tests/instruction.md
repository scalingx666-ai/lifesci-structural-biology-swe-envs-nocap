# Issue

**Title:** Fix pl_upgrades environment (numpy, cuda, gcc)

## Description

Fix versions to make pl_upgrades usable again:
* avoid numpy 2
* use own cuda tools with proper explicit gcc version

Should fix #494 and #477 and likely few other issues (see below, the list seems long).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3bec3e9b2d1e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.