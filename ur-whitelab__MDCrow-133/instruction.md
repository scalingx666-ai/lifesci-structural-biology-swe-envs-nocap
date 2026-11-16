# Issue

**Title:** added dummy trajectory files for testing

## Description

- added trajectory files for testing
- add map_path option in `get_registry` fixture so paths to these files are mapped automatically
- updated unit test for path registry that is largely impacted

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b6d81943d160`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.