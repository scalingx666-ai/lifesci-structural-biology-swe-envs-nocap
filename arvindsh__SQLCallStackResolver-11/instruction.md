# Issue

**Title:** Minor fixes post 2.0 release

## Description

* Fix the Build Output for Release config to Target\Release
* Change download URLs for JSON and lastupdated files to reference
  `main` instead of `master`
* Handle case when no build is selected in SQL Build selection dialog

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c22db2445011`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.