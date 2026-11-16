# Issue

**Title:** nagl charges from latest version of openff

## Description

Implements NAGL charges here: https://docs.openforcefield.org/projects/nagl/en/latest/theory.html

Requires a fairly recent version of openff dependencies. Not sure what the best way is to enforce that.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3c6795f6a3c6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.