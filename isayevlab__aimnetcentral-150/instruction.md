# Issue

**Title:** fix(calculator): size batched all-pairs Coulomb list by the largest molecule

## Description

.

## Problem

With `mol_idx` (a flat batch of many molecules, for example via `AIMNet2TorchSim`) and the default gas-phase Coulomb (`simple`, infinite cutoff), `make_nbmat` sizes the long-range and Coulomb neighbor buffer by the batch's total atom count:

```python
if self._coulomb_cutoff == float("inf"):
    self._nblist_lr.max_neighbors = N        # calculator.py:2064
...
    self._nblist_coulomb.max_neighbors = N   # calculator.py:2085
```

`neighbor_list(batch_idx=...)` only pairs atoms within one molecule. Even so, the matrix is allocated as `N × N` int32 before it is trimmed, so peak forward memory grows with the square of the batch size.

Forward peak memory for `aimnet2` on mixed organic sets (mean 31–47 atoms per molecule; Quadro RTX 6000, torch 2.13 cu126, warp 1.17.0, nvalchemiops 0.5.0):

| Total atoms | 10k | 20k | 40k | 60k |
| --- | --- | --- | --- | --- |
| main | 0.9 GB | 1.7 GB | 6.4 GB | 14.4 GB (≈ 4 B × N²) |
| this PR | 0.9 GB | 1.7 GB | 3.4 GB | 5.2 GB |

At equal total atoms, peak memory was the same across three datasets whose edges per atom range from 22 to 30, so the buffer depends only on N.

This matters for geometry optimization with torch-sim's autobatcher, which fills batches up to the memory limit. Optimizers with extra state, such as L-BFGS history, then run out of memory. In our tests this happened on 29k-structure sets and on sets that include 400-atom molecules; with this change all of those cases pass.

## Change

In a flat batch, `mol_flatten` already computes `_max_mol_size`, the largest molecule. Every atom can only pair within its own molecule, so that value bounds the row width. Reusing it adds no extra device sync:

```python
self._nblist_lr.max_neighbors = N if cell is not None else self._max_mol_size
```

Periodic inputs keep `N`.

## Why the current sizing doesn't seem to be needed

- **Single molecules:** `_max_mol_size == N`, so the behaviour is unchanged.
- **Overflow safety:** a row has at most `n_mol - 1` partners. `AdaptiveNeighborList` also still grows the buffer if it ever overflows.
- **D3 coordination numbers,** which share this list, need every intramolecular pair. All of them are kept.
- **Downstream shape assumptions:** the list is already trimmed to the actual maximum after every call, so no consumer relies on `N` columns.
- **CUDA graphs and static caching:** `CUDAGraphCache` falls back for `mol_idx` input, and `_max_mol_size` is already part of the static cache key.
- **Periodic cells:** with a cell, image neighbours could exceed a molecule's size, so this case is deliberately left unchanged.

## Validation

- **Energies and forces:** unchanged to float32 noise on a 10k-atom mixed batch (max |ΔE| 1e-5 eV, max |ΔF| 5e-6 eV/Å) for `aimnet2` and `aimnet2-nse`.
- **New test:** `TestBatchCorrectness.test_flat_batch_coulomb_list_sized_by_largest_molecule` records the buffer width requested for 20 waters plus 1 methane in one flat batch. It fails on main (65 columns) and passes here (at most 5), and it checks batched against single energies.
- **Full suite:** identical results on main and on this branch, with torch 2.13.0+cu126, warp 1.17.0, nvalchemiops 0.5.0 and torch-sim 0.6.2. The upstream lock's warp 1.18 needs a newer driver than this node has.
  - GPU: 1,721 passed on main, and 1,722 here (the new test).
  - CPU: 1,399 passed on both.
  - The only failures are the same on both and environmental: 4 `test_cuda_graph_optional_triton` cases on GPU (the simulated import failure isn't exercised here), and 2 `test_warp_cuda_guard` cases on CPU, which need CUDA.
- **Lint:** ruff 0.15.0 check and format pass. CHANGELOG has an `[Unreleased]` → Fixed entry.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2c68fe4eeae7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.