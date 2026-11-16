# Issue

**Title:** MAINT: Fix return type errors from macros

## Description

Will raise an error with `-Wreturn-types` otherwise. Basically the preprocessor macros are used in functions without `void`, so `return;` is incorrect.

.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7f16578c292`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.