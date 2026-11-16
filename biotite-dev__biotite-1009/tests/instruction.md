# Issue

**Title:** Speed up `to_sequence()`

## Description

`to_sequence()` spent most of its time in `np.isin(residues, amino_acid_names())` / `np.isin(residues, nucleotide_names())`, called up to three times per chain.
Each call converts the long CCD name lists (~1900 / ~800 entries) into arrays and sorts them together with the residue names, regardless of how few residues the chain has.

The fix converts both name lists into a `frozenset` once per call and checks membership per residue; the resulting boolean masks are reused for the hetero residue mask.

| Input (polymer atoms, `allow_hetero=True`) | Before | After | Speedup |
|---|---|---|---|
| 1l2y (1 chain) | 0.752 ms | 0.075 ms | 10x |
| 1aki (1 chain) | 0.843 ms | 0.175 ms | 4.8x |
| 4gxy (RNA, 1 chain) | 0.705 ms | 0.214 ms | 3.3x |
| 1f2n (3 chains) | 2.585 ms | 0.651 ms | 4.0x |
| 1igy (4 chains) | 3.876 ms | 1.337 ms | 2.9x |

Outputs (sequences, sequence types, chain starts, exceptions) were checked to be identical for all structures in `tests/structure/data/pdb`, with and without `allow_hetero`, both on the full structure and on the polymer atoms.

Tests run: `tests/structure/test_sequence.py`

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.