# Issue

**Title:** Refresh the phase count after merging duplicate phases

## Description

`_remove_phases!` records `np` before merging duplicate phases. If merging shortens the phase vectors, strategy B can still iterate to the old count and throw `BoundsError`.

Refresh `np = numphases(result)` immediately before strategy B. The regression constructs a two-phase Peng-Robinson state with a duplicated liquid phase, then calls `_remove_phases!` directly. Its six assertions check the duplicate precondition, the final phase count, fractions, compositions, volumes and material balance. It requires no optimizer search or external fixture.

Validation on master `3440a15` with Julia 1.12.6: the regression reproduces `BoundsError` on baseline and passes with this patch alone (6/6). The complete `Tp flash algorithms` testset passes 61/61, including those six checks. The full `api_flash.jl` file and `Pkg.test()` were not run for this standalone patch.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3440a15ba224`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.