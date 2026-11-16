# Issue

**Title:** fix caprieval hetatm use

## Description

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [ ] Does not break licensing
- [ ] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

This PR solves the issue when using HETATM coordinates in `caprieval`.
Previous implementation was not performing the extraction of HETATM residues during the alignment.

## Related Issue

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `005e2694f447`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.