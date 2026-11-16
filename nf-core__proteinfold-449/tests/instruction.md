# Issue

**Title:** Add boltz_use_kernels parameter

## Description

This PR adds a new boltz_use_kernels parameter to enable/disable the use of optimized Triton-based CUDA kernels for Boltz inference.

## Notes

The parameter defaults to true to enable the optimized kernels by default, which improves performance on compatible GPUs. Users can set --boltz_use_kernels false to disable the custom kernels if they encounter compatibility issues.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `62c64dc7879f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.