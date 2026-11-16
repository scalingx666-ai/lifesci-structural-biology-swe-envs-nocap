# Issue

**Title:** gzip integration

## Description

### Overview of New Code/Feature
Relying on the correct file extension for gzip, this uncompresses the input file before giving the data to the parser.
The workflow is the exact same as before, hence no new tests or comments
### Checklist

- [x] I have read [CONTRIBUTING.rst](https://github.com/samirelanduk/atomium/blob/master/.github/CONTRIBUTING.rst).
- [ ] I have documented any new functions.
- [ ] I have added unit tests for the new code.
- [ ] I have added an integration test (if appropriate).
- [x] I have run all tests. Same errors before and after.
- [x] I am requesting to merge into the appropriate branch.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `807bb1d08dd1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.