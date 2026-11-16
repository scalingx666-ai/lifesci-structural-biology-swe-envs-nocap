# Issue

**Title:** Added SphericalIterative() and GradSphericalIterative() to angular_functions.f95

## Description

Added SphericalIterative() and GradSphericalIterative() to angular_functions.f95 as part of a URSS project. The functions use an iterative method for fast computation of spherical harmonics and spherical harmonic derivatives in cartesian coordinates. Functions take a (3, n) array of n cartiesian coordinates, and calculate for all l and m up to l_max (similar to SphericalYCartesian_all()).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7e5cf9439138`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.