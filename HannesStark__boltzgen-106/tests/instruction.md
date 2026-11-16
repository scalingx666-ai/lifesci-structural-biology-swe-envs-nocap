# Issue

**Title:** Add SLURM example

## Description

This PR adds a simple example for running on SLURM using a job array with many single-GPU jobs. Each job runs all pipeline steps for a small number of designs. Afterward, the designs from all the jobs are merged using "boltzgen merge" and then the filtering is re-run on the merged results.

We are still experimenting with the best way to do this - feedback on these scripts or other approaches people have tried is welcome

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fb1d66fd5d60`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.