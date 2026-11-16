# Issue

**Title:** Add RPeCMM and modify NRPMD

## Description

This is an experiment with the estimators for ring polymer mapping methods. If the results obtained are good then this can be merged.

I have switched NRPMD back to using focused initial conditions and older version of the population estimators. I am also trying a version of eCMM with extra beads. Let's see what happens.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `41dbfbe70453`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.