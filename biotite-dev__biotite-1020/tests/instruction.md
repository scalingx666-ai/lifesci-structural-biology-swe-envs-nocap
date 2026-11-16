# Issue

**Title:** Speed up MOL/SDF structure writing

## Description

`write_structure_to_ctab()` (used by `MOLFile.set_structure()`, `SDRecord.set_structure()` and `mol.set_structure()`) built each atom/bond line by indexing NumPy arrays element-wise (`atoms.coord[i, 0]`, `atoms.element[i]`, `charge[i]`, bond array rows), and re-formatted constant padding fields for every line.

Fix: iterate over `tolist()` versions of coordinates, elements, charges and the bond array, and format the constant unused fields once. Output is identical to `main` (V2000 and V3000).

| Input | Call | before | after | speedup |
|---|---|---|---|---|
| `13136.sdf` (39 atoms) | `write_structure_to_ctab(..., "V2000")` | 0.187 ms | 0.081 ms | 2.3x |
| `HWB.sdf` | `write_structure_to_ctab(..., "V2000")` | 0.169 ms | 0.072 ms | 2.3x |
| `ATP` (CCD) | `SDRecord.set_structure(..., version="V2000")` | 0.235 ms | 0.093 ms | 2.5x |
| `ATP` (CCD) | `SDRecord.set_structure(..., version="V3000")` | 0.186 ms | 0.077 ms | 2.4x |
| `13136.sdf` | `SDRecord.set_structure(..., version="V2000")` | 0.190 ms | 0.084 ms | 2.3x |

Tests run: `tests/structure/io/test_mol.py`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b0d32ca90e53`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.