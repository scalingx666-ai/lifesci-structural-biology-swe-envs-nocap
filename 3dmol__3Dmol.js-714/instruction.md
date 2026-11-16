# Issue

**Title:** fix: fixed Deps Review Workflow

## Description

**Description:**

- Fixes Dependency Review Workflow
- Also removed `typescript` from codeql as the `javascript` matrix will check for ts as well :)
  - More Info:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a2d54469c038`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.