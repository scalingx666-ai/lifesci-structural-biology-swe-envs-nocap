# Issue

**Title:** don't leave dir unchanged in case of error

## Description

The except block will get triggered every time somebody installs this directly using pip, and that leaves the current directly in a dirty state, which breaks any code that assumes the cwd is in the current directory.

This fix just ensures that the current working dir is unchanged, regardless of what happens.

A good way of handling versions that avoids all this trouble (and works in all cases, including when the app is installed from a tarball) is to use python-versioneer: https://github.com/warner/python-versioneer.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `902979054959`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.