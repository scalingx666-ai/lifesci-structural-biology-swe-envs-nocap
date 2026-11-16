# Issue

**Title:** Build LR neighbor list for unidentified embedded-LR models

## Description

.

**Root cause:** `AIMNet2Calculator.__init__` explicitly handles the "embedded LR present, modules unknown" metadata shape (`has_embedded_lr: true` with no `has_embedded_d3ts`, no `d3_params`, `coulomb_mode: none`) — it sets `self.lr = True` and resolves an all-pairs `cutoff_lr`, commenting that unknown legacy LR modules need all pairs. But `_update_lr_nblists()` derives neighbor-list need only from `has_dftd3`/`has_coulomb`, both False in that shape, so all three LR lists ended up `None`. `make_nbmat` then built only the short-range matrix, and any flattened (mode-1) evaluation raised `KeyError: nbmat_lr` inside the embedded module. Mode 0 needs no nbmat, which is why the failure tracked `nb_threshold` exactly (119 OK / 125 fail on CUDA); the same models also failed at any size on CPU, under PBC, and for Hessians.

**Fix:** when `self.lr` is set but neither dispersion nor Coulomb was identified, build the shared LR list from the constructor's already-resolved `cutoff_lr` (all-pairs when infinite) instead of returning all-None.

**Verification:** new regression test reproduces the exact metadata shape and asserts both the neighbor-list construction and that `make_nbmat` delivers `nbmat_lr`/`nbmat_dftd3` on the flattened path (RED on main, GREEN here). End-to-end check against a real development solvation artifact with the failing metadata shape: N=130 previously `KeyError: nbmat_lr`, now computes with energy matching the healthy-metadata run. Calculator+model suites: 122 passed. `make check` clean.

Note: on current main, a v2 `.pt` artifact with D3TS in its YAML but no `has_embedded_d3ts` flag is rejected at load by the #117 consistency check, so this fix primarily covers legacy-transport and unknown-embedded-LR metadata — the case the constructor already anticipated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b1099310369b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.