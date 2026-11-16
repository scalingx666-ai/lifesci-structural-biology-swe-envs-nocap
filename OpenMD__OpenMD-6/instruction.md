# Issue

**Title:** cppcheck: fix some reports

## Description

[src/antlr/ASTFactory.cpp:64]: (performance) Prefer prefix ++/-- operators for non-primitive types.
[src/antlr/ASTFactory.cpp:129]: (performance) Prefer prefix ++/-- operators for non-primitive types.
[src/applications/dynamicProps/MultipassCorrFunc.cpp:271]: (warning) Possible dereference of an invalid iterator: i1
[src/applications/dynamicProps/MultipassCorrFunc.cpp:275]: (warning) Possible dereference of an invalid iterator: i2

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e63a7f466f22`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.