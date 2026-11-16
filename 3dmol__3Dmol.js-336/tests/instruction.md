# Issue

**Title:** added some functions to adjust the stereo rendering

## Description

Added getPerceivedDistance to get z distance in the camera coordinates
Added setPerceivedDistance for the user to zoom in or zoom out using the distance value. Not sure if really required since we have zoom function.
Added a function to automatically set the eyeSeparation distance with a 5 degree tilt (seemed like a reasonable value. There is no particular value and it really depends on the user). I can provide an option to take the degrees as input, if required.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `78e78d152d94`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.