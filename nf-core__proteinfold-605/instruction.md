# Issue

**Title:** Fix ColabFold database staging collision in MMSEQS_COLABFOLDSEARCH

## Description

* Stage colabfold_envdb and uniref30 into separate directories (db/ and uniref30/) to avoid file name collisions
* Symlink uniref30 files into db/ before running colabfold_search, with a warning printed to stderr for any skipped duplicate filenames

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core pipelines lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a6da4567be53`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.