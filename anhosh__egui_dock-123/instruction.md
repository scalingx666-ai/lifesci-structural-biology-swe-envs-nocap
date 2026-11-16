# Issue

**Title:** Big refactor

## Description

This endeavor aims to increase maintainability of the library by dividing the code into smaller pieces and making the file structure easier to navigate.

To-do list:
- [x] Split big files into smaller ones
- [x] Group together related modules
- [x] Take some functions that shouldn't be in `Style` out of there and put them into `DockArea`
- [x] Split `DockArea::show_inside` into smaller, more manageable functions

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `120ce1e1e654`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.