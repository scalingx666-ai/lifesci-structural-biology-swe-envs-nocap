# Issue

**Title:** Fix regularization of Vogl Slater-Koster term expressions

## Description

Define special variant of `Nsq` for denominator, and only regularizing that one.  Should be exact now (unlike previous regularization), since when Nsq = 1 L=M=0 and expression is 0 anyway, as long as NaN from division by (-1 + Nsq) is prevented.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2cbe2b77f3d9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.