# Issue

**Title:** Fix for issue in download_mgnify.sh

## Description

While running `download_alphafold_dbs.sh`, the gunzip command in `download_mgnify.sh` failed for me. Due to a simple path problem.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `592bcdd9a288`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.