# Issue

**Title:** Add support for aarch64 architecture in myutils.h

## Description

This fixes a runtime error (when original code is used for compilation on aarch64):
```---Fatal error---
myutils.cpp(106) assert failed: sizeof(void *) == 4```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2aa2b40f29e1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.