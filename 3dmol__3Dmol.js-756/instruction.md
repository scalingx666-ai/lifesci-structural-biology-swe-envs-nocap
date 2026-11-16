# Issue

**Title:** Refactor ts files parser utils

## Description

# :dizzy: Changelog
:star: Improved typesafety in TS files located in `parser/utils`.
:star: Changed `var` to `let` and `const` as applicable.
:star: Moved constant value identifiers outside of function definition to avoid unnecessary re-initialization.
:star: Added strict equality check

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3c50910b0f5a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.