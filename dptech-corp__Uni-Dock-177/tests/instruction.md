# Issue

**Title:** Fix SIGSEGV crash with large box sizes

## Description

## Summary

- : UniDock crashes with SIGSEGV when docking large ligands (78+ atoms) with large box sizes (40×40×40 Å or larger).

**Root cause**: With the default grid spacing of 0.375 Å, a 40 Å box produces 108 grid points per axis (108³ = 1,259,712 total), which overflows the fixed-size GPU buffer `MAX_NUM_OF_GRID_POINT` (512,000 = 80³). The existing `assert()` guards only fire in debug builds; in release builds, `memcpy` silently overflows `grid_cuda_t::m_data[512000]`, corrupting adjacent memory → SIGSEGV.

**Fix**: Rather than increasing `MAX_NUM_OF_GRID_POINT` (which would increase GPU memory usage for all users), this PR adds proper runtime bounds checks that catch the overflow early and print a clear error message guiding users to either reduce box size / increase `--spacing`, or increase `MAX_NUM_OF_GRID_POINT` in `cuda/kernel.h` and recompile if they have sufficient GPU memory.

### Changes

- **`unidock/src/lib/vina.cpp`**: Add early validation in `compute_vina_maps()` that checks grid dimensions against GPU buffer limits before any GPU code runs.
- **`unidock/src/cuda/monte_carlo.cu`**: Replace all debug-only `assert()` checks (12 call sites) with a runtime `check_grid_dims()` function that throws `std::runtime_error` with descriptive messages in both debug and release builds.

### Example error output

```
ERROR: Total grid points (1259712) exceeds GPU buffer limit (MAX_NUM_OF_GRID_POINT=512000).
       Reduce box size or increase --spacing.
       If you have enough GPU memory, increase MAX_NUM_OF_GRID_POINT
       in cuda/kernel.h and recompile.
```

## Test plan

- [ ] Build with CUDA and verify compilation
- [ ] Run with 25×25×25 Å box + 78-atom ligand → should succeed as before
- [ ] Run with 40×40×40 Å box + 78-atom ligand → should get clear error instead of SIGSEGV
- [ ] Run with 40×40×40 Å box + 9-atom ligand → should get clear error instead of silent corruption

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c0aba05e6720`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.