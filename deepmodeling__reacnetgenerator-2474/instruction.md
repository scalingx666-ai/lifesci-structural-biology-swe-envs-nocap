# Issue

**Title:** fix: make source distributions buildable

## Description

.

- keep the tracked webpack/Yarn sources in generated sdists so CMake can build the report bundle
- make the release job build a wheel from the generated sdist before uploading it

This PR depends on #2463, which independently fixes the current Cython 3.3 limited-API build failure tracked in #2462. With that dedicated change applied, local verification built the sdist, confirmed the required webpack files in the tarball, and successfully ran `python -m pip wheel --no-deps` on it. The resulting `cp310-abi3` wheel contains `reacnetgenerator/dps.abi3.so` and `reacnetgenerator/static/webpack/bundle.html`.

Checks: TOML/YAML parsing; `git diff --check`; wheel-from-sdist build with #2463 applied

Coding agent: Codex
Codex version: codex-cli 0.149.0
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Chores**
  * Improved package build validation by generating a wheel from the source distribution during automated builds.
  * Included previously excluded static assets in source distribution packages.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b87c8ebe129e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.