# Issue

**Title:** Add files via upload

## Description

An adapted version for membrane protein (eg. GPRC) simulations
Modifications:
    - Added Hydrogen Mass Repartitioning (HMR) support to enable 4 fs integration timestep
    - Added semi-isotropic barostat conditions for membrane systems (monte carlo membrane barostat)
    -Ability to initialize simulations from an OpenMM state XML file (e.g., previously equilibrated systems or systems prepared with OpenMM)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `949e87755570`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.