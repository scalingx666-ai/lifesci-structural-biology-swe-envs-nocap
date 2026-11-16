# Issue

**Title:** Exclude water from automatic flexibility definition in mdref/mdscoring

## Description

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Updated the automatic definition of flexible residues in `mdref/mdscoring` to exclude the solvent.

## Related Issue

#1551 

## Additional Info

Was not causing failures, but resulted in large parts of models being flexible while mainly the interface regions should be treated as fully flexible.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f3785f8340af`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.