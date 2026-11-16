# Issue

**Title:** Add a periodic images control to the 3D view

## Description

<!-- claude-projects-attribution: {"github_login":"andeplane"} -->
_Requested by **Anders Hafreager** · [project thread](https://claude.ai/code/project/chan_01G7VSoPZwxUhEt8N3Ft8nF9?thread=cmsg_01G7VSoPZwxUhEt8N3Ft8nF9Pywr46zeLgPABfk6rjQTj9)_

Before: the 3D view stopped at the simulation box edge, so crystals and other periodic structures looked cut off.

After: an "Images 1×1×1" control next to "Color atoms" sets how many copies to draw along x, y and z. Copies of atoms and bonds are shifted by the box vectors (triclinic boxes included), keep each atom's color, follow the running simulation, and are display-only. 1×1×1 renders exactly as before.

How: `SyncParticlesModifier` appends the copies after the real atoms using shifts computed from the streamed frame's `boxMatrix` (`src/modifiers/periodicImages.ts`); copies reuse their atom's ID, so per-ID colors, radii and selection apply to every copy, and clicking a copy selects the real atom. `SyncBondsModifier` copies bonds with the same shifts, and `ColorModifier` and the bond count only look at real atoms. The total is capped at 500,000 drawn atoms and 10 copies per axis, reducing the largest axis first, and the control shows the reduced count. Unit tests cover the shift math for orthogonal and triclinic boxes, the copying, the cap and colors. A new e2e spec (`e2e/periodic-images.spec.ts`) runs a triclinic fcc crystal at 2×2×1 and checks 256 → 1024 drawn atoms with copies exactly one box vector apart; it passed in Chromium locally, though only with longer waits on an overloaded machine. The same check was done by hand in the browser, including that copies follow the run and 1×1×1 restores 256 atoms.

Known limitations: copies extend only in the positive direction, the box wireframe is drawn around the original box only, the camera doesn't re-frame to fit the copies, and the setting persists for the browser session like the color setting.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

https://claude.ai/code/session_01HB39E3Y4jpon2ijSXT7emN

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7a073548722a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.