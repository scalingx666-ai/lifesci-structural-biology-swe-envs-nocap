# Issue

**Title:** Per-atom sphere opacity for imposters, with a sorted translucent path

## Description

Implements #166 for the sphere imposter path: opacity is now honored per atom
from style, the same way color already is.

```js
viewer.setStyle({}, {sphere: {}});                       // opaque protein
viewer.setStyle({resi: [45, 46]}, {sphere: {opacity: 0.25}});  // ghost the flexible loop
```

## Approach

The issue proposed `#define`-switched shader variants for single vs per-vertex
opacity. This PR reaches the same "don't pay for it when you don't use it"
goal without a shader permutation matrix, using a generic vertex attribute
instead:

- The sphere-imposter shaders gain a per-vertex `alpha` attribute
  (`sphereimposter.vert`/`.frag`). When a geometry group has no alpha buffer,
  the attribute stays disabled and is fed a generic constant of 1.0
  (`vertexAttrib1f`) — no array is allocated, nothing extra is uploaded, and
  geometries that share the shader but never set per-atom opacity (e.g.
  imposter stick caps) are untouched.
- Whole-model opacity is unchanged and renders bit-identically: the material
  path keeps the shader's existing `opacity*opacity` response curve. Per-atom
  alpha applies linearly (`opacity*opacity*vAlpha`) so `opacity: 0.25` on an
  atom reads as a quarter-strength ghost, and 1.0 is exactly the old pixel.

## Rendering translucent atoms correctly

Per-atom translucency has a correctness problem the existing per-model path
doesn't: the renderer's transparent depth-prime elects one translucent layer
per pixel — right for a translucent *surface*, wrong for translucent *atoms*,
where overlapping ghosts must accumulate and opaque atoms behind ghosts must
stay visible. So:

- `GLModel.createMolObj` routes atoms with `opacity < 1` into a twin geometry
  (`_transSphereGeo`); fully opaque atoms stay in the normal opaque pass with
  zero change to their rendering.
- The translucent mesh skips the depth-prime and the (opaque) outline pass,
  and renders with `depthWrite` off / depth test on: opaque geometry in front
  still occludes ghosts, and a near ghost can't discard far ghosts.
- Ghost-vs-ghost blend order comes from a per-frame back-to-front quad sort
  (`Renderer.sortAlphaQuads`): one view-space z per quad (all four vertices
  share the atom center), scratch buffers reused across frames so the sort
  allocates nothing, and the index buffer is regenerated in place —
  idempotent, vertex data never moves. ~16k quads sort well under a
  millisecond.

## Scope and limitations

- Imposter path only. Non-imposter sphere rendering keeps the existing
  one-opacity-per-model material behavior (its style-consensus scan is
  unchanged).
- Quad order is sorted within a geometry group; cross-group order keeps the
  renderer's existing per-object granularity.
- Mixed opaque/translucent styles on the same atom set re-split geometry on
  restyle, same as any style change.

Driven by a downstream need in [FoldView](https://github.com/jaysoma/FoldView)
(ghosting low-confidence regions while keeping the confident core opaque) —
happy to add an example page or adjust the approach.

<img width="2160" height="1400" alt="demo_shot_2x" src="https://github.com/user-attachments/assets/5abaf98f-f328-42e7-88bd-2a2b266f335f" />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c26e390544b6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.