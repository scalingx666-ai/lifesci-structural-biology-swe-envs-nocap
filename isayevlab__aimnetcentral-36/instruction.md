# Issue

**Title:** Fix DFTD3 stress sign for Cauchy stress convention

## Description

## Summary

Fix incorrect stress sign in DFTD3 backward pass by adding negative sign to virial-to-cell-gradient conversion.

## Changes

- Add `-` sign to `dE_dcell_bohr = -virial @ cell_inv_t` in both `_DFTD3Function.backward` and `_dftd3_backward`
- Document Cauchy stress convention in module docstring
- Add finite-difference stress verification test

## Impact

Stress tensor now follows physical Cauchy convention (positive = tensile, negative = compressive), compatible with ASE.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2cb89b113b4d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.