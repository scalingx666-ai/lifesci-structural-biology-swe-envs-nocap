# Issue

**Title:** added a new member to DPStokesSlab to compute fluid velocity in the x…

## Description

Added a new function member to the DPStokesSlab in src/Integrator/BDHI/DoublyPeriodic/DPStokesSlab.cuh to compute the average fluid velocity (across the xy plane) in the x direction as function of z.

The function output has been successfully tested against analytical parabolic velocity distribution obtained from the continuum Stokes equations.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `93dc66937b31`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.