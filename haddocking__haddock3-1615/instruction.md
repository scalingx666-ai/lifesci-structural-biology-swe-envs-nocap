# Issue

**Title:** skip `test_contactmap.py::test_contactmap_example` if not enough memory

## Description

this `test_contactmap.py::test_contactmap_example` might fail if ends up in a machine with less than 3Gb of ram during the CI - here I added a skip that checks if the machine has enough memory to run the test or not

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6fb564e35284`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.