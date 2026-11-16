# Issue

**Title:** Provide Renamed Package Alongside Existing Package

## Description

This PR adds a step to the build action to copy all the packages to io.github.andrewauclair.moderndocking and deprecates the ModernDocking package. Some testing is required through maven central with snapshots, but this should give jars with the same classes in the multiple packages and make it easier for users to migrate to io.github.andrewauclair.moderndocking before the 1.0 release. The 1.0 release will remove the ModernDocking package, convert to io.github.andrewauclair.moderndocking and remove this extra package rename step.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `371b7589ffd6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.