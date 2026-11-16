# Issue

**Title:** Release new minor version 3.0.1

## Description

Release new minor version 3.0.1
Simplify build options by removing the workaround that allowed building OpenBabel Python bindings for the broken openbabel pypi package 3.1.1.1

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `829a90dd8286`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.