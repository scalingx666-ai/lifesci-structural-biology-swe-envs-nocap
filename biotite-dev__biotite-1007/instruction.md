# Issue

**Title:** Speed up `get_sequence_identity()` and `get_pairwise_sequence_identity()`

## Description

- `get_sequence_identity()` ran `np.unique()` once per alignment column in a Python loop. The match count is now a single vectorized check that all codes in a column are equal and not a gap.
- `get_pairwise_sequence_identity(mode="not_terminal")` called `find_terminal_gaps()` on a sliced alignment for each of the *n²* sequence pairs. It now calls it once per sequence and gets the pairwise overlap with `np.maximum` / `np.minimum` broadcasting.
- `get_pairwise_sequence_identity(mode="shortest")` filled the length matrix in a Python double loop. It now uses `np.minimum` broadcasting.

Return values and dtypes are unchanged. I compared old and new output for every mode (including an invalid one) on 30 random gapped alignments, real MSAs and a non-overlapping alignment.
One minor difference: if a sequence in the alignment is all gaps, the `not_terminal` mode now always raises the `IndexError` from `find_terminal_gaps()`. Before, a `ValueError` for an earlier non-overlapping pair could have been raised first.

| Input | Before | After | Speedup |
|---|---|---|---|
| `get_sequence_identity()`, pairwise protein alignment (141 columns) | 212 us | 17 us | 12.7x |
| `get_sequence_identity()`, MSA 50 seqs x 141 columns (`1a00_A_uniref90.a3m`) | 453 us | 188 us | 2.4x |
| `get_pairwise_sequence_identity()` (`not_terminal`), same MSA | 23992 us | 732 us | 33x |
| `get_pairwise_sequence_identity(mode="shortest")`, same MSA | 1014 us | 318 us | 3.2x |

Tests run: `tests/sequence/align/test_alignment.py` and the `biotite.sequence.align` doctests.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.