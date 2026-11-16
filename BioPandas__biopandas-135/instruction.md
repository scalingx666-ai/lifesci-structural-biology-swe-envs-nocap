# Issue

**Title:** Add automated tests and release v0.5.0-dev

## Description

### Code of Conduct

<!-- 
If this is your first Pull Request for the BioPandas repository, please review
the code of conduct, which is available at http://rasbt.github.io/biopandas/CODE_OF_CONDUCT/. 
-->


### Description

### Add testing jobs to GitHub Actions workflow and update release process
This PR brings several updates and enhancements to the GitHub Actions workflow:

1. Changed the triggering event: Previously, the workflow was executed on push events that included tags. Now, the workflow is triggered on pull requests to the main branch. This allows us to run checks on PRs before they are merged.

2. Added testing jobs: Two new jobs, test-style and test-pytest, have been added to perform style checks with flake8 and run pytest tests on the biopandas directory. As part of these new jobs, test dependencies are also installed.

3. Updated build-n-publish job: The job to build the project and publish to PyPI now requires the test-style and test-pytest jobs to pass before it is run. Also, the condition for this job to run has been updated to only execute if the GitHub ref starts with 'v', which allows us to better control when releases are made.

4. Updated GitHub release process: The prerelease field in the create-release action has been updated from false to true. This marks new releases as pre-releases on GitHub.

This update ensures the CI/CD pipeline performs comprehensive checks on PRs, thus improving the code quality and robustness of the application. Furthermore, it streamlines the process of creating new releases, both on PyPI and GitHub.

I have also added the tag `v0.5.0-dev` so that the publish job will be triggered. 

**_Note:_**
While there are better ways to trigger the publishing of the package to PyPi, I have decided to keep your original code to publishing it unchanged, the condition to publish as mentioned above is still the same .

Please review and provide your feedback.

### Related issues or pull requests
Relates to #120 
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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `13e72a944d80`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.