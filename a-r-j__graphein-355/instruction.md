# Issue

**Title:** Add support for DSSP version and add rsa node features to residues with insertion codes

## Description

#### Reference Issues/PRs
<!--
Example: . .
Please use keywords (e.g., Fixes) to create link to the issues or pull requests
you resolved, so that they will automatically be closed when your pull request
is merged. See https://github.com/blog/1506-closing-issues-via-pull-requests
-->
Fixes Issue #353 
Fixes Issue #354 

#### What does this implement/fix? Explain your changes
For Issue #353, this PR added a line to determine `dssp` version, which is passed to the function  `Bio.PDB.DSSP.dssp_dict_from_pdb_file` otherwise, biopython will use default version number 3.9.9 and for users with dssp version >= 4.0.0, this will lead to an empty dssp DataFrame 

For Issue #354, this modification fixes errors caused by missing `rsa` feature from nodes with insertion code. This is caused by skipping insertions when creating `node_id`. This modifications adds insertion codes to `node_id` if `insertions` is set to `True` in `ProteinGraphConfiguration`. 

#### What testing did you do to verify the changes in this PR?
Added a script `test_dssp.py` to tests/features 
The example input pdb file (with cryst1 line and insertion codes) is attached here: [input_pdb_cryst1.pdb.gz](https://github.com/a-r-j/graphein/files/13250309/input_pdb_cryst1.pdb.gz)

File with suffix `.pdb` is not supported by GitHub, thus the compressed version. Need to uncompress it first before running the test. 

#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [ ] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [x] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `79b21a58c827`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.