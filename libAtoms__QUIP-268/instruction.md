# Issue

**Title:** GCC 10 argument mismatches error

## Description

**Summary**

This PR contains a simple fix (replacing the scalar with a size-one array) to prevent argument mismatches error in GCC 10. 

**Related Issue(s)**

This PR addresses issue #267 

**Author(s)**

Yaser Afshar @yafshar (UMN)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `27cfea33f2ae`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.