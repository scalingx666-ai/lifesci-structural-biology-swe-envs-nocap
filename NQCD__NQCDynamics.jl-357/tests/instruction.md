# Issue

**Title:** Moving general surface hopping functions to SurfaceHoppingMethods.jl

## Description

Moved get_hopping_velocity() and get_hopping_nonadiabatic_couplings() out of fssh.jl and into SurfaceHoppingMethods.jl. I have also moved their duplicate definitions for RingPolymerSimulations into the same file to bring these definitions inline with the philosophy for duplicate definitions used elsewhere in the code.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0fa00c1488bd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.