# Issue

**Title:** Deprecate `dynamic_tab`

## Description

Pretty much everything that can be achieved with dynamic tabs can also be achieved with your own `TabViewer` implementation. Also, extending APIs like the `TabViewer` requires added maintenance in this module which most contributors forget about anyway. That added maintenance can also be annoying with support of features like #43.

Because of that, I think it's safe to deprecate and later delete this module altogether.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3d823d2b8e2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.