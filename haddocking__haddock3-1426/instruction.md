# Issue

**Title:** refactor `libpdb.sanitize`

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [x] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [x] Does not break licensing
- [x] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  
<!-- Describe what changes were made to the code, what was added, removed, etc. -->

This PR refactors `libpdb.sanitize` to not edit the global variable `_to_keep` in order to avoid testing artefacts

## Related Issue
<!-- If this PR is related to an issue, please link it here -->
<!-- If this PR is related to the haddock3 user manual, please link the PR here -->

#1425

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `daffcaede720`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.