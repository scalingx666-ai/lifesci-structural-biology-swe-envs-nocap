# Issue

**Title:** add missing `libpdb.sanitize` in `autotoppar` elif logic

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [x] Tests added for the new code
- [x] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [x] Does not break licensing
- [x] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  
<!-- Describe what changes were made to the code, what was added, removed, etc. -->

Adds a missing `libpdb.sanitize` I forgot to add in the `elif` tree of `autoppar`. Great catch @amjjbonvin (:

## Related Issue
<!-- If this PR is related to an issue, please link it here -->
<!-- If this PR is related to the haddock3 user manual, please link the PR here -->

#1531

## Additional Info
<!-- Any additional information that might be helpful, if applicable -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `eae80aa61300`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.