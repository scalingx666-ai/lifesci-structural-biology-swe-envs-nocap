# Issue

**Title:** chore: upgrade lockfile dependencies for open security advisories

## Description

Targeted `uv lock --upgrade-package` for the ten packages behind the 40 open Dependabot alerts that have released fixes; all are transitive dependencies in uv.lock (none are direct aimnet deps). Verified: full sync with all extras, docs build green (pymdown-extensions 10->11 major bump is compatible with the pinned mkdocs-material), default CPU suite 435 passed. Not addressed: paramiko (no patch exists yet) and two low-severity torch advisories whose fix (2.13) is outside the supported 2.8-2.12 matrix — both documented in the changelog.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3048ae819c28`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.