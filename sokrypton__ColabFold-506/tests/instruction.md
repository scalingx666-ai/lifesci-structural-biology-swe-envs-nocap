# Issue

**Title:** Use locally installed pdb mmcif database for `--templates`

## Description

I'd like to use locally installed pdb mmcif database to run LocalColabFold without Internet connection completely.
I've added two args, `--pdb-hit-file` and `--local-pdb-path` to get templates written in the pdb list (e.g. `pdb70.m8`) from the local mmcif database.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b54ef163bede`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.