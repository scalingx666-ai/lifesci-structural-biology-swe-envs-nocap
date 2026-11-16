# Issue

**Title:** Yn patch0411

## Description

# Features
1. Conformers will be save as `sdf` file when `save_sdf = True` (`Default: True`). #334 
2. The `sdf` file can now be loaded directly, and the conformer information in it can be used.

# Style
Update with `black --skip-string-normalization`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7092bf4665e8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.