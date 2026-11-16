# Issue

**Title:** Warn in Vina about empty coords. Fixes #62

## Description

This PR  and also warns if there is no molecules at the output of VS pipeline.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ad9354a60a3b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.