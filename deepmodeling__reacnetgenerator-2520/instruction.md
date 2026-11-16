# Issue

**Title:** perf: retain periodic acceleration for independent z ties

## Description

Rounded trajectories can contain equal-z atoms in unrelated molecules. Current master disables periodic cKDTree acceleration for the whole frame whenever any z tie exists. This change checks the accepted candidate graph and keeps acceleration when all equal-z atoms belong to different connected components. Ties within a component, including indirect and periodic connections, retain the native Open Babel fallback.

The production change is confined to `_detect.py`. Candidate components bound the connectivity that insertion and cleanup can retain, so independently tied components preserve their internal insertion order. Sparse component analysis runs only when z ties are present.

Measured against official `master` at `8dced234`, using identical dependencies and a shared rebuilt native extension on Linux (Open Babel 3.2.1, h5py 3.14.0). Each real window has 5,001 frames and 2,600 atoms, with 32 workers, HMM disabled and `miso=1`; medians use three alternating base/candidate repeats:

| Window | Base DETECT–MATRIX | Candidate | Change |
| --- | ---: | ---: | ---: |
| Early | 94.806 s | 49.410 s | −47.9% |
| Middle | 103.979 s | 57.224 s | −45.0% |

Candidate-eligible frames increase from 50/5,001 to 4,290/5,001 and from 40/5,001 to 4,401/5,001. The remaining 711/600 fallbacks include the six early-window frames previously sensitive to unconditional tie-breaking; exact bond orders and presence intervals match the official baseline.

Validation:

- 13 new regression cases cover isolated/disconnected ties, shuffled aromatic rings, overvalent cleanup, zero-valence elements, phosphorus, indirect/periodic ties and the real dispatch threshold.
- Full non-GUI suite: 635 passed, 6 GUI deselected, 6 xfailed, 3 non-strict XPASS.
- All 50 synthetic kernel samples match original Open Babel molecule records. All 14 pipeline outputs pass the native HDF5 validator; all 7 pairs match exact labels, graphs, ranges, counts and event evidence after normalizing internal IDs/table order.
- The published comparison helper rejects deliberate valid-schema timestep/bond-order edits and a species-population text edit.
- Full repository pre-commit hooks, pinned `ty==0.0.15`, wheel build and isolated wheel-install smoke check pass.

The retained-fallback synthetic control is 0.8% slower in median (about 1.9 ms); the small-input difference is about 3 µs. These controls are retained in the report. Measurements cover bounded windows on one Linux host; cross-platform performance and a complete production trajectory were not measured.

See the [benchmark report and reproduction commands](https://github.com/hcustc/reacnetgenerator/blob/a43c9e51353832ff12af62291a2b6f0a1d020f5c/benchmarks/equal_z_candidates.md) and [all raw measurements](https://github.com/hcustc/reacnetgenerator/blob/a43c9e51353832ff12af62291a2b6f0a1d020f5c/benchmarks/equal_z_candidates.csv).

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Improved periodic bond-candidate detection when atoms share a z-coordinate but belong to separate candidate groups, allowing these cases to use the accelerated path.
* **Bug Fixes**
  * Preserved compatibility with Open Babel for equal-z atoms connected directly or indirectly, including connections across periodic boundaries.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8dced2340189`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.