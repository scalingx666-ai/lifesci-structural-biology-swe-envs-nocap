# Issue

**Title:** update binrw to 0.13

## Description

A few changes accumulated upstream, so I thiought it might be worth to migrate.

I'm not super savvy around lifetimes in Rust, so these might benefit from a review. But the tests run through.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `57e3875de512`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.