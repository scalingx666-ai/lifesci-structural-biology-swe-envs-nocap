# Issue

**Title:** Add files to gitignore and improve building on linux platforms.

## Description

Catching a few quick things.  First, usually you want to ignore all your intermediate build files and resulting binaries.  Second, this should catch my case on Arch Linux where any notion of LSB is just not a thing.  It should also prove more stable for building in future releases of Ubuntu as well.

Granted, pulling in static libraries like you are is probably not the best thing to do.  You should consider switching to shared libraries or a build time switch.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `144b71eafdfd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.