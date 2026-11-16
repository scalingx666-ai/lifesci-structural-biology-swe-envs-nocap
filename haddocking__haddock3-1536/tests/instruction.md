# Issue

**Title:** Exposes ACE-CYS cyclisation distance cutoff - Issue #1535

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [X] Tests added for the new code
- [ ] Documentation added for the code changes
- [X] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Exposes the `acecys_dist` parameter in the `topoaa` module to allow to control the distance cutoff used to detect ACE-CYS cyclisation.
Added an example under the peptide-cyclisation example directory

## Related Issue

#1535

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `58f394316959`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.