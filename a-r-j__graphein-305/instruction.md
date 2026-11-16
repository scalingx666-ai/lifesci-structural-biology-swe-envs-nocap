# Issue

**Title:** Fix and enhance geometric node features

## Description

#### Reference Issues/PRs
1. Fixes 
2. Fixes the case when beta-carbons or side chains are missing in non-glycine residues (for example in `H:CYS:104` in `3SE8`).
3. Fixes data types of geometric feature vectors. Now they are of type `object`, which breaks for example their smooth conversion to PyTorch tensors, when converting to PyG data.
4. Implements virtual beta-carbon vectors (used recently in ProteinMPNN and [RFdiffusion](https://github.com/RosettaCommons/RFdiffusion/blob/92b83decf3b1fd18794fc5f8a7a94d4124035fc8/rfdiffusion/coords6d.py#L37)). In the figure below real beta-carbon vectors are in green and the virtual ones are in red.
![image](https://user-images.githubusercontent.com/67932762/232338192-02b99087-ff5b-4fd3-879b-dc14a71848b2.png)
5. Minorly enhances the visualization of PyG data
6. Fixes `add_k_nn_edges` for the case when some residues were dropped before (e.g. when some alt_locs are removed). The code of `add_k_nn_edges` assumes the dataframe to have continuous index which is not true if some residues are dropped. For example the following line constructs continuous `outgoing` which are then used to index dataframe:
https://github.com/a-r-j/graphein/blob/371ce9a462b610529488e87a712484328a89de36/graphein/protein/edges/distance.py#L1127

I have also added the functionality to test whether a warning is raised by `loguru` according to 

#### What does this implement/fix? Explain your changes

#### What testing did you do to verify the changes in this PR?


#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [x] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [ ] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `44a32a374484`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.