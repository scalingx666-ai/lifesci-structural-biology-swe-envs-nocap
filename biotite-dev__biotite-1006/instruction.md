# Issue

**Title:** Speed up `set_structure()`

## Description

Two hotspots in `set_structure()`:

- `_determine_entity_id()` (used when the structure has no `entity_id` annotation) iterated over every atom in Python. Replaced by `np.unique(..., return_index=True, return_inverse=True)` and ranking the unique chain IDs by first appearance.
- `_set_intra_residue_bonds()` deduplicated `(comp_id, atom_id_1, atom_id_2)` triples with `np.unique(np.stack(...), axis=0)`, which is very slow for string arrays (sorting of void dtype). Replaced by a dict keyed on the triple, which directly yields the first indices in order of appearance.

`set_structure()` timings (atom array from `get_structure(..., model=1)`):

| Input | target | before | after | speedup |
|---|---|---|---|---|
| 4zxb, with bonds | `BinaryCIFFile` | 10.37 ms | 4.30 ms | 2.4x |
| 4zxb, no bonds | `BinaryCIFFile` | 2.51 ms | 0.42 ms | 6.0x |
| 1f2n, with bonds | `BinaryCIFFile` | 3.69 ms | 1.75 ms | 2.1x |
| 1f2n, no bonds | `BinaryCIFFile` | 0.95 ms | 0.20 ms | 4.8x |
| 1gya, with bonds | `BinaryCIFFile` | 1.83 ms | 0.99 ms | 1.8x |
| 4zxb, with bonds | `CIFFile` | 22.07 ms | 15.45 ms | 1.4x |

(For `CIFFile` the float to string conversion dominates.)

Verified that the written files (CIF and BinaryCIF, single model and multi-model, with and without bonds/extra fields) for all `tests/structure/data/pdb/*.bcif` structures are byte-identical to before.

Tests: `pytest tests/structure/io/test_pdbx.py` passes.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.