# Issue

**Title:** Dependency Cleanup

## Description

The demo projects only need the flatlaf and flatlaf-intellij-themes packages in order to use IntelliJ themes. The flatlaf-extras is no longer needed and svgSalamander was a dependency of an older flatlaf version.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `52e3bfe29e23`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.