# Issue

**Title:** Fix centroid graphs giving residues another residue's centroid

## Description

#### Reference Issues/PRs

Supersedes #423 (centroid part; its `add_distance_threshold` part was already fixed by #419).

#### What does this implement/fix? Explain your changes

With `granularity="centroids"` (or `"rna_centroid"`), `convert_structure_to_centroids` assigned the centroids to the CA rows by row position. `calculate_centroid_positions` groups by `["residue_number", "chain_id", ...]`, so the centroids are sorted by residue number before chain, while the CA rows are in file order. In multi-chain structures, most residues got another residue's centroid:

| Structure | Wrong centroids on `master` | Max error |
|---|---|---|
| 4HHB (chains A, B, C, D) | 571 of 574 | 59.5 Å |
| `input_pdb_cryst1.pdb` (chains L, H, A; insertion codes) | 348 of 458 | 72.1 Å |

#423 sorts by chain first. That fixes 4HHB but only works when chains are in alphabetical order in the file: on `input_pdb_cryst1.pdb` all 458 centroids were wrong. Sorting also can't handle insertion codes that come before their residue (`1B, 1A, 1`).

This PR merges the centroids onto the CA rows on `chain_id`, `residue_number`, `residue_name` and `insertion`, so row order no longer matters. The groupby now keeps NaN keys (`dropna=False`), so a residue with a missing insertion code still gets a centroid instead of NaN coordinates.

#### What testing did you do to verify the changes in this PR?

- Added `test_centroids_match_their_residue` (`tests/protein/test_graphs.py`). It builds centroid graphs of 4HHB and `input_pdb_cryst1.pdb` with `construct_graph` and checks that each node's coordinates are the mean of its own residue's atoms. On `master` it fails for both, with 99.5% and 99.6% of coordinates wrong.
- `pytest tests/protein --ignore=tests/protein/tensor`: 83 passed, 14 skipped. `pytest tests/rna`: 14 passed. Python 3.12 on macOS. Torch isn't installed, so the tensor tests weren't run.
- `ruff check` and `ruff format --check` pass on the changed files.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran the relevant tests (`tests/protein`, `tests/rna`)
- [x] Checked for style issues (`ruff check`, `ruff format`)

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `df07efcee836`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.