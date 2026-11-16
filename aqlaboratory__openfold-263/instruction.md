# Issue

**Title:** Load pretrained jax weights

## Description

Added option to load pretrained jax-weights (such as from Alphafold) to be loaded for training. Implementation is analog to run_pretrained_openfold.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2ef7893a8c39`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.