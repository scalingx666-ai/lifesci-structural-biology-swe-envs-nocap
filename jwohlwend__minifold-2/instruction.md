# Issue

**Title:** Updates for mps compatibility

## Description

Adding mps as viable device.
Triton is not mps capable yet. So Triton kernels are now conditioned by the availability of cuda device and fall back to torch ops for mps.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `12c4b8deac29`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.