# Issue

**Title:** Improve usage as a npm dependency

## Description

gulp-cli is now a dev dependency since it is only used to build the code

use prepare script instead of prepublish for build step, since prepublish [is deprecated](https://docs.npmjs.com/misc/scripts#deprecation-note)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7d5f18401847`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.