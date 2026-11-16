# Issue

**Title:** Updated images for splitting ColabFold

## Description

- mmseqs_colabfoldsearch and colabfold_batch now have separate Dockerfiles
- The mmseqs_colabfoldsearch image is now much slimmer, useful when pulling for non colabfold_batch modes e.g. Boltz
- The colabfold_batch image size has also been significantly reduced
- ColabFold pinned to commit e8ebd9a for reproducibility
- CUDA upgraded to 12.9.1 with JAX 0.5.3 GPU support

ColabFold mini databases for testing are [available here.](https://drive.google.com/file/d/10Mjt2qF1besqa7KCxRXF5YZ6nZAzt1XF/)
Prebuilt images are available at `ghcr.io/jscgh/proteinfold_colabfold:dev` and `ghcr.io/jscgh/proteinfold_mmseqs_colabfoldsearch:dev`

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8760a1c3da6b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.