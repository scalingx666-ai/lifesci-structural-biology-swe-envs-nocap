# Issue

**Title:** Improved initial point for saturation pressure

## Description

at the cost of one additional gas pressure evaluation (but probably compensated by less evaluations in the liquid branch), `x0_sat_pure` now interpolates a vdW EoS between a liquid point and a gas point near the spinodal (before, it did the same,but using the second virial coefficient directly). Using a correlation, we can now (mostly, but couldn't found cases were this didn't hold) evade the old branch where the liquid volume couldn't be calculated due to the predicted pressure being too low (happening specially near the critical point).
Furthermore, this now includes a dual spinodal solver that allows better initial points in 0.97 < Tr < 0.995, without the need of calculating the critical point, while still being faster than a `crit_pure` calculation.
this improves dramatically the calculation speed of eos with long chain components. the main focus was to calculate properties of `model = PCSAFT("eicosane")` near the critical point without the need to actually calculate it. 

It also adds some utility functions, mainly an quintic hermite interpolator, used for the spinodal solver

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e91391e25898`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.