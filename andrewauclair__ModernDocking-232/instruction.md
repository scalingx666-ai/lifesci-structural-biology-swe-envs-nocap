# Issue

**Title:** Publish action package rename

## Description

The new package rename step needs to happen in the package action too.

build.gradle files have been updated to allow for building modern docking using the maven central packages instead of the local packages. This can be done as 'gradlew build -PuseMavenVersion=true'.

module-info.java files are now copied by the package renamer because having the new packages directly in the existing module-info.java causes compile issues with a fresh pull of the repo.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d1edf807c3c2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.