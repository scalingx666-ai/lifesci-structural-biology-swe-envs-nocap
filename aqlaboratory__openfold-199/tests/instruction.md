# Issue

**Title:** Minor optimizations & fixes to support ESMFold

## Description

Hi OpenFold team! Thanks for your great implementation, here are some suggestions to the codebase to support upcoming ESMFold release:

1. Constant tensors like default_frames, group_idx, atom_mask and lit_positions in StructureModule are lazily initialized as buffers to allow for flawless CPU<->GPU model conversion;
2. Vectorized ops for row_mul and row_vec_mul + disable mixed precision for them, as precision loss may occur;
3. Constant quaternions are cached to not be recreated on each call.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e56b59761186`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.