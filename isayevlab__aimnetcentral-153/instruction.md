# Issue

**Title:** feat(train): build periodic neighbor lists in the loader for stress training

## Description

.

With `stress` in `data.y` and `cell` in `data.x`, `aimnet train` now builds the periodic neighbor lists itself, so stress training works with the built-in `SizeGroupedDataset` loader instead of needing a custom dataset.

## How it works

- `train.run` adds a collate step (`aimnet/train/neighbor_lists.py`, `PeriodicNeighborCollate`) to the train and validation loaders, only for stress runs where the dataset does not already list `nbmat*`/`shifts*` keys. Energy and forces training is unchanged and keeps dense batches.
- Each dense batch is packed into the calculator's mode-1 layout: real atoms, one trailing dummy atom owned by the last system, and `mol_idx`. Lists are built on CPU, inside the loader workers when `num_workers > 0`, with the calculator's own `AdaptiveNeighborList` and padding-row helper.
- The batch keeps the stored coordinates. Lists are built on wrapped copies, and each atom's image offset is folded into the shifts, so coordinate-dependent outputs such as dipoles and quadrupoles still match their labels.
- Cutoffs come from the model:
  - `nbmat`: the largest of the AEV cutoff, any short-range Coulomb `rc`, and `SRRep.rc`;
  - `nbmat_dftd3`: 15 Å for `D3TS`, the calculator default;
  - `nbmat_coulomb`: the Ewald/PME real-space cutoff for the batch, estimated the same way as in the model.
- Per-atom keys are packed from an explicit list (`coord`, `numbers`, `forces`, `charges`, `spin_charges`, `volumes`, plus a new `data.atom_keys` option). A key whose shape is ambiguous raises an error instead of being guessed.

## Also fixed

- The `train` extra now includes `tqdm`. `aimnet train` always attaches ignite's `ProgressBar`, which imports it, so a clean `aimnet[train]` install stopped with `ModuleNotFoundError` when training started. CI caught this on the new end-to-end test.

## Refused, with an explanation

These would give silently wrong stress:
- `LRCoulomb` with `method: simple`, which has no periodic form (this includes the stock `aimnet2.yaml`; switch it to `ewald` or `pme`);
- `LRCoulomb` with `method: dsf`, which gets no geometry derivative inside the model forward;
- a tabulated `DFTD3` module, which has no cell gradient (#132);
- any cell that is not periodic in all three directions, because training applies a full 3×3 strain.

`attach_stress_batch_check` stays as the safety net for custom datasets that supply their own lists.

## Validation

- **Stress matches `AIMNet2Calculator(..., stress=True)` (float32):** the stress difference is about 4e-6 of the stress scale for a short-range-only model and about 1e-5 for an Ewald model. Cells tested: triclinic, strongly skewed and left-handed cells, a 3 Å hexagonal cell, and cells smaller than twice the cutoff. Folding the shifts is exact in float64.
- **Training end to end** through `train.run` and the built-in loader: eager with Ewald and 2 workers, and compiled short-range.
- **Tests:**
  - new test file: 9 tests, about 2 s;
  - train, dataset and CLI tests: 121 passed;
  - default run: 1230 passed in about 50 s;
  - ruff is clean, and mypy is unchanged from `main`.
- **Not run:** multi-GPU DDP (needs two GPUs).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a42b7c08de7e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.