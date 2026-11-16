# Issue

**Title:** Move Dockerfiles to its corresponding module

## Description

Move  the `Dockefile`s to the corresponding module as this is the convention for nf-core modules .

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [ ] If necessary, also make a PR on the nf-core/proteinfold _branch_ on the [nf-core/test-datasets](https://github.com/nf-core/test-datasets) repository.
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d9c12e26c59d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.