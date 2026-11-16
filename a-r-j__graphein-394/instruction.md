# Issue

**Title:** [fix] change progressbar for pdb download

## Description

#### What does this implement/fix? Explain your changes

When using the download_pdb_multiprocessing function, a progress bar for each individual download would be created. This was quite confusing since the progress bars change to quickly to see anything; at the same time one does not know how far the download process is in practice

https://github.com/a-r-j/graphein/assets/58345129/b4dacaef-de0b-4e38-ae90-1f0670c17a1e

In this MR, this is changed so that the process instead is monitored by one overall progress bar that gives more informative information about the progress. It does this via the imap_unordered function that returns the requests async; every download request that returns increments the bar so that we have a more realistic idea of how far the download process is.

#### What testing did you do to verify the changes in this PR?

I downloaded several pdbs, either just a few or a few thousand.

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