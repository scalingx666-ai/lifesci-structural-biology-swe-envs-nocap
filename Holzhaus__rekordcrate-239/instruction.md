# Issue

**Title:** feat(anlz): Add Support for 3-Band Waveforms

## Description

This PR does the following:
1. Adds ``Waveform3BandPreview``, ``Waveform3BandPreviewColumn``, ``Waveform3BandDetail``, and ``Waveform3BandDetailColumn`` structs based on the information [here](https://djl-analysis.deepsymmetry.org/rekordbox-export-analysis/anlz.html#three-band-preview) and [here](https://djl-analysis.deepsymmetry.org/rekordbox-export-analysis/anlz.html#three-band-detail)
2. Adds ``Waveform3BandPreview`` (magic ``PWV6``) and ``Waveform3BandDetail`` (magic ``PWV7``) to ``ContentKind``
3. Adds``Waveform3BandPreview`` and ``Waveform3BandDetail`` to ``Content``
4. Cleans up a the documentation around the Waveforms to make the comments point to the correct links and have consistent descriptions

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `20f026777000`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.