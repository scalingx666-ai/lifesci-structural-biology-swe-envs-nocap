# Issue

**Title:** Modify graphs.py to handle insertions when ` {'insertions': True}`

## Description

#### Reference Issues/PRs
The centroid coordinates of protein graphs contain NaN values when the PDB file contains at least one insertion and when ` {'insertions': True}`  is provided to ProteinGraphConfig

#### What does this implement/fix? Explain your changes
Adding the `insertion` identifier in the node_id and in the centroid atom grouping function solves the problem

#### What testing did you do to verify the changes in this PR?
Graph creation for 1i7z.
ex:
before modifications: ['A:ASP:1', 'A:LEU:2', 'A:PRO:95', 'A:TRP:96', ...] 
`G.coords #=> contains NaNs`
after modifications:before modifications: ['A:ASP:1', 'A:LEU:2', 'A:PRO:95', 'A:TRP:96', ...]
`G.coords #=> no NaN`

#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [ ] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [ ] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4882b7a58b9b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.