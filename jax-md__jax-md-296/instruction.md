# Issue

**Title:** feat(ci): enable pip caching in CI

## Description

This PR aims to set the `cache` argument to `pip` to enable caching of python packages in the CI. This enables for faster CI runs, thereby helping DX and the contributing experience.

Request for Review: @sschoenholz

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a4851b841523`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.