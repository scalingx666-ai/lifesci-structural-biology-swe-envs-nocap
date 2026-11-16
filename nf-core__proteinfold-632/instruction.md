# Issue

**Title:** Add GPU actions workflow and RUN_BOLTZ module test.

## Description

- Added a gpu github actions workflow based on the example in nf-core/rnaseq.
  - Chose g5 instance instead of g4dn for bfloat16 compatibility.
  - ~~Temporarily requires manual trigger until~~ confirming use of GPU runners is OK (@JoseEspinosa).
- Added a RUN_BOLTZ gpu module test.
  - GPU inference likely not 100% deterministic even with seed set so only checked for success (not snapshot).
  - Temporarily disabled due to not engaging GPU on runners.
- Added a COLABFOLD_BATCH gpu module test.
- Temporarily pointing at my test-data repo (similar to #631).

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] If you've fixed a bug or added code that should be tested, add tests!
- [x] If necessary, also make a PR on the nf-core/proteinfold _branch_ on the [nf-core/test-datasets](https://github.com/nf-core/test-datasets) repository.
- [x] Make sure your code lints (`nf-core pipelines lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1d75b7fd7507`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.