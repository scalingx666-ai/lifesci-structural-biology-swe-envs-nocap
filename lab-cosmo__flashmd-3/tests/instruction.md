# Issue

**Title:** Provide easy-to-use stepper generators for i-PI integration

## Description

This adds generating functions for NVE, NVT and NPT steppers. 
All flashmd-specific options apply at generation time, which I think is a better design than using them in the call.
Also checks whether the motion from the i-PI template is consistent with the requested stepper.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `748acbaacdf0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.