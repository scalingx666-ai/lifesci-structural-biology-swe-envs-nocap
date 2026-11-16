# Issue

**Title:** Fix PyG conversion misaligning edge features with edge_index

## Description

#### Reference Issues/PRs

. .

#### What does this implement/fix?

`GraphFormatConvertor("nx", "pyg")` symmetrizes undirected graphs with `to_undirected`, which doubles **and reorders** `edge_index`. Tensor edge features were passed through it, but `kind` (a set per edge, so not a tensor) was excluded. It stayed a list with one entry per undirected edge, in the original order, so `kind[k]` no longer described edge `k`.

On 4HHB with peptide-bond + kNN edges (977 undirected edges) on `master`:

```
edge_index: (2, 1954)   distance: (1954,)   kind: 977 entries
kind wrong for 489 of 977 edges, and 977 edges have no kind at all
```

**Changes in `graphein/ml/conversion.py`:**

- **Align all edge features through one permutation.** Each edge's position is passed through `to_undirected` (`torch.arange(E)` as the edge attribute, `reduce="max"`), and every edge feature, tensor or not, is indexed with the result. `edge_index` comes out in exactly the same order as before.
- **Self-loops:** a self-loop's features are no longer summed with its own flipped copy. A distance of 1.5 used to come out as 3.0.
- **Edge features are collected per key over all edges**, with `None` where an edge lacks one. Before, only the first edge's keys were used, so a feature missing on edge 0 was dropped, a feature missing later shifted the list, and an edge without `kind` raised `KeyError`.
- **`edge_index_<kind>` keys use `"_".join(sorted(kind))`.** They used `"_".join(kind)` on a set, whose order depends on the hash seed. For the same graph, `edge_index_knn_peptide_bond` existed with `PYTHONHASHSEED=1` and silently didn't with `PYTHONHASHSEED=2`.
- **`convert_nx_to_pyg_data`** (#217): appends one value per edge instead of `list(value)`. That flattened multi-kind sets (more `kind` entries than edges) and raised `TypeError` on numeric features like `distance`.

Directed graphs aren't symmetrized and were already aligned. They're unchanged apart from the per-key collection.

#### What testing did we do to verify the changes in this PR?

New tests in `tests/ml/test_conversion.py`, all on the local 4HHB file (no downloads):

- `test_nx_to_pyg_edge_features_aligned[undirected/directed]`: for every column `k` of `edge_index`, `kind[k]` and `distance[k]` equal the attributes of that edge in the nx graph.
- `test_nx_to_pyg_edge_index_by_kind`: each `edge_index_<kind>` has the right number of edges. Edge kinds use a set subclass that iterates in reverse order, so the test is deterministic rather than hash-seed dependent.
- `test_nx_to_pyg_self_loop_and_missing_kind`: a self-loop keeps `distance == 1.5`, and an edge without `kind` gives `None` in both directions instead of raising.
- `test_convert_nx_to_pyg_data_edge_features`: one `kind`/`distance` per edge, matching the nx graph.

On `master` these fail (`977 == 1954`, `KeyError: 'kind'`, no `edge_index_knn_peptide_bond`, `TypeError`), except the directed case, which is a guard. With this change they pass. `tests/ml/test_conversion.py` overall: 8 passed, 4 skipped (DGL not installed).

I also converted the same graph (undirected and directed) with `master` and with this branch. `edge_index`, `distance`, `coords`, node features, `node_id` and `edge_index_knn` are identical, so the only output change is `kind` (and self-loop features).

Run locally on Windows, Python 3.11, torch 2.8.0+cpu, torch_geometric 2.7.0. I didn't run `tests/ml/test_torch_geometric_dataset.py` locally (it uses multiprocessing, which hangs on Windows), so I'm relying on CI for that.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `ruff check --fix .` and `ruff format .`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0afa7bbb38e3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.