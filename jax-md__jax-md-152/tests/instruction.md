# Issue

**Title:** Set initial configuration to have null total momentum

## Description

In the current version of jax-md, the functions that generate the initial state for the _nve_, _nvt_nose_hoover_ and _npt_nose_hoover_ are initialised into states with zero total velocity instead if states with zero total momentum. This is not, in my experience with MD, the expected result of an initial state should have null total momentum, as it is one of the conserved magnitudes of the system. Having non-zero total momentum leads wrong calculations of the temperature and complicates the analysis o the resulting trajectory.

I didn't change the behaviour of _nvt_langevin_ as it clearly states that the option is center_velocities and I am not used to these kind of simulations. However, it may present the same errors in the temperature calculation than the other collectives.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `41412df1a504`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.