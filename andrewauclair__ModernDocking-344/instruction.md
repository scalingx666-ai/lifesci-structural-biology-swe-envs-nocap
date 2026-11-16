# Issue

**Title:** Transparency Fix

## Description

It appears that BufferStrategy on Windows does not have a transparent background. The documentation states that the background is system-dependent. Everything I read online claims that BufferStrategy does not support transparency, but it clearly does on Linux.

Modern Docking will now use the renderPanel all the time on Windows. On Linux, it will use the renderPanel if multi-buffer support is available and the BufferStrategy if it does not. This appears to work as expected on my test machines (the flickering is not back).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a872f9729741`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.