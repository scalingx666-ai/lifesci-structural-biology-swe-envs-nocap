# Issue

**Title:** Stable computation of log(g_Mie) in SAFTVRMie

## Description

More stable version. The exp results in stability issues, resulting in `Inf` when having nonsensical parameter values (running an optimization routine from random starting points)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c0566353c1c6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.