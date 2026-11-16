# Issue

**Title:** feat: support mass fractions as composition input

## Description

## Summary

- I added a `MassFractions` composition wrapper that converts a one-kilogram mass-fraction basis to molar amounts using each component's molecular weight.
- I covered both the conversion itself and an end-to-end property calculation alongside equivalent Unitful mass inputs.
- I included the focused test in both the standard and extension test entry points.

## Validation

- `julia --compiled-modules=no --project=test/extensions -e 'using Test, Clapeyron, Unitful; include("test/methods/mass_fractions.jl")'` (2 tests passed)
- `Aqua.test_ambiguities(Clapeyron)`
- `Aqua.test_undefined_exports(Clapeyron)`
- `git diff --check upstream/master...HEAD`

I deferred the full multi-platform test suite to CI.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `34e3b63c80ae`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.