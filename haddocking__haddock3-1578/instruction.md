# Issue

**Title:** Adding support of serine O-glycosylation - issue #1577

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [X] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

- updated bondglycans.cns in topoaa to detect O-glycosylated proteins
- added missing parameters for protein force-field
- added linkage patches to carbohydrates.top
- added test

## Related Issue

#1577

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a9bbba5b265e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.