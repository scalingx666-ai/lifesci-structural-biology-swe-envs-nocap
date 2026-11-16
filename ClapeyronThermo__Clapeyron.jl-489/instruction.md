# Issue

**Title:** Pseudo-Pure CoolProp models

## Description

Implementation of pseudo-pure CoolProp models.

Not much needed, apart from some parsing quirks (and storing the bubble and dew functions)

what is missing is some functions to calculate (or exclude) two-phase properties, in particular, overloading `Tproperty_pure` and `Pproperty_pure` to use the pseudo-pure bubble and dew functions instead of going for single-component saturation.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `848b3a7b9330`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.