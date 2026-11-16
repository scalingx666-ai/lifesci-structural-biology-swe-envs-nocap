# Issue

**Title:** Add Chain.calculate_center_of_mass python binding

## Description

Add `Chain.calculate_center_of_mass()` analogues to `Model.add_calculate_center_of_mass()`

(I needed this to conveniently conditionally move chains between unit cells)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1a5a0b6f9357`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.