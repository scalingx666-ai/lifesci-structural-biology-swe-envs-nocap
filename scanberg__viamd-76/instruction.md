# Issue

**Title:** Veloxchem improvements to Spectra/Summary/Dataset

## Description

1. Adds indicator points for each peak, showing all peak positions even if 0
2. Adds a draft for vibration mode plotting and 3D animation (turned off in this merge)
3. Fixes to bar hover functionality
4. Adds select/deselect from plot bars UI
5. Adds more advanced summary window, with geometry table where you can select atoms
6. Adds selection through the dataset UI
7. Adds csv/xvg export

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1f80bc81c159`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.