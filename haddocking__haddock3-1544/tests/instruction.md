# Issue

**Title:** Fixed the issue with param/top files for ligand ensembles - Issue #1540

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

Corrected `__init__.py` in the `topoaa` modules so that the PRODRG generated ligand param/top files are properly written to the `io.json` file when `autotoppar=true` and an ensemble of ligands is provided.

## Related Issue

#1540

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `39c602eddfcb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.