# Issue

**Title:** Show a scale bar in the 3D view with the orthographic camera

## Description

<!-- claude-projects-attribution: {"github_login":"andeplane"} -->
_Requested by **Anders Hafreager** · [project thread](https://claude.ai/code/project/chan_01G7VSoPZwxUhEt8N3Ft8nF9?thread=cmsg_01G7VSoPZwxUhEt8N3Ft8nF9Pywr46zeLgPABfk6rjQTj9)_

Before: the 3D view gave no sense of how large molecules or the simulation box are.

After: with the orthographic camera and the new "Show scale bar (orthographic camera)" setting on, a bar in the bottom-right corner shows a round length (1, 2 or 5 × 10ⁿ) labelled with the script's length unit (Å for real/metal, σ for lj, and so on). It follows zoom, resize and camera switches, and is hidden in perspective mode or when the setting is off. The setting is off by default.

How: a pointer-transparent HTML overlay polls the active camera every animation frame and computes length per pixel as frustum height ÷ zoom ÷ viewport height. omovi has no public camera getter, so `View.tsx` reads `visualizer["camera"]` in one commented place. The unit comes from the unit style LAMMPS already reports (`simulationStatus.unitStyle`) via `UNIT_SYSTEMS`; until LAMMPS prints it, the label is just the number so it's never wrong. The overlay uses the shell's media-control design tokens like the other viewport controls. Unit tests cover the rounding and per-pixel math, the overlay, the show/hide rules, the unit label and the new setting. Checked in headless Chromium on the 2D LJ fluid example: the bar appears with the orthographic camera, read "2 σ" when zoomed in, rescales on zoom and resize, and disappears in perspective mode.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

https://claude.ai/code/session_01HB39E3Y4jpon2ijSXT7emN

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4c3d49aea46f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.