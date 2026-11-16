# Issue

**Title:** Add autopublish workflow

## Description

#### Reference Issues/PRs
<!--
Example: . .
Please use keywords (e.g., Fixes) to create link to the issues or pull requests
you resolved, so that they will automatically be closed when your pull request
is merged. See https://github.com/blog/1506-closing-issues-via-pull-requests
-->

#### What does this implement/fix? Explain your changes
Adds a github action for publishing release based on tags. Based on [this](https://dev.to/iamtekson/publish-package-to-pypi-and-release-new-version-using-github-actions-108k)

To create a release, create a tag and push it to GitHub:

```
git tag -a "v0.0.1-beta" -m "beta version testing"
git push --tags
```


#### What testing did you do to verify the changes in this PR?


#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [ ] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [ ] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c1628a9cc192`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.