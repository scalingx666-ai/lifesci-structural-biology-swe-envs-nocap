# Issue

**Title:** High Level API rebase

## Description

I took the liberty of rebasing #92 , thinking that it could be a good place to start writing higher-level serialization code to (i.e. to separate it from `mod.rs`). Please take a look and let me know what your thoughts are.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5e559c13b948`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.