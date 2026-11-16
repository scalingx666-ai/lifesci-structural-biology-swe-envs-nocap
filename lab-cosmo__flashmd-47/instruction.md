# Issue

**Title:** Add support for flexible barostats in i-PI

## Description

`get_npt_stepper` only worked with isotropic (BZP) barostats, because `_qbaro` and `_pbaro` had the logic of `BaroBZP` baked in. An MTK barostat still passed the `NPTIntegrator` type check. `flexible` runs with `NPTIntegrator` and then silently produced wrong dynamics through broadcasting.

We can't call `BaroMTK.qcstep`/`pstep` directly. Similar to `BaroBZP`, they assume a plain velocity Verlet splitting in which the position propagation is interleaved with the barostat steps. FlashMD's splitting does the position propagation entirely inside the ML step, so the `sinh` drift term and the `pc·fc` force corrections have to be left out. These are the same two omissions the existing isotropic branch already makes compared to `BaroBZP`. Everything else follows `BaroMTK`: the matrix exponentials for the cell scaling, the full `np.triu` stress and the `kb*T*L` term for the cell momentum, and the `hmask`/`vol_constraint` projection with its `ethermo` bookkeeping.

The mode is determined automatically from `type(motion.barostat)` instead of being passed in, so it can't disagree with the input file, and unsupported barostats (SC-BZP, RGB, dummy) now raise instead of being mishandled.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3272061dff7c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.