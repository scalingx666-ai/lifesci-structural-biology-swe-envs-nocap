# Issue

**Title:** Fix stack buffer overflow in BATCH record writing

## Description

## Summary

- Fix stack-buffer-overflow in `Mtz::write_to_stream()` when writing BATCH header records with 13+ batches per line
- `snprintf_z(buf + 78, 7, ...)` writes 7 bytes past offset 78 in an 81-byte stack buffer, touching 4 bytes of adjacent stack memory
- Confirmed by AddressSanitizer (overflow at `stb_sprintf.h:1409` via `stbsp__clamp_callback`)

## Root cause

The BATCH record loop had two intertwined issues:

1. `pos += 6` was executed **before** `snprintf_z(buf + pos, ...)`, so `pos` pointed to where the batch number was written rather than past it. The subsequent `memset(buf + pos, ' ', 80 - pos)` would overwrite the just-written number.
2. The flush condition `pos > 72` triggered one iteration too late — at `pos = 78`, the `snprintf_z` had already overflowed before the check.

## Fix

- Set `pos = 6` after writing the "BATCH " prefix (instead of sharing `pos += 6` with batch numbers)
- Write batch number at `buf + pos`, then advance `pos += 6`
- Flush when the **next** number would not fit: `pos + 6 > 80`

This keeps at most 12 batch numbers per line (6 + 12×6 = 78 chars, padded to 80), matching the MTZ 80-column record limit, with no out-of-bounds access.

## Testing

Round-trip test (write + read-back) with 7440 batches (620 BATCH lines) passes cleanly under AddressSanitizer. The original code triggers `ERROR: AddressSanitizer: stack-buffer-overflow` on the same input.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `caec9d14a84a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.