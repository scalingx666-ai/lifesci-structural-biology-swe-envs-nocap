# Issue

**Title:** Add multimer scoring scheme .8 * iptm + .2 *ptm

## Description

Add multimer iptmscore/ptmscore mixture support. In our benchmark it did not improve over ptmscore only but we might want to support it for compatibility reasons. 
We updated poetry to fix the regression.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3cb3e2f00e42`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.