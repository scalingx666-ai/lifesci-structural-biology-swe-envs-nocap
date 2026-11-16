# Issue

**Title:** Fix HF3 dbs and max_template_date

## Description

Fixes the error from  

- Handling of `mmcif_files` and `obsolete.dat` has been modified to match AF2
- Removes superfluous helixfold3_ from `--max_template_date` in `modules_helixfold3.config`
- `max_template_date` values in `nextflow.config` updated to ensure runs default to using the latest available

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
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] Usage Documentation in `docs/usage.md` is updated.
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `087025a218d3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.