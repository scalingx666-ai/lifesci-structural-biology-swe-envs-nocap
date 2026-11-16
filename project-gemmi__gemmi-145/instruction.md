# Issue

**Title:** add Topo::ideal_chiral_abs_volume() and Topo::Chirality::calculate_z()

## Description

Since Restraints::chiral_abs_volume() does not work for link-related chirals, I added Topo::ideal_chiral_abs_volume() which uses take_bond() and take_angle().

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `46079af2a131`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.