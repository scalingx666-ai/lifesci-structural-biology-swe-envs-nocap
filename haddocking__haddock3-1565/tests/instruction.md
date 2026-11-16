# Issue

**Title:** Added change related to ace-cys cyclisation

## Description

## Checklist

- [X] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  
When a cyclic ACE-CYS bond is detected, no cyclic peptide bond should be possible
- modified the topoaa module to first check for ace-cys bonds and if detected avoids creating another cyclic peptide bond
- modified the test_topoaa.py test and replaced the ace-cys peptide PDB file to check that the cyclic peptide bond is not formed even with a large cutoff

## Related Issue

#1564

## Additional Info

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `892d9133012c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.