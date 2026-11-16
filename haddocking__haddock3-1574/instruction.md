# Issue

**Title:** add dev docker image on main push

## Description

Build a dev Docker image on every push to main, constantly overwritten — does not affect latest, which remains tied to release tags.

This will make the latest version of the code available via `dev` tag in `ghcr.io` - which is valuable given the release conditions of the project are arbitrary

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e42aa0aa957c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.