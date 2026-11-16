# Issue

**Title:** Fix ScaLAPACK not linked in MPI builds with meson

## Description

## Summary

- Add missing `mpi_dep` to `gap_fit_lib` dependencies so `libgap_fit.so` records ScaLAPACK/MPI as needed libraries. On Linux where `--as-needed` is the default linker behaviour, these were being silently dropped.
- Add `find_library('scalapack')` fallback for ScaLAPACK detection, matching the existing OpenBLAS pattern. Environments with broken or missing pkg-config files (conda, HPC modules) now fall back to a direct library search.

## Test plan

- [x] MPI build (`meson setup builddir -Dmpi=true`) configures and compiles successfully
- [x] Non-MPI build still works
- [x] Verified `libgap_fit` link command in `build.ninja` now includes ScaLAPACK and MPI flags
- [ ] Linux: `ldd builddir/src/Programs/gap_fit | grep scalapack` should show the library

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `056de31d64b6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.