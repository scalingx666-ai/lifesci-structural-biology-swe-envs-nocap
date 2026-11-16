# Issue

**Title:** Get carbon bugfix

## Description

### Code of Conduct

<!-- 
If this is your first Pull Request for the BioPandas repository, please review
the code of conduct, which is available at http://rasbt.github.io/biopandas/CODE_OF_CONDUCT/. 
-->


### Description
Fixes minor bug where the `invert` parameter in `_get_carbon` was selecting the wrong group.


### Related issues or pull requests
#95

### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at http://rasbt.github.io/biopandas/contributing/.
-->

- [x] Added a note about the modification or contribution to the `./docs/sources/CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./biopandas/*/tests` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `biopandas/docs/sources/` (if applicable)
- [x] Ran `PYTHONPATH='.' pytest ./biopandas -sv` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `PYTHONPATH='.' pytest ./biopandas/classifier/tests/test_stacking_cv_classifier.py -sv`)
- [ ] Checked for style issues by running `flake8 ./biopandas`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6fb3d310d6b2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.