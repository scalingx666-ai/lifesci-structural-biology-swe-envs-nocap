# Issue

**Title:** Moved general surface hopping functions to SurfaceHoppingMethods.jl

## Description

Moved two generally applicable surface hopping functions get_hopping_nonadiabatic_coupling() and get_hopping_velocity() to SurfaceHoppingMethods.jl and moved their duplicate RingPolymer definitions to the same file to bring these definitions more in line with the duplicate function definition philosophy in the rest of NQCD

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `96081d1eb282`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.