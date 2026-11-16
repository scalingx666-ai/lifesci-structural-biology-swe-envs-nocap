# Issue

**Title:** Missing N or O in AMD Group: Keep going

## Description

Print a warning but don't fail if the N or O atoms are missing in an amide group.

Not sure if this is the best solution, but it's consistent with how other groups handle missing atoms (`COOGroup`, `HISGroup`).

Closes

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3937cb14671a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.