# Issue

**Title:** fix promise callback breaking py3dmol update method

## Description

The [js Promise api](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise), which `$3Dmolpromise` is, doesn't have a `done` method (unlike jquery's `$.Deferred`).

Without this fix, calling `view.update()` from a notebook will create an error that `done is not a function`.

This fixes that.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d04b58d4b305`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.