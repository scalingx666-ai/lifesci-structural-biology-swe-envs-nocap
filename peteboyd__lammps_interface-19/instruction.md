# Issue

**Title:** install lammps-interface script with pip

## Description

This PR let's `pip install -e .` automatically add a `lammps-interface` script to the `PATH` so you no longer need to do that manually.

Having both a file called `lammps_interface.py` and a folder `lammps_interface` is problematic since it can confuse python (`from lammps_interface import ...` becomes ambiguous).
I've renamed it to `lammps-interface` with a dash since this seems to be more common in scripts; also, it would probably be the name of the package if we decide to put it on pypi (i.e. `pip install lammps-interface`)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6249ffe538dd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.