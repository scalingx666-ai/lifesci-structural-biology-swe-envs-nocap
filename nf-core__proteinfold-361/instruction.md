# Issue

**Title:** Update PREPARE_HELIXFOLD3 and ping specific version on Dockerfile

## Description

Adds the capability of downloading `maxit` to `PREPARE_HELIXFOLD3`
Also updates the Dockerfile to ping a specific commit of the helixfold3 repo.



## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `59cbfdd9cd47`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.