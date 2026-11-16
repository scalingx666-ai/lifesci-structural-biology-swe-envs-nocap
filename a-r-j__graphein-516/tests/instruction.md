# Issue

**Title:** Find interacting atom pairs with a KD-tree

## Description

#### Reference Issues/PRs

Part of #509 (the KD-tree item). **Stacked on #513**: the base is `interaction-edges-alt-locs`, because both PRs change the same lines in the interaction functions. Once #513 is merged, GitHub will retarget this PR to `master`.

#### What does this implement/fix? Explain your changes

Adds `get_interacting_atom_pairs(angstroms, df)`, which finds the atom pairs within a radius using `cKDTree.query_pairs` and returns each pair once (`i < j`). It is used in place of `compute_distmat` + `get_interacting_atoms` in:

- `add_hydrophobic_interactions`, `add_disulfide_interactions`, `add_ionic_interactions`, `add_aromatic_sulphur_interactions`, `add_cation_pi_interactions`, `add_salt_bridges`, `add_backbone_carbonyl_carbonyl_interactions`
- `add_distance_threshold`, and `add_distance_window` (pairs within `max` minus pairs within `min`)
- `add_vdw_interactions` / `add_vdw_clashes`: these query pairs within `threshold + 2 * max radius`, then keep the pairs where `distance - (r_i + r_j) <= threshold`.

Both orderings and the diagonal of the old dense result were dropped downstream anyway: edges are undirected and same-node pairs are skipped. So edges are unchanged.

The following are unchanged:
- `compute_distmat` and `get_interacting_atoms` are kept as public API. `construct_graph` still stores `dist_mat`.
- `add_k_nn_edges` needs `exclude_edges` filtering on the matrix.
- `add_aromatic_interactions` only works on ring centroids, so it is small.
- `add_pi_stacking_interactions` and `add_t_stacking` are broken, and will get separate issues.

Timings on a 4hhb atom graph (4,779 atoms):

| function | before | after |
|---|---|---|
| `add_vdw_interactions` | 0.31 s | 0.06 s |
| `add_distance_threshold` (4 Å) | 0.22 s | 0.03 s |

The dense matrix for those atoms takes ~180 MB, and the memory grows with N².

#### What testing did you do to verify the changes in this PR?

- `uv run pytest tests/protein/edges/test_distance.py -k atom_pairs`: 3 passed. The new test checks that `get_interacting_atom_pairs` gives exactly the `i < j` pairs of the dense `get_interacting_atoms` on 1,000 atoms of 4hhb, at 0, 2.2 and 5 Å, and that an empty dataframe gives no pairs.
- `uv run pytest tests/protein --ignore=tests/protein/tensor`: 165 passed, 13 skipped. The skips are for DSSP and optional dependencies. I didn't run `tests/protein/tensor`, which needs torch and doesn't touch this code.
- I built graphs with each converted function and compared them with the base branch (run with `PYTHONPATH` set to a worktree of `interaction-edges-alt-locs`). The functions were the seven interaction functions above, `add_vdw_interactions` (with and without `remove_intraresidue`), `add_distance_threshold`, `add_distance_window`, hbond and aromatic. Each ran on `4hhb.pdb` and `input_pdb_cryst1.pdb`, at CA and atom granularity (aromatic at CA only). All 50 edge sets are identical, 619,418 edges in total.
- `uv run ruff format` and `uv run ruff check` on the changed files: clean.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `ruff check --fix .` and `ruff format .`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `042cad112f3c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.