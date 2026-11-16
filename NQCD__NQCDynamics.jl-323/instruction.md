# Issue

**Title:** added new rescaling method ":vinversion" for SurfaceHopping

## Description

during a frustrated hop in FSSH or IESH, the velocity along the NAC is inverted. 
currently, only rescaling=:off or rescaling=:standard are implemented. "Standard" refers to the 1990 Tully definition, where during a frustrated hop, the velocities are not changed.

rescaling=:vinversion inverts velocity along the NAC vector during a frustrated hop. This is standard practice in most modern surface hopping implementations as it helps with overcoherence in certain scenarios. It is also a crucial element for another SurfaceHopping method I plan to implement soon.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0d22b506cc09`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.