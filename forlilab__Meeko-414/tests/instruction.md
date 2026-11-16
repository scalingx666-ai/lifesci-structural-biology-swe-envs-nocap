# Issue

**Title:** Rename allow bad res

## Description

This PR renames arg --allow_bad_res to --delete_bad_res in mk_prepare_receptor.py. The old option is still available (but suppressed in argparse help message) to avoid breaking existing shell scripts that wrap mk_prepare_receptor.py

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4e2cb397f32a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.