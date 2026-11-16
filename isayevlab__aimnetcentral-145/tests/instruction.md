# Issue

**Title:** fix(calculator): make packed-layout energies reproducible in deterministic mode

## Description

Second step for #140, following #142.

## Change

- **Canonical neighbor rows.** With `deterministic=True`, `make_nbmat` sorts every neighbor list it builds by neighbor index, then periodic shift, with fill slots last and their shifts zeroed (`_add_padding_row(..., sort=True)`). The CUDA neighbor-list kernels assign slots with atomics, so without this the summation order downstream changes from run to run. Periodic images repeat an index, which is why the shift breaks ties. A caller-supplied `nbmat` is used as given.
- **Warn, don't set.** Bit-identical packed energies also need `torch.use_deterministic_algorithms(True)`. The calculator does not turn that on itself: it is process-wide, and `CUBLAS_WORKSPACE_CONFIG` only takes effect before cuBLAS starts. Instead it warns once per instance when the packed layout runs on CUDA without it. There is no warning on the dense layout, on CPU, or with `deterministic=False`.
- `deterministic=False` is unchanged: no sort and no warning.

## Measurements (L40S, torch 2.13, Warp 1.15, nvalchemiops 0.4.1)

Packed layout, `deterministic=True`, 20 repeats; the table shows how many of the 19 repeats matched the first energy bit for bit:

| | 130-atom gas cluster | 100-atom crystal | 56-atom crystal |
|---|---|---|---|
| neither fix | 0/19 | 0/19 | 0/19 |
| sort only | 0/19 | 0/19 | 2/19 |
| torch flag only | 10/19 | 0/19 | 0/19 |
| sort + torch flag | 19/19 | 19/19 | 19/19 |

- With the flag, torch's only nondeterminism notice is the cuBLAS workspace one. The documented strict recipe (`CUBLAS_WORKSPACE_CONFIG=:4096:8` plus `use_deterministic_algorithms(True)`) runs without errors.
- **Cost:** the sort adds about 1% to a gas-phase energy+forces call and 3–6% under PBC.

## Tests

- CPU, default suite: the sort makes rows order-independent (gas, and periodic with a repeated index and junk fill-slot shifts); `sort=False` keeps slot order. Each test runs in well under 2 s.
- GPU:
  - `test_packed_layout_energy_bitwise_reproducible` is no longer an xfail and runs under the torch flag;
  - new periodic energy test on the spiro crystal;
  - four warning tests (packed and flag off warns once; flag on, dense, and `deterministic=False` stay quiet).
- `test_packed_layout_forces_bitwise_reproducible` stays a strict xfail. It is the target of the next PR: a gather-based ConvSV backward, plus CSR-based `mol_sum` and `index_select` reductions.

Locally:
- default suite: 997 passed;
- `tests/test_calculator_gpu.py` and `tests/test_neighbors.py`: 45 passed and 1 xfailed;
- deterministic and periodic tests across `test_dftd3`, `test_calculator` and `test_pbc`: 68 passed.

ruff is clean, and mypy reports no new errors.

## Not addressed

The periodic sort does four stable argsorts. With `coulomb_cutoff=inf` the long-range list is N×N, so very large periodic systems in deterministic mode carry N²-sized int64 temporaries. A single packed int64 key would cut that to one argsort if it turns out to matter.

Docs: the docstring, `docs/calculator.md` (with the recipe) and the CHANGELOG entry are updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c6592a162b6b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.