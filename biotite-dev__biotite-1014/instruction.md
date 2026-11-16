# Issue

**Title:** Speed up `align.score()` by vectorization

## Description

`align.score()` had two slow parts:
- Similarity: a Python triple loop over columns and all sequence pairs, one scalar matrix lookup per pair.
- Gap penalty: a Python loop over every position of every sequence. With `terminal_penalty=False` it also called `find_terminal_gaps()` once per sequence.

Now:
- Similarity: one loop over the first sequence of each pair (*n-1* iterations). Each iteration scores that sequence against all later sequences at once with fancy indexing into the score matrix, or `np.where` for `(match, mismatch)` scoring.
- Gaps: openings and extensions are counted with boolean shifts, the same way `_count_gaps()` in `multiple.py` does it. `find_terminal_gaps()` is called at most once.

The result is unchanged, including the `int` type. I compared old and new output on 43 alignments (real MSA/pairwise and random gapped ones) with BLOSUM62, a random non-symmetric matrix and two `(match, mismatch)` tuples, linear and affine gap penalties, and `terminal_penalty` on and off.

| Input | Before | After | Speedup |
|---|---|---|---|
| pairwise protein alignment (141 columns), BLOSUM62, `(-10, -1)` | 114 us | 17 us | 6.7x |
| same, `terminal_penalty=False` | 133 us | 27 us | 5.0x |
| MSA 50 seqs x 141 columns (`1a00_A_uniref90.a3m`), BLOSUM62, `(-10, -1)` | 41453 us | 1116 us | 37x |
| same MSA, default `(1, -1)` scoring | 27961 us | 811 us | 34x |

Tests run: `tests/sequence/align/test_alignment.py`, `test_align.py`, `test_pairwise.py`, `test_banded.py`, `test_localgapped.py`, `test_multiple.py`, `test_matrix.py`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.