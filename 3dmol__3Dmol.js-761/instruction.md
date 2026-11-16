# Issue

**Title:** Refactor remaining files in parser/utils

## Description

# :dizzy: Changelog
:star: Improved typesafety in the remaining TS files located in `parser/utils`.
:star: Changed `var` to `let` and `const` as applicable.
:star: Added strict equality check
:star: If the name of identifiers of key and value are the same, do not pass the value identifier explicitly. E.g: Instead of using `atoms.push({x:x,y:y})` simply use `atoms.push({x,y})`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8c3e9d4212d2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.