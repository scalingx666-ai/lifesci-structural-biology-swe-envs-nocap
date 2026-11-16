# Issue

**Title:** fixes run's single method

## Description

Changes:
  - input arguments now reflects the changes made to `read_molecule_file` in #84 
  - Writing of pKa file is now optional (default behaviour has been kept). This will be particularly useful downstream where we would just want to have access to the MoleculeContainer object.
  - new `test_run` file specific for testing `run`.

Notes:
  - Tests in `test_run` overlap a lot with `test_streamio`, strictly speaking I could probably ditch part of `test_streamio` as it's implicitly tested. However in some ways it might be good to have the two run in parallel to make sure that some change in run.single isn't introducing new behaviour. Either way would work, but it might not be that big a deal with the tests running as fast as they currently do?

<s>To do:
  - Add in a test for the logger warning.</s>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d16257af9a95`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.