# Issue

**Title:** ci: codspeed walltime

## Description

See https://docs.codspeed.io/instruments/walltime/#usage-with-github-actions

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **Chores**
  - Updated workflow configuration to enhance benchmarking capabilities.
  - Renamed job from "Test with tox" to "Benchmark with codspeed."
  - Changed execution environment to `codspeed-macro`.
  - Added conditional execution for repository owner 'deepmodeling.'
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2b218d20a05c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.