# Issue

**Title:** Remove vulnerable PR-comment artifact pattern

## Description

## Security patch

This PR applies a security fix included in **nf-core/tools 4.0.3** for a potential exploit in the GitHub Actions workflows that post comments on pull requests.

For details, see the related security advisory: https://nf-co.re/advisories/pr-comment-workflow-vulnerability

The fix must be merged into the default branch to take effect. Please merge this PR as soon as possible.

These changes only affect CI workflows, so merging them into the default branch does **not** require a new pipeline release.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5338c24b2af6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.