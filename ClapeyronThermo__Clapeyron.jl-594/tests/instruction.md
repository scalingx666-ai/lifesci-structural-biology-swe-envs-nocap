# Issue

**Title:** Extend symbolics support for ^, log and log1p

## Description

* Add missing `^(x::NUM,y::Real)`
* Implement `log` and `log1p` for `Complex{<:NUM}`
* Fixed typo in `sqrt(x::NUM)`

Fix #593

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `df357f65f5e7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.