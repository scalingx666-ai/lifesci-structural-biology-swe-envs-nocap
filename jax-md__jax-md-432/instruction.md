# Issue

**Title:** Document output shapes and arguments of quantity.pair_correlation

## Description

.

Rewrites the docstrings of `quantity.pair_correlation` and `quantity.pair_correlation_neighbor_list`. Only docstrings change; with the docstrings blanked, the syntax tree is identical to `main`.

**Output format (the main ask in #219):** the docstrings now cover all four return cases:
- no species: an array of shape `[N, num_radii]`
- with species: a list of `num_species` arrays, each `[N, num_radii]`, where array `s` counts only neighbors of species `jnp.unique(species)[s]`
- `compute_average=True` without species: `[num_radii]`
- `compute_average=True` with species: `[num_species, num_species, num_radii]`, where entry `[s, t]` is the average over particles of species `t`

**Fixes to the existing text:**
- The Gaussian smoothing formula now matches the code: g_i(r) = r^(1−d) · Σ_{j≠i} exp(−(r − r_ij)² / 2σ²). The old version put the exponential in the denominator and was missing the square. The docstrings also note that the result is not normalized by density.
- `\\neq` and `\\approx` in the raw docstring rendered as line breaks.
- Fixes the `sigima` typo, documents `compute_average`, and gives shapes and meanings for `radii`, `sigma`, `eps` and `species`. The neighbor-list version now states its cutoff, `max(radii) + sigma`.
- Adds a short `Example:` section to each.

**Verification:**
- Every documented shape and index convention matches a brute-force calculation, with uneven, out-of-order species labels and with both Dense and Sparse neighbor lists.
- For an ideal gas, the averaged output matches ρ·S_d·√(2π)·σ to within 1% in 2D and 3D.
- The examples run in float32 and float64.
- A Sphinx autodoc and napoleon build with `-W` passes.
- `ruff check`, `ruff format` and `JAX_ENABLE_X64=1 pytest tests/quantity_test.py` (86 passed) all pass. `ty check --error-on-warning jax_md/quantity.py` is clean.

Two things I noticed but left out to keep this PR focused (happy to send follow-ups):
- `pair_correlation_neighbor_list` accepts `fractional_coordinates` but never forwards it to `partition.neighbor_list`.
- `notebooks/tutorial/Chapter_2_Physical_Quantities.ipynb` has the same incorrect Gaussian formula.

A repo-wide `ty check --error-on-warning` reports 123 diagnostics in other files with the locked JAX 0.12. They exist on `main` too and are unrelated to this change.

cc @cpgoodri, since you offered to take this in 2022. Happy to adjust if you had something else in mind.

## Checklist

- [x] Tests added/updated and passing (docs-only; existing tests pass)
- [ ] Appropriate labels added to PR (I can't add labels from a fork; `documentation` would fit)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `144cd423138b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.