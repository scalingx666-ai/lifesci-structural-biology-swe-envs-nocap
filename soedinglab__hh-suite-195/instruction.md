# Issue

**Title:** Memory sanitizer issues

## Description

This patch fixes the issues in HHblits tool that have been detected with Clang memory sanitizer (MSAN) which detects the use of uninitialized values and similar misuses of memory access.

Firstly it has confirmed that the latest error in hhviterbialgorithm.cpp (#193) is indeed reported by MSAN. However it also showed that the fix was incomplete &ndash; upper limit of for() loop was wrong.

Secondly it revealed that pred_index and dssp_index arrays are indexed from 0 in hhviterbialgorithm.cpp but filled from 1 in HMMSimd::MapHMMVector.
Also these arrays were not properly filled when HMM in incomplete (i.e. hmms.size < VECSIZE_FLOAT).

After these fixes MSAN doesn't report any warnings during my tests (1 and 2 iterations of HHblits search in PfamA with a large HMM, the test that triggered SEGFAULTs in #193 issue).
Nevertheless please check the changes while considering merge of this pull request, I did my best in verifying this code but it's still highly non-trivial.

This pull request also has two changes for suppressing false warnings from MSAN: zeroing new index structure in ffindex.c and string initialization of character arrays in HMM::HMM() constructor.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4cd24f67f365`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.