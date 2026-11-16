# Issue

**Title:** add ability to disable the background clear color for a tab

## Description

This lets you have a tab that isn't rendered by egui, but instead e.g. by the underlying game engine:

![image](https://user-images.githubusercontent.com/22177966/189521533-4ac10af5-9a10-4819-8bb1-d218dafa2ebb.png)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f54735756ee0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.