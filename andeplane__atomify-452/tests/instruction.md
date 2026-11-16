# Issue

**Title:** Add a slice control to show only atoms within a slab

## Description

<!-- claude-projects-attribution: {"github_login":"andeplane"} -->
_Requested by **Anders Hafreager** · [project thread](https://claude.ai/code/project/chan_01G7VSoPZwxUhEt8N3Ft8nF9?thread=cmsg_01G7VSoPZwxUhEt8N3Ft8nF9Pywr46zeLgPABfk6rjQTj9)_

Before: there was no way to see inside a bulk system; interior features like crack tips and defects were always hidden behind the surface.

After: a "Slice" button on the run screen opens a small panel with a plane normal (x, y, z or a custom vector), a position, a width and an invert option. Only whole atoms inside the slab are drawn, and bonds with an end outside it are hidden too. The slab follows the running simulation and updates immediately when moved, also while paused. With it off, rendering is unchanged.

How: a new `SliceModifier`, registered in `EngineRegistry.createDefaultModifiers()` after Colors and included in the rendering-only pass, hides atoms by setting their per-atom radius to zero through `particleAttributes.ts`; the picking shader reads the same radius, so hidden atoms can't be clicked and visible ones still pick the right ID. Clipping planes were rejected because they cut spheres in half and don't hide bonds. Only slots whose hidden state changed are rewritten on the GPU, and switching off restores radii once. The slice is turned off in `runHost.beginFreshRun` (not on continuations), since its position is in absolute box units. The Slice button sits in `RunDetailHeader` next to "Color atoms", and its popover picks left or right alignment from the space available so it never pushes the run column into a horizontal scroll. Unit tests cover slab selection (axes, custom and tilted normals, edges, invert), hiding and restoring atoms and bonds, the box-range helper including triclinic boxes, the popover alignment choice and the fresh-run reset. Checked in Chromium on a 216-atom lattice with 540 bonds: every atom's and bond's radius matched the slab for z, invert, moving the slab while running and while paused, and switching off; the popover stayed inside the run column at 900–1440 px.

Merge note: the slice tests drawn positions per draw slot rather than LAMMPS atom indices, so it also slices the periodic image copies from #449 (appended inside the Particles step, before Slice). Both PRs change `src/rendering/particleAttributes.ts` and the modifier list in `EngineRegistry`, so whichever merges second needs those reconciled: hidden flags are per slot here, while #449 makes per-ID styles reach every copy.

Known limitations: the panel closes on any click outside it (including dragging the view); position/width are in absolute box units with a ±50 slider fallback before the box is known; below roughly 800 px the run column is narrower than the panel.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

https://claude.ai/code/session_01HB39E3Y4jpon2ijSXT7emN

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e4888dd1af92`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.