# Issue

**Title:** [WIP] Fix memory leak when initializing GAP and vDW

## Description

Finalise `parse_cur_data` after xml parsing in `IPModel_GAP`

Do same for `IPModel_vdW`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `72aaf3fbc940`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.