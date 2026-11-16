# Issue

**Title:** v0.2.5

## Description

<!-- Please read the following guidelines for new Pull Requests -- thank you! -->

<!--
Make sure that you submit this pull request as a separate topic branch (and not to "master")
-->

<!-- Provide a small summary describing the Pull Request below -->

### Description

Minor update that now includes the insertion codes in the PandasPdb.amino3to1 function to avoid potential bugs where relevant amino acids could be skipped

### Related issues or pull requests

 

<!-- Below is a general todo list for typical pull request -->

### Pull Request requirements

For new features or bug fixes, pleas consider the following to-do list:

- [x] Added appropriate unit test functions in the `./biopandas/*/tests` directories
- [x] Ran `nosetests ./biopandas -sv` and make sure that all unit tests pass
- [x] Checked the test coverage by running `nosetests ./biopandas --with-coverage`
- [x] Checked for style issues by running `flake8 ./biopandas`
- [x] Added a note about the modification or contribution to the `./docs/sources/`CHANGELOG.md` file
- [x] Modified documentation in the appropriate location under `biopandas/docs/sources/` (optional)
- [ ] Checked that the Travis-CI build passed at https://travis-ci.org/rasbt/biopandas




<!--
NOTE

Due to the improved GitHub UI, the squashing of commits is no longer necessary.
Please DO NOT SQUASH commits since they help with keeping track of the changes during the discussion).

For more information and instructions, please see http://rasbt.github.io/biopandas/contributing/
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `615a7cf27269`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.