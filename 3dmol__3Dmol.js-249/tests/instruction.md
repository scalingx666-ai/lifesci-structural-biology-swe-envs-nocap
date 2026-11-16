# Issue

**Title:** fix tests with PhantomJS

## Description

Our company uses 3Dmol and we run front end selenium tests using PhantomJS as part
of our build process. With PhantomJS, window.URL is null, so we need to use this simple test.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `da05afff6efe`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.