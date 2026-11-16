# Issue

**Title:** add triangulated membrane potentials

## Description

The PR adds a popular coarse-grained mesh-based membrane model used in biophysics (e.g. [Vutukuri et al.](https://doi.org/10.1038/s41586-020-2730-x)).
More generally, the commit contains an implementation of a mean-curvature based bending potential for triangulated surfaces [Gompper 1996](https://doi.org/10.1051/jp1:1996246).

It is thoroughly tested and accurately reproduces known physical behavior, such as the membrane fluctuation spectrum.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d546fa9436a8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.