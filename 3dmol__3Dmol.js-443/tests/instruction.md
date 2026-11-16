# Issue

**Title:** Use npm to track dependencies on external libraries

## Description

This is a quality of life improvement change for developers.

The bundled jQuery library had a security vulnerability:
https://snyk.io/test/npm/jquery/3.2.1
Also, removing dependencies from the repo is always a good thing!
mmtf.js doesn't seem to be on npm
and pako_inflate.js looks like it's now called pako but I didn't touch
it yet.

Add the package-lock.json so builds are reproducibles.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9278e21c47ca`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.