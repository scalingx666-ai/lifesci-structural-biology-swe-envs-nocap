# Issue

**Title:** refactor: optimize impl fmt::Display for DeviceSQLString

## Description

This technically causes a little bit of code duplication between `into_string` but avoids string conversion and allocation in the common Ascii case

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `38dc3a94602c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.