# Issue

**Title:** optimize the topology information calculation by changing nodes_iter2…

## Description

Dear pete,
I optimized the way to do the calculation of compute_min_img_distances() and compute_init_typing().
The computational efficiency for later has been considerably improved.

Cheers,
Kylin

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `51af69c041ed`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.