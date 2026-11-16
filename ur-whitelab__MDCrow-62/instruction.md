# Issue

**Title:** update CreateNewTool to execute as well

## Description

- partly combine CreateNewTool and ExecuteSkill, since it makes more sense to do it in one step instead of two.
- renamed ExecuteSkill -->  RetryExecuteSkill. Just in case executing fails (likely due to missing arguments). May remove this later if deemed unnecessary.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `501bd8243a61`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.