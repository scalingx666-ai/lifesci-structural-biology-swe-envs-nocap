# Issue

**Title:** Update bioSyntax_SETUP.sh

## Description

The current source-highlight version is 3.1.8_8 and the script will fail to locate it.

Hard coding software version in the script is not a good idea. Instead, we should use `/usr/local/opt/source-highlight/share/source-highlight/` to always redirect to the latest version.

The `less/bp_append.txt` path is also incorrect, and was fixed.

BTW: it seems zsh is not supported, please correct me if I was wrong.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb7fd45669ad`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.