# Issue

**Title:** Fix CUDA error 700 when docking with flexible residues

## Description

## Summary

 — CUDA error 700 (`cudaErrorIllegalAddress`) when using `--flex` with `--gpu_batch`.

The CUDA kernel supports at most 1 flex torsion (`MAX_NUM_OF_FLEX_TORSION = 1`), but exceeding this limit crashed with an opaque CUDA error instead of a clear message. The crash had three root causes:

1. **Wrong Config grouping** (`main.cpp`): Ligand classification ignored receptor flex atoms/torsions. A combined model with 165 atoms was placed into SmallConfig (max 40), causing out-of-bounds GPU memory access → CUDA error 700.
2. **Dead assert** (`monte_carlo.cu`): `assert(m.num_other_pairs() == 0)` was compiled out by `NDEBUG` in Release builds, providing zero protection.
3. **Missing flex conf in results** (`vina.h`): `cuda_to_vina` didn't populate `c.flex`, so CPU-side pose refinement segfaulted on `model.set(c)`.

### Changes

| File | Change |
|------|--------|
| `main.cpp` | Fix grouping to include receptor flex atoms/torsions; add early exit with clear error when flex torsions exceed GPU kernel limit |
| `monte_carlo.cu` | Replace 4 dead asserts with comments noting the limitation |
| `vina.h` | Initialize flex conf from model before pose refinement |

### Behavior

| Scenario | Before | After |
|----------|--------|-------|
| 21 flex residues (51 torsions) | `CUDA error code=700 cudaErrorIllegalAddress` | Clean error: *"51 torsions, supports at most 1"* |
| 1 flex residue (1 torsion) | `CUDA error code=700` | Works correctly, docking completes |
| No flex | Works | Works (unchanged) |

## Test plan

- [x] Reproduced original CUDA error 700 with issue reporter's test files (2am9, 21 flex residues)
- [x] Verified fix produces clean error message for unsupported configs (EXIT=1, no crash)
- [x] Verified 1 flex residue (1 torsion) works end-to-end on GPU (SmallConfig, EXIT=0)
- [x] Verified normal non-flex docking is unchanged

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d6891ac7d294`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.