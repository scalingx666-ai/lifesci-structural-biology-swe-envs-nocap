# Issue

**Title:** Addition of interface code

## Description

Master branch as of July 2024 was modified to enable the interface extraction mode that was first created in the interface branch in December 2023. This original branch was not able to be successfully merged with master, so this is a fresh start. Additional change from the original branch is the new parameter exposing the distance threshold for defining the interface.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e1f38a1e8257`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.