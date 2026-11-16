# Issue

**Title:** Replace `WithTitle` trait with `impl Into<WidgetText>`

## Description

The `WithTitle` trait is redundant since `WidgetText` already implements `From` for various types.

This PR also bumps egui to the latest version (0.18 -> 0.19).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `88af4885c868`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.