# Issue

**Title:** Increased noe restraints array size in scoring modules - issue #1501

## Description

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Added the definition of the NOE restraint array size (nres=10000) to `restrain-ions.cns` in scoring modules emscoring and mdscoring

## Related Issue

#1501

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `be3b0eee66b4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.