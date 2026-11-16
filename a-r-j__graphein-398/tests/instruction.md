# Issue

**Title:** [feat] add uniprot ecnumber and cath label options to pdb manager

## Description

#### What does this implement/fix? Explain your changes

We add the possibility to add metadata as part of the pdb manager, for example ec number, uniprot id or cath code and also filter by these.

Also adds option to download pdb data in mmcif and bcif format.

Also change a few pandas commands to satisfy deprecation warnings.

#### What testing did you do to verify the changes in this PR?

The change is made in a backward-compatible way; all old options and tests still run, but one can pass in new labels to enable that new option.


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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `53a76be76826`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.