# Issue

**Title:** fix(anlz): Correct waveform data structure bugs and add missing PWVC section

## Description

This is a focused revival of #249, limited to the `anlz` waveform data structure fixes and their tests.

- Fixes `TinyWaveformPreviewColumn` so the height is read from the upper nibble as seen in real files.
- Decodes `WaveformColorDetailColumn` manually and exposes the two fine-height bits instead of treating them as unknown.
- Adds support for the `PWVC` 3-band waveform calibration section.
- Adds Clone/Copy derives needed by waveform consumers.
- Adds unit tests for calibration round-trips, 3-band section round-trips, and RGB detail bit layout.

.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e3722d39866d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.