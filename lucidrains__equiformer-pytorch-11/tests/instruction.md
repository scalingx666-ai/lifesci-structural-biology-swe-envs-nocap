# Issue

**Title:** Enable `input_degrees > 1`

## Description

Currently, setting `input_degrees > 1` and passing a fiber dict to `forward` leads to a bug because `forward` tries to apply token embedding and positional embedding to a dict rather than a tensor with type-0 features. This PR fixes this minor issue.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3c913c789898`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.