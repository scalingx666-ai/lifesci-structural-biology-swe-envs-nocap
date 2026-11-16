# Issue

**Title:** Issue #352 - Fix Issue with New Floating Frame Size on Linux

## Description

Need to call validate() before getting size of floating frame in finalizeSize. This ensures that we have the proper size of the display panel before attempting to use its size.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `43683f4b8bd1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.