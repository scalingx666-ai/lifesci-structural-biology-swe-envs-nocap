# Issue

**Title:** Small compatibility fix with pymol 1.8.4.0

## Description

PLIP seems to work fine with pymol versions in v1.8.x branch up to 1.8.4.0. In this last version, it looks like something have changed, and now, a CmdException is raised when trying to call "cmd.get_model" on an empty selection. This breaks PLIP 1.3.2 visualization generation.

By applying this patch, "len(cmd.get_model(selection).atom)" is substituted by a "cmd.count_atoms(selection)", which seems to work fine and achieve the same that was intended with the other code.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `de73ec106170`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.