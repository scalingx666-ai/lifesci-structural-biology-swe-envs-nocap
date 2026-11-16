# Issue

**Title:** Fix tab text color

## Description

Previously the tab text color was always a weird green.

This was due to a bit of (very) unintuitive egui API (sorry!): unless a color is set in `WidgetText`, the default text color is an ugly shade of green to remind you to set a color.

## Before:
<img width="912" alt="Screen Shot 2022-09-05 at 22 10 24" src="https://user-images.githubusercontent.com/1148717/188508460-90b111ea-ba41-4861-ac93-b8db6c1abdc8.png">

## After:
<img width="912" alt="Screen Shot 2022-09-05 at 22 09 26" src="https://user-images.githubusercontent.com/1148717/188508399-3e648ad8-a6a0-4d6c-80f6-a5e37c446b7d.png">

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2a6d4c1ae629`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.