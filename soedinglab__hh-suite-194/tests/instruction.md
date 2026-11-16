# Issue

**Title:** hhviterbialgorithm.cpp - fix ss_score_vec indexing

## Description

This pull request  issue.

simd_float * ss_score_vec is an alias for float * Viterbi::ss_score array. But use of ss_score_vec and ss_score is inconsistent in Viterbi::AlignWith... procedures: initialization of ss_score is performed from j=0 whereas ss_score_vec is indexed from j=1.
This leaves uninitialized the last positions of the array which results in occasionally wrong values of SS score in the last iteration of the inner loop (Vitrerbi + SS score = 1e+23) which in its turn causes either crash at the attempt to construct hit alignment or wrong hit outputs (huge score, zero E-value).

Unfortunately this error occurs only when several CPU cores are used and even then it's not 100% reproducible (depends on the heap memory layout which changes from run to run).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `34335d7a85f1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.