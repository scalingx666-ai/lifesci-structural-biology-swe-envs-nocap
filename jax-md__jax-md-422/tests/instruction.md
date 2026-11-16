# Issue

**Title:** Add NPT Langevin integrator alongside CSVR

## Description

This is largely the bussi-zykova-parrinello barostat with the global csvr updates replaced by local langevin. Note, this implementation is for the unconstrained NPT ensemble.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b079323c5f37`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.