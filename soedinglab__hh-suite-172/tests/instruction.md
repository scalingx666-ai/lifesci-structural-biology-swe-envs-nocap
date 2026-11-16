# Issue

**Title:** sanitise the input file in addss.pl

## Description

This should fix #169. The original fix to #110 that causes the issue with .a3m is reverted. Instead, we pre-process the input file, removing all '>' characters except the first one.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1f8107689c39`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.