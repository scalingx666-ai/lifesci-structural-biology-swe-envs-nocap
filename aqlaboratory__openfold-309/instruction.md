# Issue

**Title:** Advance python version to 3.9 to build docker in Ubuntu Lunar Lobster

## Description

Advance python version from 3.7 to 3.9 at multiple places in the code. This fixes the docker build with Ubuntu Lunar Lobster which became "Latest" a few days ago.

(I noticed a likely broken docker build from main in my other PR #308. See it for more detailed comments.)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b5fa2ba316c2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.