# Issue

**Title:** Central Portal Migration

## Description

After this PR is merged, any SNAPSHOT releases will be available from `https://central.sonatype.com/repository/maven-snapshots/` instead of `https://s01.oss.sonatype.org/content/repositories/snapshots/`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `225f59d2aa70`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.