# Issue

**Title:** Replace cp+chmod by install

## Description

Just replace cp+chmod by install command. The install command is part of coreutils like cp and chmod, so it should be available on all unix systems. Please before to merge it, could you test this change?

This install script is very long, it should be better to simplify it. Maybe once a Windows installer will be available, we can remove the big related part and think about how to simplify the installation. It could be useful to have 2 installation modes, one for users (without root access) and another for admins.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `98d27b373553`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.