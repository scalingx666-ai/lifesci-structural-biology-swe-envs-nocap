# Issue

**Title:** Speed up `get_component()` with `res_name`

## Description

`get_component(..., res_name=...)` selects the rows of the requested component via a boolean mask. The internal `_filter()` applied this boolean mask to every column separately, i.e. it scanned the full mask ~30 times. For the CCD (`chem_comp_atom`: 2.5M rows, `chem_comp_bond`: 2.6M rows) this dominated the runtime of `get_component()` and hence also of the (uncached) `biotite.structure.info.residue()`.

**Fix:** in `_filter()` convert a boolean mask once into indices via `np.nonzero()`.

| Input | before | after | speedup |
|---|---|---|---|
| `get_component(get_ccd(), res_name="ALA")` | 25.1 ms | 4.4 ms | 5.7x |
| `get_component(get_ccd(), res_name="HEM")` | 25.3 ms | 4.4 ms | 5.8x |
| `info.residue("HEM")` (uncached) | 25.5 ms | 4.5 ms | 5.7x |
| `get_structure(4zxb.bcif, model=1, altloc="occupancy", include_bonds=True)` (other `_filter()` user, dense mask) | 8.4 ms | 8.7 ms | ~1x (noise) |

Verified that `get_component()` results (annotations, coordinates, bonds) are identical to before for 305 CCD components (300 random + some common ones).

Tests: `pytest tests/structure/io/test_pdbx.py tests/structure/test_info.py` pass.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.