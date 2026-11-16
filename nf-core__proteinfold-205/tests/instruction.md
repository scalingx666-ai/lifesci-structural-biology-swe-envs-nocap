# Issue

**Title:** Update schema

## Description

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] If necessary, also make a PR on the nf-core/proteinfold _branch_ on the [nf-core/test-datasets](https://github.com/nf-core/test-datasets) repository.
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] Usage Documentation in `docs/usage.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bc823a142096`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.