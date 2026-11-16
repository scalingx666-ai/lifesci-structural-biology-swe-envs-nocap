# Issue

**Title:** Fix Docker: LAMMPS, Rust

## Description

Package electrode was added in June 2022. It's activated by `yes-all` but only partly deactivated by `no-lib` due to preceding spaces in the include line. This hotfix pins the version to the latest stable tag before the change.

Also, `rust.sh` was not executable and `cargo` missing from `PATH`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `55ab5a3b6d6c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.