# Issue

**Title:** Add possibility to run mdref and mdscoring without solvent

## Description

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Add possibility to run `mdref` and `mdscoring` without solvent:
- added new possible string `none` in the selection of potential solvents

## Related Issue

#1512 

## Additional Info
<!-- Any additional information that might be helpful, if applicable -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `856c5d55e807`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.