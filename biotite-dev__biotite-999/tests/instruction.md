# Issue

**Title:** Speed up `get_assembly()` for assemblies with many copies

## Description

`get_assembly()` sorted the assembled atoms by `sym_id` by building one boolean-masked copy of the *whole* assembly per `sym_id` and concatenating them: O(n_copies x n_atoms). For icosahedral assemblies (60 copies) this dominated the runtime.

**Fix:** a single stable `argsort` over `sym_id` followed by one index operation. To keep the output identical, bonds between atoms with different `sym_id` are still removed, as the masking approach implicitly did (bond *set* is identical; for assemblies built from multiple `oper_expression` rows the order of rows in `bonds.as_array()` can differ, `BondList.__eq__` is unaffected).

| Input (BinaryCIF, `model=1`) | before | after | speedup |
|---|---|---|---|
| 1f2n (60 copies) | 77.4 ms | 22.7 ms | 3.4x |
| 1f2n, `include_bonds=True` | 128.9 ms | 53.0 ms | 2.4x |
| 4zxb | 3.7 ms | 4.0 ms | ~1x |
| 1aki | 0.38 ms | 0.37 ms | 1x |

Verified that all assemblies of all `tests/structure/data/pdb/*.bcif` files (with and without bonds, single model and stack) are equal to the previous implementation.

Note: biotite-dev/biotite#961 touches the same lines.

Tests: `pytest tests/structure/io/test_pdbx.py -k "assembly or unit_cell"` passes.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.