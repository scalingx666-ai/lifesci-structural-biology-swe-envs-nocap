# Issue

**Title:** Fix failing build (test_coulomb_direct_octions)

## Description

I increased the swap size in order to avoid out-of-memory error 137.
Also, I removed 96 as a parameter to energy.coulomb_direct_neighbor_list because this function doesn't take grid_points as an argument. 96 was given to species, which is not relevant in this test. I also set fractional_coordinates to True as is done .
I also added the use of a predefined key when adding randomness to R in tpu_test.py. Without this, one of the [tests](https://github.com/MarcBerneman/jax-md/actions/runs/6008952307/job/16297465762) failed at some point due to mere randomness.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b65c777b6f55`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.