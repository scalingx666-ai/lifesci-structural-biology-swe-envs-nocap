# Issue

**Title:** Print a warning if the pool allocator has allocated blocks when calling System::finish

## Description

An snippet similar to the one presented in #14 will result in a crash with a cryptic message because it inadvertedly breaks the rule that "all UAMMD objects are invalidated after calling finish". This PR detects this particular usage and prints a (hopefully) less cryptic message.
cc @PabloIbannez

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2fb1d2d825ad`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.