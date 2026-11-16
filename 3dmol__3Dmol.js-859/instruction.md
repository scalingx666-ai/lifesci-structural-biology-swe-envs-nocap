# Issue

**Title:** Sphere fold animationReplay coordinates into existing geometry instead of rebuilding: setFrame({fast})

## Description

**Summary**
Adds a coordinate-replay path for trajectory playback. `GLModel.syncAtomPositions()` / `syncSphereRadii()` rewrite position and radius data in the existing geometry buffers and respecify them with `bufferSubData`; `setFrame(framenum, {fast: true})` — also `GLViewer.setFrame` and `animate({fast: true})` — uses it, falling back to the normal rebuild whenever the replay can't apply. **Off by default; nothing changes for existing callers.** Spheres, sticks and lines are covered, including the per-atom-opacity path from #858; surfaces and cartoon are derived from coordinates and always rebuild.

**Why**
`setFrame` swaps the atom list and nulls `molObj`, so every frame regenerates all geometry — style resolution, colours, radii, face indices, fresh typed arrays at full group capacity, full upload — although only positions moved.

**How it works**
Every position the model emits is `a1 + (a2 − a1)·t` for some pair of atoms. During a build each emitted span is recorded (group, array, offset, count, atom indices, t); replay resolves the indices against the model's current atom list, rewrites those slots, and flags only the position buffers dirty. Anything the recipe can't express (multi-bond side offsets) marks it incomplete, the replay refuses, and `setFrame` rebuilds instead. ~170 lines of code, about a third comments.

**Measurements**
Ryzen 5 7640HS / Radeon 760M (ANGLE, D3D11), Chrome, 100 frames × 3 repeats, ball-and-stick, medians. Both paths are hash-verified to have drawn identical geometry before any number is reported.

| atoms | `setFrame` rebuild | `setFrame({fast})` | speedup | allocated / frame |
|---|---|---|---|---|
| 1,833 | 5.1 ms | 1.9 ms | 2.7× | 8.1 MB → 0 |
| 13,793 | 30.6 ms | 11.2 ms | 2.7× | 12.3 MB → 0 |
| 20,572 | 44.8 ms | 13.1 ms | 3.4× | 16.3 MB → 0 |

A no-allocation variant build isolates the memory cost (allocation + zero-fill + GC) at 6–10% of the rebuild frame; the rest is regeneration of unchanged values. The benchmark is self-contained and runs from this repo's own test fixtures with no network — method, limits and the variant recipe: https://github.com/jaysoma/3Dmol.js/blob/bench-animation/bench/animation/README.md

**Limits, stated**
- Replay resolves atoms by index, so it assumes the same atoms in the same order across frames — a trajectory's definition. A different atom count makes it refuse and rebuild.
- Topology is held fixed across frames. `setFrame` today re-derives bonds by distance each frame, so under large motion the two paths can differ; on the 29-frame fixture (`tests/auto/data/temp_1_2_28.pdb`, atoms moving up to 12 Å) bonds flicker between frames under the rebuild and hold under the replay. For MD data the fixed topology is the intended one. That's why `fast` is opt-in — happy to change the default or the option's shape to whatever fits the API.

**Demo**
A 20,572-atom AlphaFold model with synthesised frames (every atom moves every frame), same switch, cold start each time. Dashboard shows frame time, bytes allocated per frame, main-thread busy share and rate.
Using existing path:
https://github.com/user-attachments/assets/e72d47a7-ac13-40ca-9e59-e9cbd2c1942f
Using fast-path
https://github.com/user-attachments/assets/ffd5223f-0021-48de-ab63-b3375fe4c8f8

Same switch on the repo's 29-frame fixture (tests/auto/data/temp_1_2_28.pdb)
Using existing path:
https://github.com/user-attachments/assets/3ba3e4ec-bc29-4ad6-9beb-19e0ac69d652
Using fast path:
https://github.com/user-attachments/assets/ef310022-3bf1-478d-bfe8-c0ac8cd754e9


FoldView (built on #858) is where the redundancy first showed up.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3e5dcbe00663`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.