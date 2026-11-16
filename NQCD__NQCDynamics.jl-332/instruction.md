# Issue

**Title:** Create Boltzmann velocity distributions from `Simulation`s directly

## Description

Fixes  and requires  and  to be merged prior. 

Since the `VelocityBoltzmann` is dependent on the atomic masses, it makes sense to be able to pull both these and the overall dimensions from an existing `Simulation`. For consistency, a temperature must still be provided separately, but this is quick to do with `Simulation.temperature(0)`. 

Also, initialising `VelocityBoltzmann` from a simulation should check for any atoms not included in `mobileatoms`, as these should be initialised with zero velocity.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ce7f9114ee22`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.