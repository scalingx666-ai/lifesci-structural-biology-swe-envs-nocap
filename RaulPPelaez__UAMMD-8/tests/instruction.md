# Issue

**Title:** CMake and compilation CI

## Description

This PR adds CMake compilation support and a github CI that compiles every example.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `491f75b62828`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.