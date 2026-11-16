# Issue

**Title:** modify requirements, fix CI container

## Description

I found ColossalAI can't be installed by pip without declaring the channel now.
And we need torch1.12, so I changed the image.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `530b958262bb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.