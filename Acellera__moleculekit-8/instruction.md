# Issue

**Title:** Fix the first import try to htmd.config

## Description

I guess this was the original intention with the try-except, but got messed up in mass-refactoring. Without this fix, HTMD is not working with nglview through `htmd.config`, only through `moleculekit.config` and using `Molecule.view(viewer='webgl')`.

I label as a bug here, even though the bug is only in HTMD. This is somehow urgent and after it's released, should trigger a new HTMD release as well.

N.B. I question myself about the maintainability of these configuration functions cross-packages

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ad36afe9d20d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.