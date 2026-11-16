# Issue

**Title:** Vectorise per-atom and per-residue loops in graphein.protein.tensor

## Description

#### Reference Issues/PRs

None.

#### What does this implement/fix? Explain your changes

Several `graphein.protein.tensor` helpers looped in Python over individual tensor elements: one 0-d tensor per atom, or one `nonzero().tolist()` per residue. On a GPU, each per-residue `.tolist()` also waits for the device. This PR replaces those loops with one tensor operation and one `.tolist()` call. Output is unchanged.

| Function (4hhb, 574 residues, CPU) | Before | After |
|---|---|---|
| `io.to_dataframe` | 17.2 ms | 2.8 ms |
| `sequence.infer_residue_types` | 3.9 ms | 0.5 ms |
| `testing.is_complete_structure` | 3.4 ms | 0.5 ms |
| `io.protein_df_to_tensor` | 2.4 ms | 1.8 ms |
| `angles._extract_torsion_coords` (used by `sidechain_torsion`) | 1.5 ms | 0.6 ms |

- **`to_dataframe`**: `nz[:, 1]`, `res_nums` and tensor `residue_types` are converted with `.tolist()` once before building `atom_name`, `residue_name` and `record_name`. `res_nums` stays a tensor for the `residue_number` column.
- **`infer_residue_types`, `has_complete_residue`, `is_complete_structure`**: a new private helper, `sequence._present_atom_indices`, computes the present atoms for every residue with `(x != fill_value).any(dim=2)` and one `.tolist()`, excluding OXT as before. `is_complete_structure` builds the `get_atom_indices()` map once instead of once per residue.
- **`protein_df_to_tensor`**: atom-name → index uses a dict instead of `list.index` per atom.
- **`_extract_torsion_coords`**: the chi-angle atom indices are collected in one list and turned into one tensor, instead of one small tensor per residue joined with `torch.cat`.

#### What testing did you do to verify the changes in this PR?

- Compared 37 outputs from `master` and this branch, including dtypes and shapes. The structures were 4hhb (with and without HETATMs), 1lds and the AlphaFold test structure. The outputs covered:
  - `protein_df_to_tensor`;
  - `infer_residue_types`, as a string and as a list;
  - `to_dataframe`, with inferred residue types and with a residue-type tensor;
  - `is_complete_structure`, and `has_complete_residue` for every residue;
  - `_extract_torsion_coords`, and `sidechain_torsion` with its mask.

  All are identical, including two errors that already happen on `master` and are left unchanged:
  - `is_complete_structure` raises `KeyError: 'UNK'` on structures with non-standard residues.
  - `_extract_torsion_coords` raises a `RuntimeError` from `take_along_dim` on a protein with no chi angles (e.g. all glycine).
- New `tests/protein/tensor/test_testing.py`: `is_complete_structure` and `has_complete_residue` had no tests. It checks a complete structure, then one with a CA removed, using 1- and 3-letter codes. It passes on both `master` and this branch, as expected for a refactor.
- `pytest tests/protein/tensor`: all pass (torch 2.3.0, `einops` installed; without `einops`, three angle tests fail on `master` too).

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran the relevant test files (see above)
- [x] Checked for style issues by running `black .` on the changed files

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `79cd11a84632`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.