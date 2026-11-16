# Issue

**Title:** use multiple models for inference

## Description

For the purposes of benchmarking and ensemble generation it is useful to compare the output of multiple models.  Because feature generation is a substantial fraction of the total runtime of openfold, it would be particularly useful to generate features once and then run multiple models using those features. 

This PR modifies `run_pretrained_openfold.py` by extracting feature generation code to `generate_batch()` and modifies the handling of `--jax_param_path` and `--openfold_checkpoint_path` so that they can optionally take a comma separated list of model files as input. 

For example, running with `--openfold_checkpoint_path /mnt/openfold_params/101-80999.ckpt,/mnt/openfold_params/116-84749.ckpt,/mnt/openfold_params/94-79249.ckpt`

will produce models for all 3 checkpoint directories.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6da2cdafc902`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.