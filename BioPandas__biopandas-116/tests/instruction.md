# Issue

**Title:** Fix to pdb stream

## Description

### Description

<!--  
Please insert a brief description of the Pull request below.
-->
Fixed the bug where PandasPdb.to_pdb_stream() was returning `output.seek(0)` instead of `output`, and the default argument for the `records` parameter in the same function was changed from a mutable to an immutable object, as general best practice.

Fixed some general typos and style issues in pandas_pdb.py, and also updated the link to "How to contribute" in `README.md`

### Related issues or pull requests

<!--  
If applicable, please link related issues/pull request below. For example,   
"". Note that the "Fixes" keyword in GitHub will automatically
close the listed issue upon merging this Pull Request.
-->
issue 

### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at http://rasbt.github.io/biopandas/contributing/.
-->

- [x] Added a note about the modification or contribution to the `./docs/sources/CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./biopandas/*/tests` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `biopandas/docs/sources/` (if applicable)
- [x] Ran `PYTHONPATH='.' pytest ./biopandas -sv` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `PYTHONPATH='.' pytest ./biopandas/classifier/tests/test_stacking_cv_classifier.py -sv`)
- [x] Checked for style issues by running `flake8 ./biopandas`


<!--NOTE  
Due to the improved GitHub UI, the squashing of commits is no longer necessary.
Please DO NOT SQUASH commits since they help with keeping track of the changes during the discussion).
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `79e6599e52c4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.