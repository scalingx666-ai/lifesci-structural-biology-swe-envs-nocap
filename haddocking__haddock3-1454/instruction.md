# Issue

**Title:** remove deprecated `gdock`  sampling module

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

~- [ ] Tests added for the new code~ DOES NOT APPLY
- [x] Documentation added for the code changes
- [x] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual) 
  - 
- [x] `CHANGELOG.md` is updated to incorporate new changes
- [x] Does not break licensing
- [x] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  
<!-- Describe what changes were made to the code, what was added, removed, etc. -->

This PR removes the integration with `gdock`. A new version is slowly being prepared and once (if) it's finalized I can re-write the module: https://github.com/gdocking/gdock/releases/tag/v2.0.0-alpha.1

## Related Issue
<!-- If this PR is related to an issue, please link it here -->
<!-- If this PR is related to the haddock3 user manual, please link the PR here -->

#1453 

## Additional Info
<!-- Any additional information that might be helpful, if applicable -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a508f8a4fc48`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.