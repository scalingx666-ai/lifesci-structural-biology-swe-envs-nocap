# Issue

**Title:** Fix travis

## Description

this fixes the travis build [see here](https://travis-ci.org/ltalirz/lammps_interface/builds/563230712?utm_source=github_status&utm_medium=notification)

@peteboyd I noticed that the badge in the README was actually pointing to the travis account of someone else - this is fixed here.
In order to enable travis on your repository:
 * register for an account on travis-ci.org
 * flip the switch for this repository 
That's all

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dae4e455dde4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.