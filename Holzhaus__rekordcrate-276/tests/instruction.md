# Issue

**Title:** fix(anlz): correct 3-band waveform field order, add sweep fixture

## Description

## Summary

Fixes the frequency-band field ordering of the 3-band waveform columns, verified against a new test fixture generated from a real frequency sweep:

- `Waveform3BandPreviewColumn` (PWV6) and `Waveform3BandDetailColumn` (PWV7) documented the bytes as (mid, high, low) — following the [djl-analysis docs](https://djl-analysis.deepsymmetry.org/rekordbox-export-analysis/anlz.html#three-band-preview) — but the actual byte order is **(low, mid, high)**.
- Adds `data/anlz/sweep/`: ANLZ analysis files of a track containing a 20 kHz→20 Hz sweep repeated three times (stereo, left channel, right channel). Because the dominant band at any point of the track is known, the fixture pinpoints which byte encodes which band.
- Adds a regression test asserting the band energies at 5% (high), 15% (mid), and 25% (low) of the track duration.

Note that the [djl-analysis documentation](https://djl-analysis.deepsymmetry.org/rekordbox-export-analysis/anlz.html#three-band-preview) itself may need updating (a PR is open at Deep-Symmetry/crate-digger#48 for crate-digger's copy of this documentation (refs Deep-Symmetry/crate-digger#22)).

## Validation

- `cargo test`
- `cargo clippy --all-targets --all-features -- -D warnings`

## Related

- The waveform rendering PR #275 builds on this fix and renders color previews using the corrected band mapping. The combined stacked branch (all preview formats) is drafted as RobinMcCorkell/rekordcrate#2.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `41f790b2692d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.