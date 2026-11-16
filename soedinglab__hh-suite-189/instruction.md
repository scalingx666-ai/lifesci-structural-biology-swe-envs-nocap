# Issue

**Title:** Fixing SIMD bitshift errors on PowerPC

## Description

Fixing incorrect bitshifting instructions on PowerPC architectures. The program expects `simdi_shiftx` to shift by bytes while `vec_slx` shifts the whole vector by bits. `vec_sxo` is used instead, as far as I know the least significant 3 bits are ignored so the input must be shifted. `simdi32_sxli` is expected to shift within 32 bit lanes but `vec slx` shifts the whole vector. `vec_sx` is used instead with an unsigned integer argument.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `69fd708be1bd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.