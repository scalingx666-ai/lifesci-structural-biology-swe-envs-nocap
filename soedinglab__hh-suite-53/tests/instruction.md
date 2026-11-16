# Issue

**Title:** Power8/LE SIMD Support

## Description

This PR adds Power8 SIMD code,  and fixes build system to check for processor/arch and only run SSE checks on X86.

This should close #9 and #52 .

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b1aa73afae48`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.