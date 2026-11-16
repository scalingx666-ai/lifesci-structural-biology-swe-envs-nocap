# Issue

**Title:** add correct GPG key to dockerfile

## Description

the nvidia GPG keys used for their apt repository changed and they havent pushed fixed versions of the docker containers yet. this PR manually adds the correct keys.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cd41d73f31af`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.