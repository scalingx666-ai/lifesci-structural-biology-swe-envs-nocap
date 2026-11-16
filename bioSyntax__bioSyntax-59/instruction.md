# Issue

**Title:** Improve VSCode color theme support

## Description

This is a direct fix for #50.

1. It allows for more graceful fallback to a user's desired color theme by exposing a new setting `BioSyntax.nonBioTheme`. The extension will revert the editor's color theme to match that setting upon switching away from a BioSyntax-compatible document.
2. Users may opt out of using the extension's color theme entirely by setting `BioSyntax.autoSwitchTheme` to `false`, while retaining the background coloring provided by the extension's scripts.

A known issue with these updates is that VSCode must be restarted for any settings changes to be reflected.

In order to compile the extension on my machine, several dependencies and structural elements have also been changed. These potentially fix #49.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `429671cfbf6d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.