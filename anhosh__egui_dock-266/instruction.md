# Issue

**Title:** Fix `TabViewer::on_close`

## Description

Ensures that `TabViewer::on_close` is always called on all closable tabs when the user tries to close them. The only exception where `on_close` is not called is when a tab is closed forcefully via `TabViewer::force_close`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `053197815c5f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.