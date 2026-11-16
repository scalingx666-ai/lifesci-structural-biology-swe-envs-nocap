# Issue

**Title:** Update fix_obsolete.py to avoid infinite loop

## Description

Updated fix_obsolete.py to handle recursive mappings in obsolete.dat to avoid infinite loop. Latest version of obsolete.dat recursively maps 8UJJ to 8UJJ.

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
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c8628b56ac2c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.