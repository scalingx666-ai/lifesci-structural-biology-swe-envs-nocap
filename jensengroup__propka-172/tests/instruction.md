# Issue

**Title:** Add type annotations and mypy CI job

## Description

Static type checking is becoming popular for serious Python projects. This PR adds a substantial amount of type annotations and a static type checking CI job with [mypy](https://github.com/python/mypy).

Static type checking reveals lots of potential for cleanup and better design decisions, but this patch deliberately doesn't clean up anything. Cleanup could happen in follow-ups.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ee89e36f588d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.