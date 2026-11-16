# Issue

**Title:** Add BCB algorithm for adiabatic ring polymer dynamics and refactor algorithm declarations

## Description

- Previously adiabatic ring polymer dynamics defaulted to the VelocityVerlet algorithm. Now it will use the new BCB algorithm by default.
- All of the integration algorithms are declared at the top of the IntegrationAlgorithms module along with all the algorithm defaults.
- steps.jl contains a collection of some of the sub-steps used within a few different algorithms.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bf7f0ac5105a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.