# Issue

**Title:** release memory when finished the `addSurface` work.

## Description

when use the `addSurface`, glviewer will create 4 workers every time, but ever never `terminate` them. the broswer memory will be group up and more and more, if i call `addSurface` too many times.

I added a function called `releaseMemory` in glviewer.js file#4248, when glviewer.js#4278, surface work is done, call it and release the memory.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f57a8a14a39d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.