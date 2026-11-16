# Issue

**Title:** Improve performance of `lddt()` computation with `symmetric=True`

## Description

# Speed up symmetric `lddt()`

Two independent optimizations in the symmetric `lddt()` hot path: the contact
deduplication in `compare.py` and the segment position lookup in `segments.py`.
Together they reduce the runtime for a large structure from **50.42 s to 9.84 s
(5.1x)**, with an unchanged result.

## 1. Contact deduplication

When `lddt()` runs with `symmetric=True`, the contacts found in the reference and in
the subject are concatenated and deduplicated. For all-atom structures at the default
15 Å inclusion radius this list reaches tens of millions of pairs, and the
deduplication dominated the total runtime.

The previous implementation called `np.unique(contacts, axis=0)` — a lexicographic
sort over the rows of the full *directed* pair list — and only afterwards discarded the
redundant `(j,i)` half via the `i < j` filter.

This PR introduces `_unique_contacts()`, which applies two changes:

1. **Canonicalize pair order first.** `min`/`max` along the pair axis brings each
   contact into `i < j` form with a cheap vectorized operation, halving the array
   *before* the expensive deduplication instead of after it.
2. **Deduplicate on a 1D integer key.** Each pair is encoded as a single `int64`
   (`lower * n_atoms + upper`), so `np.unique()` operates on a 1D array instead of
   performing a row-wise lexicographic sort.

The canonicalization is only applied where the `i < j` assumption already held before
(`aggregation="all"` and no `atom_mask`/`partner_mask`); the faster 1D deduplication is
used in all symmetric cases. The non-symmetric path keeps its plain boolean filter,
since canonicalizing there would replace a cheap filter with a sort.

Deduplication step in isolation (1AON, ~49.7 million directed contacts):

| Implementation | Time | Speedup |
| --- | --- | --- |
| `np.unique(contacts, axis=0)` (before) | 43.12 s | — |
| 1D `int64` key only | 10.35 s | 4.2x |
| Canonicalization + 1D `int64` key (this PR) | 6.48 s | **6.7x** |

## 2. Segment positions

With the deduplication fixed, `get_segment_positions()` became the next hotspot: it is
called by `_find_contacts()` via `get_residue_positions()` to filter out contacts within
the same residue, i.e. with one index per contact atom.

It resolved each index with `np.searchsorted()`, a binary search whose per-index
`log2(n)` dependent branches make it cache-unfriendly for large index arrays. When there
are at least as many indices as atoms, it is now cheaper to build the same lookup table
that `get_all_segment_positions()` already provides — linear in the number of atoms —
and gather from it. For fewer indices the binary search is kept, so the table is only
built where it amortizes.

`get_segment_starts_for()` used the same binary search and merely maps the positions
back to the corresponding start indices, so it now delegates to
`get_segment_positions()` and inherits the same threshold. This removes the duplicated
index validation as a side effect.

The signatures and semantics are unchanged.

| | Time |
| --- | --- |
| `get_segment_positions()` before | 4.15 s |
| `get_segment_positions()` after | **0.18 s** (~24x) |

`get_segment_starts_for()` is not part of the `lddt()` path, but benefits equally
(1AON, 58,674 atoms):

| Number of indices | Before | After | Speedup |
| --- | --- | --- | --- |
| 5,867 (below threshold) | 0.27 ms | 0.26 ms | 1.01x |
| 58,674 | 2.69 ms | 0.21 ms | 13.0x |
| 586,740 | 25.76 ms | 1.22 ms | 21.0x |

## Benchmarks

Structure: **1AON** (GroEL/GroES, 58,674 protein atoms), symmetric lDDT.
End-to-end `struc.lddt(reference, subject, symmetric=True)`:

| | Time | Cumulative speedup |
| --- | --- | --- |
| Before | 50.42 s | — |
| After contact deduplication | 15.42 s | 3.3x |
| After segment positions (this PR) | **9.84 s** | **5.1x** |

The score is bit-identical (`0.833558`) throughout. Timings are averages over
several runs.

Note that the measurements were taken with an editable install, where the Rust
extension (and therefore `CellList`) is built in debug mode. The optimized code is pure
NumPy, so the relative end-to-end gain in a release build is expected to be somewhat
larger than the 5.1x reported here.

After both changes the remaining runtime is dominated by NumPy's `unique` on the
contact keys (~5.3 s) and the `CellList` neighbor search (~1.2 s, debug build).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `06ca1c349a32`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.