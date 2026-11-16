# Issue

**Title:** cosmetic fix in custom symmetry

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` is updated to incorporate new changes
- [x] Does not break licensing
- [x] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  
"noe class symm” was declared twice, removed 2nd declaration. 

## Related Issue
#1562 

## Additional Info
As an example I added a toy model which I use to work on stacking. Current stymmetry restraints are not enough for the stacking, but symmetry itself is functional (distances between selected atoms differ by no more than 0.1A).
I added it for ease of testing, but I don’t think it’s not worth keeping it for now.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2684e6b13fab`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.