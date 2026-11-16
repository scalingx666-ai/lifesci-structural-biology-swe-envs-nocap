# Issue

**Title:** change `import tqdm` statement from `from tqdm` to `from tqdm.autonotebook`

## Description

This allows for automatic detection of notebook / console usage, to prevent the output formatting of progress bars being messed up when using graphein functions within a jupyter notebook. 


(Import statement using `tqdm.autonotebook` was already in one file `scripts/download_expasy_protein_scales.py` ) 


Haven't tested `.ipynb` files with `pytest` yet.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `94da785854c4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.