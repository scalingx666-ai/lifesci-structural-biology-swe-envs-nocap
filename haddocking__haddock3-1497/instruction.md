# Issue

**Title:** Added check for coordinates - related to issue #1350

## Description

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Added check for coordinates validity before writing the final PDB file (as done in other modules).
Avoids in that way pdb files with `**********` in their coordinates that cause subsequent modules to fail.

## Related Issue

#1350

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `475a3dafba7d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.