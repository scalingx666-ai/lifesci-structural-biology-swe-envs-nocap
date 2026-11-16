# Issue

**Title:** Gradle 9.0.0

## Description

This update requires moving the GitHub Actions to a newer version of Java. Up until now Java 11 has been used, now Java 21 will be used. This shouldn't matter for compatibility with Java 11 as the source and target Java versions in the build.gradle will remain set to Java 11.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2756df8ab204`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.