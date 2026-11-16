# Issue

**Title:** Corrected various issues in the notebooks

## Description

## What does this PR do and why?

While generating a lite version of the notebook for use directly in a web browser with JupyterLite, some inconsistencies were identified in the antibody-antigen notebook:
 - wrong residue selection with pdb_tools  1:10 instead of 1:107 (no impact on the results as the notebook uses the PDBs provided under the pdbs directory of the downloaded data
 - wrong first active residue for the antibody in the active list and pre-generated restraints: 1 while it should be 31. Pre-calculated results for the run should be regenerated (not provided in GitHub).

Also visualisation problems were solved (those affected notebooks running in Safari, which Chrome was ok).

Pinned down the py3Dmol version (some recent updates seem to have caused the visualisation issues).

Further, visualisation was harmonised and issues fixed in all three notebooks.

The protein-DNA notebook was updated, adding a `dnascan` analysis bonus.

All associated data archives have been updated.

## How was this tested?

Making sure the notebooks still works fine.

## AI assistance

Claude actually identify the issues and was used to solve the visualisation issues.

## Checklist

- [ ] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

Issue #1697

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0f9230db47fc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.