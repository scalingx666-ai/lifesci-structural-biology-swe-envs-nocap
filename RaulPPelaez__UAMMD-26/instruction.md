# Issue

**Title:** Make tests more convenient to run

## Description

In this PR I am modifying some test code such that one can run everything with:

```shell
cd tests
mkdir -p build
cd build
cmake ..
make test
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4e130305d4b7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.