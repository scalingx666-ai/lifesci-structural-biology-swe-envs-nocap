# Issue

**Title:** Speed up and tidy graphein.protein.tensor

## Description

#### Reference Issues/PRs

Stacked on #474, so the diff shows only the changes on top of it.

#### What does this implement/fix? Explain your changes

**Speed** (4hhb, CPU, best of 5):

| Function | Before | After |
|---|---|---|
| `build_sidechain` | 50.4 ms | 4.2 ms (12x) |
| `sidechain_torsion(embed=True)` | 0.71 ms | 0.31 ms (2.3x) |
| `idealize_backbone` (100 steps) | 77 ms | 73 ms |
| `dihedrals_to_rad` | 12 µs | 7 µs |

- **`build_sidechain`** builds all residues of the same type together, one atom at a time. Before, it made one `sn_nerf` call per atom per residue (~2,000 per structure), and per-call overhead was almost all of the runtime.
  - `sn_nerf` now takes `(..., 3)` points, and `_get_build_params` caches atom indices too.
  - Residue 0 keeps its existing reference atoms (C-, N, CA).
- **`sidechain_torsion`** looks up each residue's chi atoms in a cached per-residue-type index table (`(types, 4 chi, 4 atoms)` plus a mask). It gathers all chi coordinates in one step and computes every chi angle in one `_dihedral_angle` call, with missing chi angles masked to 0.
  - This replaces a Python loop over residues followed by `to_dense_batch` and manual padding of trailing ALA/GLY/UNK/SEC runs.
  - What's left is mostly the per-residue name lookup.
- **`angles`:**
  - The sin/cos interleave uses `torch.stack(...).flatten(-2)`, so `angles` no longer imports `einops`.
  - `dihedrals_to_rad` and `torsion_to_rad` make one strided `atan2` call each.
- **`idealize_backbone`** builds its ideal-geometry tensors once rather than on every step, and uses `F.mse_loss`.
- **`kabsch`** uses `torch.linalg.svd` instead of the deprecated `torch.svd`.
- **`protein_df_to_chain_tensor`** uses `pd.factorize(sort=True)` instead of `get_dummies` plus `argmax`. IDs still follow sorted chain order.

**Bug fixes:**
- `to_dataframe` and `to_pdb` raised `ValueError: All arrays must be of the same length` for any `fill_value` other than `1e-5`. Atoms were selected with `fill_value` but their coordinates with the default.
- `sidechain_torsion` raised `KeyError: 'SE'` for selenocysteine in 38-atom tensors. It now uses `ATOM_NUMBERING_MODIFIED`.
- `build_sidechain` on a single residue raised `IndexError` and now works.
- `sidechain_torsion` returned fewer rows than residues when a structure ended in residues without chi angles other than ALA/GLY/UNK/SEC (e.g. PYL or a non-standard residue). It now always returns one masked row per residue.

**Not changed:** `build_sidechain` doesn't reproduce input side chains: residues 0 and 1 of 4hhb are 1.6–4.2 Å off. Part of the cause may be that CB's torsion is read from `torsion_angles[:, -1]` (chi4). This PR keeps that behaviour; it's worth its own issue.

#### What testing did you do to verify the changes in this PR?

- **New tests:**
  - `test_to_dataframe_custom_fill_value` and `test_sidechain_torsion_selenocysteine` fail on `nits-4` (`ValueError` / `KeyError: 'SE'`) and pass here.
  - `test_sidechain_torsion_one_row_per_residue[PYL|MSE]` fails before the vectorisation (`torch.Size([2, 4]) == (3, 4)`) and passes here. It also checks that masked chi angles give no NaN gradients.
  - `test_protein_df_to_chain_tensor_sorts_chain_ids` pins chain-ID order on `input_pdb_cryst1.pdb` (chains L, H, A). It passes on both branches.
  - `test_sn_nerf_batched_matches_single`.
  - `test_get_build_params` now checks the cached atom indices too.
- **Comparison with `nits-4`:** I compared outputs on 4hhb and `input_pdb_cryst1.pdb`. These match in values, dtypes and shapes: `to_dataframe`, chain tensors (integer and one-hot), `sidechain_torsion`, `dihedrals`, `dihedrals_to_rad`, `kabsch` (aligned coordinates, and R, t), `get_backbone_frames` and `idealize_backbone`.
  - `sidechain_torsion` is bit-identical to the loop version, angles and masks, in 12 cases: 4hhb and `input_pdb_cryst1.pdb`, all 22 residue types, 38-atom SEC; radians, degrees and embedded.
  - `build_sidechain` (4-atom, 5-atom and sin/cos torsions) is within 4.6e-5 Å. Single `sn_nerf` calls differ by up to 3.8e-6 on coordinates of magnitude ~50 (float32 rounding), and that compounds along side chains.
- **Test suites:** `uv run --with torch --with torch_geometric pytest tests/protein/tensor tests/ml --no-cov` passes, except:
  - `test_edges.py::test_compute_edges` and `test_docstring_examples` fail with `ImportError`: they need `pyg-lib`/`torch-cluster`, which wouldn't install in my environment. They fail the same way on `nits-4`.
  - DGL tests are skipped.
- **ruff:** `ruff check` and `ruff format --check` are clean on the changed files. `io.py` keeps its CRLF line endings.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `ruff check --fix .` and `ruff format .`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `45c5a83f4f90`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.