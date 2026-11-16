# Issue

**Title:** Support RF2NA single-letter type tags safely

## Description

## Description

.

ROSETTAFOLD2NA FASTA parsing now accepts single-letter molecule codes when provided via header tags, e.g. `type=P/R/D/S` (also `entity=`, `molecule=`, `mol=`), in addition to existing long forms (`type=protein`, `type=rna`, `type=double_dna`, `type=single_dna`).  
Single-letter aliases are only used for explicit tags and are excluded from the generic header word-scan to avoid accidental matches.

Changed: `bin/fasta_to_rosettafold.py`

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [ ] If you've fixed a bug or added code that should be tested, add tests!
- [ ] If you've added a new tool - have you followed the pipeline conventions in the [contribution docs](https://github.com/nf-core/proteinfold/tree/master/.github/CONTRIBUTING.md)
- [ ] If necessary, also make a PR on the nf-core/proteinfold _branch_ on the [nf-core/test-datasets](https://github.com/nf-core/test-datasets) repository.
- [ ] Make sure your code lints (`nf-core lint`).
- [ ] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [ ] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [ ] Usage Documentation in `docs/usage.md` is updated.
- [ ] Output Documentation in `docs/output.md` is updated.
- [ ] `CHANGELOG.md` is updated.
- [ ] `README.md` is updated (including new tool citations and authors/contributors).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2f1e2fe944a3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.