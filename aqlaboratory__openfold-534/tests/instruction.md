# Issue

**Title:** Update openfold to use pytorch 2 and other updated dependencies

## Description

Updates OpenFold to use pytorch=2.5 and CUDA 12. After these changes are merged, CUDA12 will become the default build procedure for OpenFoldv2.

Other notable dependency version updates include:
- numpy > 2
- openmm > 8
- pytorch lightning > 2

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `815a042c697e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.