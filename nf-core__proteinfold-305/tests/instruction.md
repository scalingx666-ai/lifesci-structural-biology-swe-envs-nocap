# Issue

**Title:** Stop RFAA and HF3 symlinking scripts into workdir

## Description

- Uses direct path instead of symlinking
    _- An alternative would be to add a `chmod +x` line in the Dockerfile so that they can be run directly from PATH_


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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `88783b79a47d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.