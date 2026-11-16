# Issue

**Title:** Fix DGL conversion and drop Jraph support

## Description

#### Reference Issues/PRs

None.

#### What does this implement/fix? Explain your changes

**⚠️ Breaking: Jraph support removed**

`convert_nx_to_jraph` and `"jraph"` in `SUPPORTED_FORMATS` are removed, along with the `jax`/`jraph` imports in `graphein.ml.conversion`. Jraph is no longer maintained, and the converter didn't work:
- With the default columns it crashed on the first node: `torch.tensor` on a list of node-ID strings raises `ValueError`, which wasn't caught.
- With numeric-only columns it crashed on the second node: it built `Tensor + list`, which raises `TypeError` outside the `try`.

`GraphFormatConvertor("nx", "jraph")` now raises the standard "supported format" `ValueError`. Neither `jax` nor `jraph` was in any requirements file.

**Bug fixes in `convert_nx_to_dgl`**

- **Edges got node features.** `edge_transform_dict` was built from `node_dict` instead of `edge_dict`. On `master`, converting 4hhb with `verbose="default"` gave edges `b_factor` (and `residue_number` with `"all_info"`), which are node features.
- **The default `verbose="gnn"` always crashed.** With no numeric edge features, `edge_transform_dict` is empty, and DGL 2.x fails on an empty feature dict in `add_edges` (`TypeError: unsupported operand type(s) for +=: 'int' and 'NoneType'`). Both `add_nodes` and `add_edges` now get `None` when there are no features.
- **Numeric edge features raised `TypeError`.** Edge values were gathered with `list(value)`, which only works for iterables like the `kind` set. They're now collected one value per edge. `kind` is a string feature, which the DGL converter already drops, so this changes nothing for the default columns.
- Node and edge features are collected with `setdefault(...).append(...)` instead of copying the list on every element, which made conversion quadratic in graph size.

`convert_nx_to_pyg_data` (module level, no callers) has the same quadratic copying but no bug, so it's unchanged.

#### What testing did you do to verify the changes in this PR?

- New tests in `tests/ml/test_conversion.py`, skipped when DGL isn't installed:
  - `test_nx_to_dgl`, one case per verbosity setting: node and edge counts match, `coords` has shape `(num_nodes, 3)`, and edges carry no node features.
  - `test_nx_to_dgl_edge_features`: a numeric edge feature comes through with one value per edge, in order.
- All four new test cases fail on `master` and pass on this branch.
- `pytest tests/ml/test_conversion.py`: 7 passed, including the 3 existing PyG tests.
- Tested with DGL 2.2.0, torch 2.3.0 and PyG 2.8.1 on Python 3.12 (macOS arm64). DGL 2.2.0 doesn't load with newer torch.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran the relevant test files (see above)
- [x] Checked for style issues by running `black .` on the changed files

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9bbf3d998e00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.