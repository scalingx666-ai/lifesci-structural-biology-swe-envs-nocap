# Issue

**Title:** fix(cuda): size grid buffer for the default 30 Å box (80³ → 81³)

## Description

## Summary

Bump the GPU grid buffer `MAX_NUM_OF_GRID_POINT` from **512,000 (80³)** to **531,441 (81³)** so the **default 30 Å box at 0.375 Å spacing fits without overflow**.

**Root cause (also behind #174 / #177):** grids are sized `(n_voxels+1)³` ([grid.cpp:26](../blob/main/unidock/src/lib/grid.cpp#L26)); a 30 Å / 0.375 box → `ceil(30/0.375)=80` → `81³ = 531,441` points, but the fixed GPU buffer was `80³ = 512,000`. The only guard was `assert()`, compiled out under `NDEBUG`, so **Release builds silently `memcpy` ~76 KB past `grid_cuda_t::m_data[]`**, corrupting adjacent grid slots.

Changes all 7 definitions (the `#define` + the 6 `Config` structs) to 531,441.

## Verified on a B200 (CUDA 12.8, sm_100) — full 736-system molecular docking

Current `main` (overflow) vs this fix, seed 123, same engine otherwise:

| metric | `main` (80³) | this PR (81³) |
|---|---|---|
| Astex hit-rate | 0.667 | **0.710** |
| CASF2016 hit-rate | 0.631 | **0.638** |
| PoseBuster hit-rate | 0.593 | **0.601** |
| **all 736** | **0.614** | **0.625** |

- **~20% of results change** — 148/736 systems shift >0.5 Å Top1 RMSD, **60 Top1 success flips** (both directions, up to 12.9 Å). Since the only change is the array size and same-seed docking is deterministic, this proves the overflow was **silently corrupting docking for ~1 in 5 systems at the default box size**. The 81³ buffer gives the correct (overflow-free) result; net hit-rate improves.
- **No speed cost** — VS throughput (D4/sigma2/NSP3/PPARG, up to 7,316-ligand batches) and MD per-system times are unchanged. `ig_cuda_t` is shared per run, so the buffer adds ~2.9 MB once (37 grids × 19,441 floats), not per-ligand.

## Scope / caveats

- Boxes **< 30 Å** (e.g. 25 Å → 67³) already fit and are **unaffected**. Boxes **≥ 30 Å** at 0.375 spacing previously overflowed and now compute correctly — so this **changes outputs** for those box sizes (that is the fix).
- This does **not** add a guard for boxes that still exceed 81³ (≥ ~31 Å). Recommend pairing with #177's runtime check, with its threshold updated from `512000` to `531441`, so even-larger boxes get a clear error instead of silently overflowing again.

Fixes the root cause of #174 (and unblocks a corrected #177).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ebde931a42b6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.