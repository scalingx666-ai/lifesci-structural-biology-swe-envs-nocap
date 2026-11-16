# Issue

**Title:** Accidentally replaced all the 1.4.1 instances with 1.4.2 last update.…

## Description

… This broke dependencies in readthedocs and Writerside (this isn't used anymore, but I'm correcting it anyway).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `03fe59ba50ea`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.