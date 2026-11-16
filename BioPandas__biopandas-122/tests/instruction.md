# Issue

**Title:** Add GH action for autorelease on tag #120

## Description

### Code of Conduct


### Description
Adds a github action for publishing release based on tags. Based on [this](https://dev.to/iamtekson/publish-package-to-pypi-and-release-new-version-using-github-actions-108k)

To create a release, create a tag and push it to GitHub:

```
git tag -a "v0.0.1-beta" -m "beta version testing"
git push --tags
```

@rasbt, I think this should be good to go but will need your PyPI API key added to the project secrets.


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

- [ ] Added a note about the modification or contribution to the `./docs/sources/CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./biopandas/*/tests` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `biopandas/docs/sources/` (if applicable)
- [ ] Ran `PYTHONPATH='.' pytest ./biopandas -sv` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `PYTHONPATH='.' pytest ./biopandas/classifier/tests/test_stacking_cv_classifier.py -sv`)
- [ ] Checked for style issues by running `flake8 ./biopandas`


<!--NOTE  
Due to the improved GitHub UI, the squashing of commits is no longer necessary.
Please DO NOT SQUASH commits since they help with keeping track of the changes during the discussion).
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `725044093493`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.