# Issue

**Title:** Leave failed graphs out of PyG protein datasets

## Description

#### Reference Issues/PRs

. . #400 shows the same traceback and probably has the same cause, but the reporter never said which structure failed.

#### What does this implement/fix? Explain your changes

`construct_graphs_mp` returns `None` for any structure it can't build a graph for, for example a PDB that failed to download or a file that doesn't parse. `ProteinGraphDataset` and `InMemoryProteinGraphDataset` passed those `None`s on to graph transformations and the PyG converter. So one bad structure made the whole dataset fail with `'NoneType' object has no attribute 'nodes'`.

**`ProteinGraphDataset`**
- Each graph now stays paired with its example index through transformation, conversion, labelling, `pre_filter`, `pre_transform` and saving. Previously the code saved `data_list[i]` under `pdbs[i]`, so any dropped graph (or any `pre_filter` rejection) put graphs under the wrong structure's name, or raised an `IndexError`.
- Examples left out because construction failed or `pre_filter` rejected them are written to `processed/failed_examples.txt` and exposed as `ds.failed_examples`. `processed_file_names` leaves those examples out, so PyG sees the dataset as already processed and doesn't redo it on every load.
- `len` and `get` use the processed file names, so indices only cover examples that were actually saved. This also fixes `get` with `chain_selections`, which built the file name with a backslash line continuation inside the f-string and so looked for `4hhb_                        A.pt`.

**`InMemoryProteinGraphDataset`**
- Drops failed graphs with a warning before transforming and converting. Structure names are now paired with graphs before failed ones are filtered out, so the pairing can't shift.
- Removes the `__len__` override that returned the number of input structures. `InMemoryDataset` already returns the number of stored graphs.

Not changed: `ProteinGraphDataset` assigns `node_labels` to `data.graph_y`, not `node_y`. This was already the case before this PR, and changing it would break existing users, so I left it for a separate issue. Exceptions raised inside `graph_transformation_funcs` are still not caught.

#### What testing did you do to verify the changes in this PR?

I wrote the regression tests first and watched them fail on `master` with the error from the issue. They use a dataset of local `4hhb.pdb`, an unparseable `bad.pdb` and `input_pdb_cryst1.pdb`, so they need no network:
- `test_protein_graph_dataset_skips_failed_graphs`: `bad` is listed in `failed_examples`, the dataset has 2 entries with names `["4hhb", "input_pdb_cryst1"]`, and their graph labels `[0, 2]` stay with the right structures. Reloading doesn't call `process`.
- `test_protein_graph_dataset_pre_filter_keeps_names`: an example rejected by `pre_filter` is left out, and the remaining file names stay correct.
- `test_in_memory_dataset_skips_failed_graphs`: `len == 2`, with the correct names.

```
uv run --with torch --with torch_geometric pytest tests/ml/test_torch_geometric_dataset.py --no-cov -rA
```
All 6 tests pass: the 3 new ones, and the 3 existing ones, which download from the RCSB and AlphaFold DB.

`uv run ruff format` and `uv run ruff check` pass on the changed files. I didn't run the rest of the suite; no other code changed.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `ruff check --fix .` and `ruff format .`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0a5cc372f0a7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.