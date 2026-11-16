# Issue

**Title:** Issue #272

## Description

Improving error handling in DockableMenuItem. Unfortunately this required adding java.logging as a required module. That's not exactly a patch fix, but it should have been there anyways and it's part of Java, so not a big deal.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1217563f6c02`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.