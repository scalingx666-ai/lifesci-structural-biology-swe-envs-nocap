# Issue

**Title:** Clean ESMFold outputs  |  --env flags for apptainer enginer

## Description

Tidies ESMFold outputs, since the module doesn't generate un-wanted intermediates:
- Publishing rules to match output layout from #454 
-  by passing flags in `conf/modules_esmfold.config` (to avoid cluttering `nextflow.config` earlier stated)
- removes  `ext.args = {params.use_gpu ? '' : '--cpu-only'}` as ESMFold is unjustifiable on a slow CPU execution, and future compatibility for unmaintained model will be harder as Compute Compatbility of cards changes

## PR checklist

- [X] This comment contains a description of changes (with reason).
- [X] Make sure your code lints (`nf-core lint`).
- [X] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb2ce2d0b5c9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.