# Issue

**Title:** Dispose instances of FloatUtilsFrame when closing DockingAPI

## Description

Previously, FloatUtilsFrame instances were hidden but not disposed when the DockingAPI instance was uninitialised. This meant that hidden windows were lingering longer than they needed to. When this happened, applications that relies on the automatic exit of Swing applications would not exit after all its windows have closed.

This fixes one of the issues mentioned in

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1b7bb10867bd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.