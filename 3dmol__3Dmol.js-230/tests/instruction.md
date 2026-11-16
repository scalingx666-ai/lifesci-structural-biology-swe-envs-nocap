# Issue

**Title:** resolves issue #229

## Description

Both this:
viewer.addSurface("VDW", {opacity:0.85, voldata: data, volscheme: new $3Dmol.Gradient.RWB(-10,10)},{chain:'A'},callback);

and this work:
viewer.addSurface($3Dmol.SurfaceType.VDW, {opacity:0.85, voldata: data, volscheme: new $3Dmol.Gradient.RWB(-10,10)},{chain:'A'},callback);
See test # 19.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ff5faafe333e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.