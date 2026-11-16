# Issue

**Title:** 👷 Updated testing infrastructure

## Description

I’ve moved the testing environment to a separate `Project.toml` file again. Under Julia v1.12, this forms a workspace, which has a few advantages:

- Developing the repo with `git clone`  will instantiate the environment with all the additional test packages, making it easier to fix unit tests.
- Initialising the package tests with `Pkg.test` will now install the newest `main` branches of all our NQCD packages by default, ensuring that we test and build docs against the most recent versions of packages before having to release potentially broken code into the General registry.

However, the project merging in workspaces doesn’t work quite like I expected and so I’ve had to copy large amounts of the main `Project.toml`, which will make future changes to dependencies or compatibility a bit more annoying since it needs to be changed in two separate places.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fe0bf34ea976`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.