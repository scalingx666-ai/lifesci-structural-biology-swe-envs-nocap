# Issue

**Title:** add action to identify stale issues/PRs

## Description

## Summary of the Pull Request  
<!-- Describe what changes were made to the code, what was added, removed, etc. -->

This PR adds `stale.yml` which contains an action to check for stale pull-requests and issues. It will mark them as stale after 30 days of inactivity and if no reaction is made to this warning, the bot then closes it after 5 days. 

Once an issue/pr is marked as stale, the bot will give a warning and to re-start the timer someone must react to this warning by commenting on it or removing the label. Then the timer starts again, and after more 30 days of inactivity it's triggered again so on and so forth.

This is relevant to give an indication to external users which issues/pr as being worked on or are planned (postponed by commenting on it) and will also automatically clean-up the repository.

Currently there are issues/pull-requests that are years old, some others many months old, and it's not clear which are being worked on and which will no longer be added - this action will give a clear indication of that to our users.

## Related Issue
<!-- If this PR is related to an issue, please link it here -->
<!-- If this PR is related to the haddock3 user manual, please link the PR here -->

#1409

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `db8d5b544671`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.