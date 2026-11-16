# Issue

**Title:** Compute deltaRFD without using hydrodynamicRadius in DPStokesIntegrator

## Description

It is possible to initialize DPStokesIntegrator without setting the hydrodynamic radius. This causes deltaRFD to be zero and everything to turn NaN down the line

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c54efb0120df`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.