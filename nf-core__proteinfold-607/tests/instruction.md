# Issue

**Title:** Fix Nextflow 26.04.1 warnings when using file() in globs and other small fixes

## Description

## Summary

* Replace file() with files() for glob patterns  in `prepare_*.nf` subworkflows to avoid deprecation warnings introduced in Nextflow `26.04.1` (`WARN: The file() function was called with a glob pattern that matched a collection of files -- use files() instead`).
* Update nf-schema to version `2.7.2`, fixes some issues introduced by the type casting in the last release (e.g. see ) 
* Remove non-existent `docker.pullStrategy` config option.
* Remove unused include statements in `boltz` workflow.
* Some formatting issues.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core pipelines lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `224a59f88a73`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.