# Issue

**Title:** Implementation of COFFEE

## Description

This is an initial draft for an implementation of the COFFEE equation of state. I am following this paper for now: https://doi.org/10.1016/j.ces.2017.08.025 although we can switch to the latest ones done the line.

Some issues I've run into:
* I found an analytical equation for `∫odr`. Unfortunately, it is wildly unstable and diverges when shift=0 and xi1=xi2=-1,1. Im not sure if it could be written in a more stable way...
* Propagating derivatives through O(w1,w2) requires that df_nf / dO=0. However, there are some subtleties with higher order derivatives.
* For the moment, I can't reproduce the results from the paper. This is mainly because, as we increase density, the pressure does not become positive again (i.e. the dipolar interactions are too strong). I'm not sure why this might be.

Some things of note:
* Instead of using trapezium rule, I used Gauss-Legendre since I felt that this would be more stable. I dont know if one is allowed to use it this way for multivariate functions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `78984df721d7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.