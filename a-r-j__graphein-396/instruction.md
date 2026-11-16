# Issue

**Title:** Fix cluster file loading bug in `pdb_data.py`

## Description

#### Reference Issues/PRs
Fixes a cluster file loading bug in `pdb_data.py`,

#### What does this implement/fix? Explain your changes

The `PDBManager`'s `from_fasta()` function already prefixes its input `filename` argument with `self.root_dir /`, so one needs to remove this prefix in functions that call `from_fasta()` (to avoid a double prefix that causes a file not found error).

#### What testing did you do to verify the changes in this PR?

I tested this change locally.

#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [ ] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5f8e018f0732`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.