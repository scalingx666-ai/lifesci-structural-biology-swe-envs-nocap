# Issue

**Title:** Lock version numbers for HelixFold3 image, fixes #389

## Description

Locks dependency version numbers in `environment.yml` and `Dockerfile` to prevent instability from upstream updates.
Addresses .

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a7318d1469f8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.