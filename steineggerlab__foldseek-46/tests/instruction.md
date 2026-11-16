# Issue

**Title:** Add lddt score to output format of convertalis workflow

## Description

Initial integration of lddt score into foldseek
I'm currently copying the coordinates from a dynamic float array into matrix2D, a data structure I implemented for convenience in my local project, which is a waste of time. I should get rid of it.
And it's failing progress checks?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6320c8820c4a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.