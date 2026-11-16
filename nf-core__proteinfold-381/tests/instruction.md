# Issue

**Title:** Bugfix: avoids changing alphafold2_model_preset

## Description

- Replace in-place mutation of alphafold2_model_preset with extra_dbs variable in run_alphafold2_msa and run_alphafold2 modules.
- This prevents downstream errors on retries and ensures the preset value remains unchanged.
- Fix for issue 

<!--
# nf-core/proteinfold pull request

Many thanks for contributing to nf-core/proteinfold!

Please fill in the appropriate checklist below (delete whatever is not relevant).
These are the most common things requested on pull requests (PRs).

Remember that PRs should be made against the dev branch, unless you're preparing a pipeline release.

Learn more about contributing: [CONTRIBUTING.md](https://github.com/nf-core/proteinfold/tree/master/.github/CONTRIBUTING.md)
-->

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f0b336da848f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.