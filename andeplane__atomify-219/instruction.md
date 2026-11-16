# Issue

**Title:** fix: remove unused github hook file

## Description

Removes unused `src/hooks/github.ts` file that contains GitHub API hooks (`useListDirectory` and `retrievePath`) that are not imported or referenced anywhere in the codebase. Also removes a hardcoded GitHub API token that was a security concern.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `474eae42cbe9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.