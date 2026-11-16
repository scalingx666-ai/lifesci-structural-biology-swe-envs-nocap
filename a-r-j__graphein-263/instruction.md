# Issue

**Title:** Improve altloc handling

## Description

#### Reference Issues/PRs
<!--
Example: . .
Please use keywords (e.g., Fixes) to create link to the issues or pull requests
you resolved, so that they will automatically be closed when your pull request
is merged. See https://github.com/blog/1506-closing-issues-via-pull-requests
-->

#### What does this implement/fix? Explain your changes
Hi, @a-r-j 👋! I love the package, so I'm coming with another PR.

Currently, insertions and altlocs are always handled together. This PR separates them, as I believe it makes more sense. Additionally, the removal of altlocs is improved by leaving the locations with the highest occupnacies.

I also think that in [ProteinGraphConfig](https://github.com/anton-bushuiev/graphein/blob/master/graphein/protein/config.py) it should be 
```
insertions: bool = True
alt_locs: bool = False
```
by default but for now I left 
```
insertions: bool = False
alt_locs: bool = False
```
to be consistent with your design. My understanding is that insertion codes are a valid part of structure and their removal leads to a corrupted structure (see ). Alt_locs, vice versa, should be dropped because they would lead to overlapping atoms. What do you think?

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `acaef3afccdc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.