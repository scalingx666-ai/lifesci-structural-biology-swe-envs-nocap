# Issue

**Title:** Add vol0 keyword argument to bulk properties

## Description

This PR documents the `vol0` keyword argument of `volume`. It also adds that same keyword argument to all bulk properties that implicitly call `volume` in order to pass it along, similar to `threaded` and `phase`.

I also added a test that fails when the `vol0` keyword is not given, to illustrate a typical use-case.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e8d06469cbac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.