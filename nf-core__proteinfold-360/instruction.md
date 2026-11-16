# Issue

**Title:** Update paths to some DBs to make them consistent with "PREPARE" subworkflows

## Description

Some DBs when they are downloaded from the links have specific names. Thus, in the correspoding modules they need to be named equally (and in the local DBs).
Add alphafold3 to logic to set the same parent path for all dbs

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1d278fd9ca91`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.