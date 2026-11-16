# Issue

**Title:** add documentation template

## Description

@danieleongari mentioned he will read through the code over the weekend and would be happy to work on a documentation during this time

This adds 
 * a documentation template for use with readthedocs.org (I will add it there once the PR is merged)
 * an automatic API documentation of the code based on current docstrings
 * a brief sphinx cheatsheet showing how to refer to classes, write math etc.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9674a107ecaf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.