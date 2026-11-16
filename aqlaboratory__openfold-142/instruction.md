# Issue

**Title:** Properly handling file outputs when multiple models are evaluated

## Description

In a previous PR, we added the ability to create an ensemble of output structures by specifying multiple model files. This PR addresses issues with the handling of output files.  If only a single model file is evaluated, the behavior of the application is unchanged. However, if multiple models are evaluated, structures will be written to `predictions/{model_name}` where `{model_name}` is the base name of each model file.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3f57b4a041f0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.