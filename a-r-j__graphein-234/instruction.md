# Issue

**Title:** Fix and improve the utilities for PyG

## Description

#### Reference Issues/PRs
<!--
Example: . .
Please use keywords (e.g., Fixes) to create link to the issues or pull requests
you resolved, so that they will automatically be closed when your pull request
is merged. See https://github.com/blog/1506-closing-issues-via-pull-requests
-->
No Reference Issues/PRs

#### What does this implement/fix? Explain your changes
This PR fixes the bugs related to the processing of PyG data.
##### `graphein.ml.conversion.convert_nx_to_pyg`
1.  Fix the coordinates bug. Currently, the function  creates a `data.coords` tensor with an extra dimension because `coords` is also a “graph-level feature”.
2. Improve to convert everything that is possible to `torch.Tensor`s. Makes further usage much more easier and a resulting data object much more PyG-like.
3. Extend to multiple edge_indices for multiple edge types.

##### `graphein.ml.visualisation.plot_pyg_data`
4. Fix the arguments for the nested `plotly_protein_structure_graph`. Currently, it lacks the positional value for `node_size_feature` and the order of the following arguments is completely broken.
5. Adapt `coords` processing to the change number 2 in `convert_nx_to_pyg`.


#### What testing did you do to verify the changes in this PR?


#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [ ] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b660fce993e6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.