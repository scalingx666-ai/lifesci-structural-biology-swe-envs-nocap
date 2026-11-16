# Issue

**Title:** Duplicating an example-sourced project drops the example identity

## Description

. Replaces #397 (closed by GitHub when its stacked base branch was deleted on the #393 merge).

A duplicate is a fork the user intends to change: keeping `source.exampleId` made every future run of the copy report the original curated example as `simulationId`/`exampleId` to Mixpanel, permanently misattributing the user's own work to the example.

- `duplicateProject` drops example provenance (upload/blank provenance still carries over), so the copy's runs report its own dir name.
- `saveQuickAsProject` deliberately keeps the example identity: a saved quick run IS the example at save time.
- Integration test: the duplicate persists no `source` and its runs send `simulationId = <copy dirName>`.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bace3687a7ef`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.