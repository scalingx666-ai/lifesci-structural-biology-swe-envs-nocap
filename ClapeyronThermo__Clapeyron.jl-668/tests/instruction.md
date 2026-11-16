# Issue

**Title:** Use pressure consistently in multiphase split Gibbs checks

## Description

Related to #664.

For the reported Peng-Robinson mixture at 255 K and 5 MPa, `MultiPhaseTPFlash(full_tpd = true)` can reject a favorable split and stop at a three-phase state with a negative-TPD trial.

`split_phase_tpd` passes the trial volume `vw`, rather than pressure `p`, to two `modified_gibbs` calls. This patch changes those two arguments to `p` and adds an eight-assertion regression in `test/methods/api_flash.jl`. The test checks split-energy consistency and the four-phase flash result, including material balance, fugacity consistency and the known trial's TPD. The trial phase is not used to initialize the flash.

Validation on master `3440a15` with Julia 1.12.6: the regression fails on baseline (4/8 assertions fail) and passes with this patch alone (8/8). The complete `Tp flash algorithms` testset passes 63/63, including those eight checks. The full `api_flash.jl` file and `Pkg.test()` were not run for this standalone patch.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3440a15ba224`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.