# Issue

**Title:** fix: skip hover callbacks for hidden objects

## Description

Hover callbacks were firing on hidden objects.
Added a hidden check in setHover() so callbacks are skipped when the object is hidden.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b9f8c3f24bcf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.