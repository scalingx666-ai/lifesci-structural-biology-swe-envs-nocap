# Issue

**Title:** Enhancement of Kabsch-based routines to work with weighted data

## Description

Hi,

Thanks for a useful little package. If you are interested, I have tweaked the Kabsch-related least-squares fitting routines to accept an optional weights argument, so that, for example, the routines can be used for mass-weighted fitting. I've also added a utility function "Kabsch_fit()", so:

nP = kabsch_fit(P, Q. W)

results in nP being a copy of P least-squares fitted to Q, weighted according to W.

I added a couple of relevant tests as well.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cd8af499fb63`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.