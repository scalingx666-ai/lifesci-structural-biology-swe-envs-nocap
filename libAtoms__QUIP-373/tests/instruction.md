# Issue

**Title:** Add random seeds to final output (verbose)

## Description

All MPI processes will write their seeds if verbosity is VERBOSE (skipped otherwise). Should it be higher?

Did not use the setter routine for `%mpi_all_inoutput` as I needed the value for reset anyway. Could be changed by adding a getter routine. (Or a function that returns the old value.)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `08f464fe7e33`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.