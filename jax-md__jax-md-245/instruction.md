# Issue

**Title:** Add support for auxiliary data returned by energy/force function

## Description

This PR adds support for auxiliary data returned by energy/force function. 
It updates quantity.canonicalize_force function to include auxiliary data as it is provided by the energy/force function. If energy/force function does not return auxiliary data, it just returns forces and None as auxiliary data. 

It is inferred whether the provided energy/force function has auxiliary data or not (using jax.eval_shape) and  a new function constructed accordingly.

The simulation states (in simulate.py) updated to include "aux" as member variable. 

I can include tests if this design is okay.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `024a62987204`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.