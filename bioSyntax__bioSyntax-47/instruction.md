# Issue

**Title:** Improve VSCode default comment function behavior

## Description

Currently, any bioSyntax files within VSCode default to having the "Toggle Line Comment" function add a "//" at the beginning of the line, and the "Toggle Block Comment" encloses the selection in "/* ... */".  

This change disables block comments and changes the Toggle Line Comment to use "#" which is much more common in these types of files.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fb7a77298c34`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.