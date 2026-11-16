# Issue

**Title:** Automatic error recovery for Boltz cuda kernel errors

## Description

## Description

Add `boltz_wrapper.py` to handle `pynvml.nvmlDeviceGetNumGpuCores` failure on MIG-enabled GPUs
Detect MIG mode at runtime and use wrapper to monkey-patch pynvml before running Boltz.

## Docker images

Following this PR, I kept the previous production Boltz image as `quay.io/nf-core/proteinfold_boltz:boltz_2.0.3` and pushed the updated `quay.io/nf-core/proteinfold_boltz:2.0.0` to contain Boltz version 2.2.1



## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3d9a87b84988`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.