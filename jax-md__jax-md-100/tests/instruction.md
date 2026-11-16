# Issue

**Title:** First pass adding colab visualization code to JAX MD.

## Description

This PR adds a utility to visualize JAX MD simulations inside IPython notebooks. The new functionality is added inside `jax_md.colab_tools.renderer`. To use this functionality, inside a colaboratory notebook write code of the form,

```python
from jax_md.colab_tools import renderer

# Do simulation here.

# A scene is a dictionary of geometry objects.
# Here trajectory is a (timesteps, particle_count, 3) array.
scene = { 'particles': Sphere(trajectory) }
renderer.render(box_size, scene)
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e237a3c638a3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.