# Issue

**Title:** tp_flash: residual-based boundary projection to solve #465

## Description

# Fix: Residual-based boundary projection for `tp_flash` near bubble/dew boundary ()

## Summary

This PR stabilizes `tp_flash` at *exact* bubble/dew conditions with trace components by projecting the final solution onto the appropriate single-phase boundary **only when warranted by the Rachford–Rice residuals**. It prevents numerically tiny but visible vapor (or liquid) fractions (e.g., β≈2e-5) from appearing in results that are physically single-phase.

Key points:

* Post-SS/DEM **residual-based projection** using existing `rr_flash_eval`:

  * If `|F(0)| ≤ K_tol` → project to **bubble**: set β=0 and return liquid only.
  * Else if `|F(1)| ≤ K_tol` → project to **dew**: set β=1 and return vapor only.
* **Gated** to avoid overhead in normal two-phase cases:

  * Activate only when the solution is **near a boundary** (`β ≤ cbrt(K_tol)` or `1-β ≤ cbrt(K_tol)`) and the current `K` straddles 1.
  * Single-ended check: evaluate only the residual on the closer boundary (0 *or* 1).

## Problem

At bubble temperature with a trace second component (≈10⁻⁹ mole fraction), the iteration converges to a mathematically valid two-phase solution with an extremely small but **non-zero** β, due to RR geometry:

$$
F'(0)=-\sum_i z_i(K_i-1)^2 \quad(\text{dominated by the trace component if } K_1\approx 1)
$$

In the reported case,
$F(0) ≈ 1×10^{-14}$ while $F′(0) ≈ −1×10^{-9}$, so a machine-precision residual at the boundary maps to a visible interior $β ≈ −F(0)/F′(0) ≈ 10^{-5}$. This is undesirable for reporting and downstream logic that expects a single-phase result.

## Minimal Reproducible Example

```julia
p = 533_336.420062676
T = 326.01032579381365
n = [79.65506153871002, 6.124388331396414e-7, 0, 0]  # 2nd comp ~10^-9 mole fraction
res = Clapeyron.tp_flash2(mix2, p, T, n, RRTPFlash(equilibrium=:vle, verbose=true))
```

Before: `final vapour fraction ≈ 1.98e-5` despite bubble point.
After: **projected to β=0** with “procedure converged to a single liquid phase.”

## What changed (implementation)

* In `Michelsentp_flash.jl`, after SS/DEM convergence:

  * Compute proximity gate `gateβ = cbrt(K_tol)`.
  * If *near boundary* and `K` *straddles 1*, evaluate **one** endpoint residual:

    * `F(0)` if `β ≤ gateβ`, otherwise `F(1)` if `1-β ≤ gateβ`.
  * If `|F(bnd)| ≤ K_tol`, set `β` to the boundary (0 or 1), update `status` accordingly, then **single** `update_rr!` with the possibly projected β.
* Combine the final `update_rr!` with the projection block to avoid duplicate updates.
* Cache `K` extrema (`Kmin_last, Kmax_last`) during the last SS iteration and reuse them in gating (no extra scans).
* **Logs** (verbose mode):

  * `post-SS RR residual F(β) = ... (projected=true/false)`
  * `boundary check(...): |F(0)|=... |F(1)|=... F'(0)≈... β_margin=... gate=...` (diagnostic; only when the gate is entered)

## Why this works

* Uses **the same RR tolerance** `K_tol` that governs β-solve to determine if a boundary solution is valid; no new magic constants.
* Projection is purely residual-driven and only after SS/DEM has converged, so it does not mask convergence issues.
* The **gate** ensures normal two-phase cases incur virtually zero extra cost.

## Performance impact

* **Negligible** in typical runs: the block is skipped unless `β` is within `cbrt(K_tol)` of a boundary *and* `K` straddles 1.
* When triggered, only a single `rr_flash_eval` at one endpoint is performed.

# Also fix: Gibbs energy accumulation logical precedence

* **Bug**: A short-circuit form like `!non_inx[i] || isinf(lnK[i]) && (gibbs += ...)` relied on operator precedence (`&&` binds tighter than `||`), so when `!non_inx[i]` was true the RHS was skipped and `gibbs` was not accumulated
* **Fix**: Make the condition explicit (or parenthesize) so accumulation occurs when **either** predicate holds; apply to both x/y contributions:

```julia
if (!non_inx[i]) || isinf(lnK[i])
    gibbs += (1-β) * x[i] * (log(x[i]) + lnϕx[i])
end
if (!non_iny[i]) || iszero(exp(lnK[i]))
    gibbs += β * y[i] * (log(y[i]) + lnϕy[i])
end
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bd1b28dff85a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.