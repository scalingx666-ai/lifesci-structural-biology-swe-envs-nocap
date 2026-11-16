# Issue

**Title:** Speed up PDBFile.get_sequence()

## Description

`PDBFile.get_sequence()` called `np.isin()` up to four times per chain against the full CCD amino acid (~1900) and nucleotide (~800) name lists. Each call converts these Python lists into NumPy string arrays and sorts/hashes them again (~0.3 ms per call), which dominated the runtime.

Fix: build Python sets from the name lists once per call and compute the amino acid/nucleotide masks for each chain once via set lookup; the masks are reused for the hetero residue masks. Returned sequences are identical to `main`.

| Input | before | after | speedup |
|---|---|---|---|
| `1aki.pdb` | 0.92 ms | 0.23 ms | 4.0x |
| `5h73.pdb` | 1.30 ms | 0.53 ms | 2.5x |
| `4p5j.pdb` | 0.84 ms | 0.31 ms | 2.8x |
| `3wip.pdb` | 10.4 ms | 2.8 ms | 3.7x |
| `1l2y.pdb` (38 models) | 1.73 ms | 1.03 ms | 1.7x |

For large multi-model files the remaining time is the conversion of `PDBFile.lines` from Rust into a Python list, which is unchanged.

Tests run: `tests/structure/io/test_pdb.py -k sequence`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.