# Issue

**Title:** rigidify triple bonds (rigidify single bonds in single-triple-single)

## Description

Triple bonds are rigid.

Single bonds in nitriles are also rigid.

Implemented @rwxayheee idea of, in single-triple-single bond systems, rigidifying the single bonds and rotating the triple bond instead, as this is the most efficient approach.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a7fa6a6e8e63`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.