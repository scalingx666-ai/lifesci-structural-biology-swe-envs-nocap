# Issue

**Title:** perf: accelerate periodic bond candidate search

## Description

## Summary

- Use a periodic SciPy cKDTree to bound candidate discovery for the default Open Babel path on safe axis-aligned orthorhombic cells with at least 2048 atoms.
- Preserve Open Babel insertion and cleanup semantics, including skipping zero-valence elements before insertion; use the historical path for equal-z ordering, rounded upper-box coordinates, and unsupported or numerically ambiguous geometry.
- Declare SciPy directly and add differential, fallback, and dispatch tests.
- Add a fixed-seed 2048-atom benchmark through `_getbondfromcrd`, checking eligibility and molecule-record equivalence before timing. The existing three-atom detection benchmarks do not enter the accelerated branch.

## Validation

- Local source-snapshot detection suite: 38 existing tests passed; the new large-frame benchmark test passed separately.
- Four 2048-atom cases through actual baseline/PR dispatch: matching molecule records for HHAr, equal-z PFFFFFH, rounded upper-boundary coordinates, and seeded mixed elements.
- Ruff lint, format check, and `git diff --check` passed for the test-only follow-up.
- Local diagnostics used Python 3.12.7 and Open Babel 3.1.0 with a shared existing native extension; CI provides the installed-package validation with Open Babel 3.2.1.
- Latest [tox run](https://github.com/deepmodeling/reacnetgenerator/actions/runs/34079533631): 179 passed, 6 xfailed, 4 xpassed, including all 39 detection tests.
- Latest [benchmark run](https://github.com/deepmodeling/reacnetgenerator/actions/runs/34079533605): 10 benchmarks collected, including the new large-frame case. The CodSpeed performance gate passed on `79c4862`.

## Bounded performance check

For a synthetic 2048-atom H/C/N/O frame in a 40 Å periodic cube (NumPy seed 2026), baseline and PR molecule records matched. Three interleaved measurements per implementation gave median times of 43.7 ms and 11.6 ms (about 3.77x). Individual times ranged from 41.7–62.1 ms and 11.4–21.2 ms. This is a small local smoke test, not a production-performance claim.

The CodSpeed report for `13190d7` flagged HMM/import/CLI regressions with explicit runtime-environment warnings. The preceding `38abeca` run, which had identical production code, reported improvements in all nine benchmarks. Installed dependency versions matched, while hosted-runner regions differed. Fixed-input local base/head comparisons did not reproduce those regressions; this supports an environment-related explanation without establishing the exact cloud-side cause. The reported improvement on the existing three-atom test is not evidence for the new acceleration.

The latest test-only follow-up again passed the performance gate without changing the production algorithm. Runtime-environment warnings remain. The new large-frame case measured 18.7 ms in CI and has no historical baseline yet, so its CI result does not establish a speedup ratio.

The three original correctness review threads remain available for maintainer re-review. The latest CodeRabbit status says "Review rate limited" and is not a fresh completed review.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Performance**
  * Improved bond detection speed for large periodic structures in supported orthorhombic cells.

* **Bug Fixes**
  * Improved handling of periodic boundaries and edge-case coordinates.
  * Preserved reliable fallback behavior when accelerated detection is unavailable or ambiguous.
  * Correctly handles zero-valence atoms without losing valid bonds.

* **Dependencies**
  * Added SciPy as a project dependency.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `01e1f3315d11`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.