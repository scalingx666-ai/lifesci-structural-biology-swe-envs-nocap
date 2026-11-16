# Issue

**Title:** Add the ability to set crystal matrix directly and use it for all unit cell operations

## Description

This PR adds the ability to set `cryst.matrix` manually, use it for all unit cell operations and make sure it is set even when the user/parser only specified `a/b/c/alpha/beta/gama`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a269870b51a8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.