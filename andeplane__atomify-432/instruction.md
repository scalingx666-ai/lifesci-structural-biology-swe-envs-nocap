# Issue

**Title:** Label chart axes with LAMMPS units

## Description

Charts now label time, pressure, temperature, energy, RDF distance, MSD, and VACF using the active LAMMPS unit system reported at runtime. This supports included scripts and restart inputs without guessing from the top-level source. Labels are stored with the existing saved analysis data.

Selected-atom measurements use the same length units, and their plots correctly label the horizontal axis as Timestep. Custom variables/fixes identify their units as user-defined; unavailable metadata stays explicitly in simulation units.

.

Validation: typecheck, 478 unit tests, production build, and two real-engine browser tests using included unit settings (real: fs/atm; metal: ps/bar). Unit mappings follow the [LAMMPS units reference](https://docs.lammps.org/units.html), including electron units' distinct velocity time scale.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aecf2aca9c3b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.