# Issue

**Title:** Fix desorption checking logic in `Analysis.Diatomic`

## Description

`Analysis.Diatomic.surface_distance_condition` was incorrectly calling `Analysis.Diatomic.surface_normal_height` without a `surface_normal` argument, which was included in a `symdiff` call to find all non-diatomic atom indices instead. 

This resulted in these atom indices being returned as `Float64`s, which caused indexing to fail down the line. 

.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c386d3f189d4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.