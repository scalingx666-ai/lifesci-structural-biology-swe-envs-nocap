# Issue

**Title:** Use updated FoX

## Description

Update src/fox submodule to use version of forked repo that includes upstream (andreww) changes.  

Initially libAtoms/fox/update_to_latest, but if everything works, presumably libAtoms/fox will merge into master branch, and then will change QUIP's submodule to libAtoms/fox master branch as well.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `14c8ab91f359`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.