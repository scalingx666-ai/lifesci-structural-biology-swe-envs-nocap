# Issue

**Title:** Fix intermittent SIGSEGV from NaN/non-unit axis in angle_to_quaternion

## Description

## Summary
- : Intermittent "angle_to_quaternion axis.norm=-nan, failed" crash

**Root cause**: `angle_to_quaternion(axis, angle)` assumes the axis is a unit vector, but floating-point precision drift from GPU matrix-vector multiplication (segment transformations in tree.h) can produce non-unit or NaN axes. The existing `assert()` is stripped in release builds, leaving no protection.

**Fix**: Add robust handling:
- NaN or zero-length axis → return identity quaternion (no rotation)
- Near-unit axis → renormalize before use
- Well-behaved axis → unchanged behavior

This makes the function resilient to floating-point drift without changing docking results for well-behaved inputs.

## Test plan
- [ ] Build with CUDA and verify compilation
- [ ] Run large-scale docking (15k+ ligands) → should not crash with quaternion error
- [ ] Verify docking results are unchanged for normal inputs

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c0aba05e6720`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.