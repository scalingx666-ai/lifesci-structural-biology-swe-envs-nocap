# Issue

**Title:** Move to all torch nw_cuda implementation

## Description

Still uses numba.cuda.jit, but no longer requires device wrappers and CPU transfers! Numba understands torch GPU tensors, so they just work out of the box, so long as the tensor doesn't have "requires_grad" set, which you can temporarily unset for calculations by calling the "detach()" method.

The code should already be multi-gpu capable (if you submit multiple batches to different devices), since everything inherits the device of the input 'theta.' There are no sanity checks (i.e. A.device == theta.device).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1c16c4536eaf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.