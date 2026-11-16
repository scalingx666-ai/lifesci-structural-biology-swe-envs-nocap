# Issue

**Title:** Nam fixes

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Fixed the net charge of NAM to be 0
Removed redundant code from bondglycans.cns

## Related Issue

#1586

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5756661574db`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.