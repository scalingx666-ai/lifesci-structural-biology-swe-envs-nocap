# Issue

**Title:** Dpstokes variable beta

## Description

This should definitely get squash-merged, sorry for the terrible commit history... I can also force rewrite it into fewer commits if you'd like! I didn't know of a better way to test beside pushing the code online so I could use it in libmobility, hence the dozen or so commits of me trying the same two things. 

This branch contains the changes to use different betas in each direction for DPStokes. Do we need to update any of the documentation for this change? Also, check out the new tests in [tests_dpstokes.py](https://github.com/stochasticHydroTools/libMobility/blob/dpstokes_nonsquare/tests/test_dpstokes.py) for tests of this functionality.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e4f9ae79ed84`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.