# Issue

**Title:** skip issues with `planned-long-term` from being marked as stale

## Description

Tweak `stale.yml` to skip issues marked with `planned-long-term`. 

Here the developers use the issues as a sort of "TODO list", so with this tweak it's possible to mark things as `planned-long-term` and avoid them from being marked. Note that this only applies to issues. Remember that the pull-requests, once made, need to be handled as soon as possible.

- please use this with moderation (:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2e5fc0ecf1e8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.