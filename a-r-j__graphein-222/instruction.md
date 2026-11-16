# Issue

**Title:** Df processing #216

## Description

#### Reference Issues/PRs
#216

#### What does this implement/fix? Explain your changes
Ensures provided `df_processing_funcs` are used.


#### What testing did you do to verify the changes in this PR?
Test pending

#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [x] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ea79ad1d2a90`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.