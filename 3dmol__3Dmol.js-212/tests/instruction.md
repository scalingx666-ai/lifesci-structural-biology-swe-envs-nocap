# Issue

**Title:** Fix missing variable declaration

## Description

A variable was used without a declaration, which is either going to automatically declare it on `window` or throw an error, both of which are bad!  This fixes it by declaring the variable.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7e15edcf9ba6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.