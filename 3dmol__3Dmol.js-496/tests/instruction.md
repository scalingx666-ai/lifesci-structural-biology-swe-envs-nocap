# Issue

**Title:** Add a setCameraParameters function to set FOV & CAMERA_Z

## Description

I need to change these parameters as a workaround for #434: using a perspective camera with very small fov and distance to the object feels almost like a perspective camera. 

I tried to make this function generally useful to users of 3Dmol.js, let me know if there are better ways to do something like this!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `50ee98277a88`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.