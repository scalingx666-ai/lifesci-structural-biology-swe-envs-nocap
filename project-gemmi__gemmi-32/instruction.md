# Issue

**Title:** Enum fixes

## Description

Note: first commit is a breaking change. Possible alternatives seems to be worse to me (exposing `gemmi::El` to python / dynamic construction of `gemmi::Element` in `gemmi.SubCells.element` lambda)

(This PR fixes remaining C++ signatures that leaked to python docstring)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0dd44e09e60b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.