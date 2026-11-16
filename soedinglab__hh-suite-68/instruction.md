# Issue

**Title:** Dumps actual HMM names when using -blasttab in hhblits_mpi

## Description

When using hhblits_mpi over a ffindex database, the hits reported with `-blasttab` format are internal ids rather than actual hmm names. 
I think this small change would solve it.

ps. Still unsure if `hit.name` would be safer than `hit.longname`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5be010f9ddb9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.