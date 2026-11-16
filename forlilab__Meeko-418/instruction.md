# Issue

**Title:** feat: arg only_hs_with_coords exports mols with only Hs present in docking

## Description

Dockings with Vina and AD4 scoring functions do not use non-polar Hs (atom type H). When exporting poses with `mk_export.py` or `RDKitMolCreate`, RDKit adds non-polar hydrogens. The new option (which is not enabled by default) exports poses without Hs that were absent in docking. This PR also deletes an obsolete function that is never used.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5a392ec7a698`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.