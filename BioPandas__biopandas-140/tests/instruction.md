# Issue

**Title:** empty lines in mol2

## Description

Some mol2 files have empty lines between blocks. We need to remove them from the block content of the previous one.

### Code of Conduct

<!-- 
If this is your first Pull Request for the BioPandas repository, please review
the code of conduct, which is available at http://rasbt.github.io/biopandas/CODE_OF_CONDUCT/. 
-->


### Description
Some `mol2` files have empty lines between blocks. They need to be removed from the content lines of the previous block.

<!--  
Please insert a brief description of the Pull request below.
-->

### Related issues or pull requests
 
<!--  
If applicable, please link related issues/pull request below. For example,   
"". Note that the "Fixes" keyword in GitHub will automatically
close the listed issue upon merging this Pull Request.
-->

### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at http://rasbt.github.io/biopandas/contributing/.
-->

- [x] Added a note about the modification or contribution to the `./docs/sources/CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./biopandas/*/tests` directories (if applicable)
- [x] Modify documentation in the corresponding Jupyter Notebook under `biopandas/docs/sources/` (if applicable)
- [x] Ran `PYTHONPATH='.' pytest ./biopandas -sv` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `PYTHONPATH='.' pytest ./biopandas/classifier/tests/test_stacking_cv_classifier.py -sv`)
- [x] Checked for style issues by running `flake8 ./biopandas`


<!--NOTE  
Due to the improved GitHub UI, the squashing of commits is no longer necessary.
Please DO NOT SQUASH commits since they help with keeping track of the changes during the discussion).
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1eb121ee8e26`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.