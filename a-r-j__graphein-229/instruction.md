# Issue

**Title:** Fix bug in `add_k_nn_edges` and add minor extension

## Description

#### Reference Issues/PRs
<!--
Example: . .
Please use keywords (e.g., Fixes) to create link to the issues or pull requests
you resolved, so that they will automatically be closed when your pull request
is merged. See https://github.com/blog/1506-closing-issues-via-pull-requests
-->
No related issues/PRs
#### What does this implement/fix? Explain your changes
This pull request fixes a bug in `add_k_nn_edges`. Currenly, `kneighbors_graph(X=dist_mat, ...)` leads to wrong results which may seem correct. According to [scikit-learn docs](https://scikit-learn.org/stable/modules/generated/sklearn.neighbors.kneighbors_graph.html), it does not support `X` to be a distance matrix.

Secondly, this PR adds `filter_distmat` to generalise self-loops filtering. It adds the functionality to filter inter- or intra- connections between nodes of a single or multiple chains. It may be useful to incorporate it into other functions to add edges. By running the following code you will get the visualized graphs.
```
for val in ['inter', 'intra']:
    edge_funcs = {
        'edge_construction_functions': [
            partial(add_k_nn_edges, k=2, long_interaction_threshold=0, exclude_edges=[val])
        ]
    }
    config = ProteinGraphConfig(**edge_funcs)
    g = construct_graph(config=config, pdb_code='10gs')
...
```
![image](https://user-images.githubusercontent.com/67932762/199579189-7e2d0126-fc3a-47d2-add0-1184e8f28a12.png)
![image](https://user-images.githubusercontent.com/67932762/199579210-8b29d365-0a2a-4346-8fd5-ff67a989a88a.png)



#### What testing did you do to verify the changes in this PR?


#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cfcf220ddd67`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.