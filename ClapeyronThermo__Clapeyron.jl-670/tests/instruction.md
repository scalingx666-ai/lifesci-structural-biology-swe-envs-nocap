# Issue

**Title:** Stabilize fixed-composition critical points with trace components

## Description

## Scope

Addresses the fixed-composition `crit_mix` trace-component example in #454. This does not resolve its dew-temperature or flash problems and does not implement critical-line tracing (#318).

## Change

Use the concentration-scaled Hessian `B = D H D`, with `D = diag(sqrt(z))`, building its ideal contribution analytically as the identity. For positive reduced compositions, `det(B) = prod(z) det(H)`. Existing `index_reduction` removes zero/near-zero components before this helper is called. The existing unscaled constraint is unchanged for other callers.

The second criticality condition replaces a row associated with a nonzero principal cofactor. Following the scaling concern in review, commit d8539a6 replaces repeated principal-minor determinants with direct primal-valued cofactors for binary/ternary mixtures and one column-pivoted QR for larger mixtures. The ternary branch falls back to QR if all scaled explicit cofactors vanish.

At a simple singular point, the final Q column q spans the nullspace of symmetric B, and `adj(B) = gamma*q*q'`. Choosing the largest absolute coordinate selects the largest absolute principal cofactor there. Replacing that row with the scaled determinant gradient enforces the same directional third-derivative condition. Pivot-selection work is O(n^3), rather than O(n^4) for n dense minors. This is not a complexity claim for the full nested-AD residual. Only the discrete pivot uses primal values; the Hessian and residual derivatives retain their Dual values.

This remains a local fixed-composition Newton solve. Away from a singular root, QR need not choose the largest principal cofactor and can change the Newton trajectory. Multiple-nullity states, global stability and convergence for every mixture are not certified.

## Validation

Julia 1.12.6, upstream base `0ef55a776b31f996e4df726c9ecbb39ecc219186`:

- Final integrated source: 17/17 #454 regression assertions and 27/27 new pivot assertions, clean exit 0. These cover amount scaling, component permutations, zero-component reduction, extreme-range ternary fallback, Float32/BigFloat and nested-Dual gradient/Hessian paths, including QR at n=4.
- Final helper: 260/260 algebra/numeric-type assertions and 1004/1004 extra ternary scale/off-root assertions.
- Additional PR-mixture solutions and reversed-component checks at n=3,4,8: 5/5 each. The n=3 run uses the final ternary helper; n=4 and n=8 exercise the unchanged QR path. An earlier ordinary-compilation n=8 process was killed; the separate `--compile=min -O0` run completed successfully.
- The exact patch was applied to the published parent files, byte-compared to the tested source/test files, reverse-checked and checked for added trailing whitespace.
- The full `test_issues.jl` file plus the new pivot assertions passed 89/89 in a completed `--compile=min -O0` run (45 existing issue assertions + 17 trace-component assertions + 27 pivot assertions). Its earlier ordinary-compilation attempt was killed and is not counted as a pass.
- Full Pkg.test has not completed locally. Hosted CI for current head e5dfb4597d3a24ee3a089f69201d56ce831fdf1a (run 4507, rechecked 2026-11-10): eight of nine matrix jobs passed, including Julia nightly on Ubuntu and macOS. Julia nightly on Windows was cancelled during its test-suite step, so the overall run is cancelled, not fully green. The earlier incomplete-upload coverage snapshot is superseded and is not used as evidence for the current head. Commit e5dfb45 also fixes the nightly symmetric-matrix workspace issue in the QR pivot path; the passing nightly Ubuntu/macOS jobs include that fix. The cause of the Windows cancellation has not been established. 

The original #454 references were independently regenerated with teqp 0.23.2. The four-component reference is T = 434.4622038427447 K, p = 3756580.686250572 Pa, molar volume = 0.00029892641745237863 m3/mol. The other three scaled-Hessian eigenvalues are positive and near one; the normalized criticality residual is at most 1.34e-10.

## Performance evidence and limits

A completed optimized pivot-only benchmark covers n=2 through n=128. On the shared test machine, the new pivot is approximately at parity at n=4, while the published/new median-time ratios are about 2.33x at n=8, 3.85x at n=16, 10.45x at n=32, 16.35x at n=64 and 31.85x at n=128. Pure QR was slower at n=3, motivating the explicit ternary branch.

These are pivot-only measurements, not nonlinear-solver speedups. A separate completed `-O1` ternary residual/Jacobian comparison produced identical values but did not show an overall time improvement on the shared machine; allocated bytes fell by about 30%/13%. Small-matrix QR also has a workspace-allocation cost: at n=4, pivot allocations are higher than for the old minors. Reduced asymptotic pivot work is not a blanket speed or allocation guarantee.

The initial combined default-optimization benchmark was killed while compiling its ternary physical measurements. Its completed rows and interrupted-run receipt are retained, but the process is not reported as a complete successful benchmark. Full-solver performance and a broader mixture convergence survey remain outside this validation.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0ef55a776b31`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.