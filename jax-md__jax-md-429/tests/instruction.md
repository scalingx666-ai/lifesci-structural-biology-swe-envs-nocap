# Issue

**Title:** Feat/fixed center of mass

## Description

Adds optional fix_center_of_mass for particle dynamics: subtracts COM momentum and adjusts temperature, thermostat and barostat equations accordingly. Also fixes reused random numbers in NVT CSVR and adds zero-energy guards to rescaling thermostats. Excludes rigid-body and Brownian dynamics, precision changes, and the NVK "zero K" edge case.

Should address #362

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `37912cf3d637`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.