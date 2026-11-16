# Issue

**Title:** Important! Template update for nf-core/tools v4.0.3

## Description

Version `4.0.3` of [nf-core/tools](https://github.com/nf-core/tools) has just been released with updates to the nf-core template. For more details, check out the blog post: https://nf-co.re/advisories/pr-comment-workflow-vulnerability

Please make sure to merge this pull-request as soon as possible, resolving any merge conflicts in the `nf-core-template-merge-4.0.3` branch (or your own fork, if you prefer). Once complete, make a new minor release of your pipeline.

For instructions on how to merge this PR, please see [the template sync documentation](https://nf-co.re/docs/developing/template-syncs/merge-automated-pull-requests).

For more information about this release of [nf-core/tools](https://github.com/nf-core/tools), please see the `v4.0.3` [release page](https://github.com/nf-core/tools/releases/tag/4.0.3).

> [!NOTE]
> Since nf-core/tools 3.5.0, older template update PRs will not be automatically closed, but will remain open in your pipeline repository. Older template PRs will be automatically closed once a newer template PR has been merged.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2e1e748d255f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.