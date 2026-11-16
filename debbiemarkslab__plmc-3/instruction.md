# Issue

**Title:** use CC to specify compiler

## Description

since CC is set at the top of the makefile, it would be nice to use it's value for the compilation. Makes it easy if you wants to go in and specify a different gcc or something ... say on OS X where `gcc` masquerades as `clang`, but where you can install a real gcc with brew to take advantage of OpenMP

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8aab5f232a4e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.