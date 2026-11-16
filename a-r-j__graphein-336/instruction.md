# Issue

**Title:** Fix `add_sequence_neighbour_vector`

## Description

#### Reference Issues/PRs
Hi, @a-r-j 👋! Currently, `add_sequence_neighbour_vector` has two bugs:
- If conditions for adjacency fail, the `vec` from the previous iteration (pair of adjacent residues) is being used. So, the errors propagate silently. I fixed it to put zeros when conditions fail.
- It does not handle insertion codes. Currently, I fixed it by parsing node ids first, but there probably may be a better way to get insertions.

I have also removed a redundant check for chain identity when iterating through the nodes of the same chain, and added a test.

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `028f416a1255`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.