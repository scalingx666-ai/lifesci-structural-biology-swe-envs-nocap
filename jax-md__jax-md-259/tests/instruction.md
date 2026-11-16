# Issue

**Title:** Add EDIP potential

## Description

This PR implements the Environment dependent interatomic potential (EDIP). The current parameter values are for Silicon [1,2].

1) Martin Z. Bazant, Efthimios Kaxiras, and J. F. Justo.  "Environment-dependent interatomic potential for bulk silicon". Phys. Rev. B 56, 8542 (1997).
2)  João F. Justo, Martin Z. Bazant, Efthimios Kaxiras, V. V. Bulatov, and Sidney Yip. "Interatomic potential for silicon defects and disordered phases". Phys. Rev. B 58, 2539 (1998).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `024a62987204`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.