# Issue

**Title:** Allow individual tabs to be closable or not

## Description

﻿

Mandatory requirements (see [CONTRIBUTING.md](../CONTRIBUTING.md)):
- [x] I ran `cargo clippy` and it does not output any errors or warnings
- [x] I ran `cargo fmt`
- [x] I pushed to a new branch, not to `main`
- [x] I updated CHANGELOG.md
- [x] I documented all new public API
- [x] I provided an example of how to use the feature

## Description

The close button and context menu item is now only shown if `TabViewer::closable` returns true. A default implementation is provided that always return true. No default behaviour have changed

## Demo
Here only the "Inspector" tab is not closable:
![image](https://github.com/Adanos020/egui_dock/assets/56919/9becff4f-7417-455e-910e-d2b56f67a421)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `006d9071e913`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.