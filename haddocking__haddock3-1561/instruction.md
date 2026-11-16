# Issue

**Title:** Fix integration tests overwriting golden data files

## Description

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Tests for cyclic ACE-CYS peptide and ensemble ligand inputs passed the golden data path directly to topoaa, which sanitizes input files in-place. For single-model PDBs, sanitize received the original path and modified it. Now each test copies the relevant golden data file into the module's temp working directory before use.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `892d9133012c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.