# Issue

**Title:** feat: improve simulation summary overlay visibility and add show more button

## Description

## Changes

- Make simulation summary overlay always visible (removed opacity change on hover)
- Add 'Show more' button/link that opens the full analysis sidebar
- Set analysis panel to start collapsed by default (only overlay visible initially)
- Position 'Show more' button nicely on the right side with arrow indicator

## Details

The simulation summary overlay now:
- Has full opacity (opacity: 1) at all times for better readability
- Includes a 'Show more' button positioned on the right that opens the full analysis panel
- The full analysis panel (with Modifiers, Computes, Variables, Fixes tables) starts collapsed and only opens when requested

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `10109c198ada`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.