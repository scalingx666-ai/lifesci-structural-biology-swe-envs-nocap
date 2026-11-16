# Issue

**Title:** Update neighbor list code for increased safety.

## Description

The old version of neighbor lists was too unsafe to be easily used. There were two main pain points that are addressed here: 

1. There was no mechanism provided to automatically update the neighbor list when needed. Normally, neighbor lists are defined with a cutoff and then an additional distance threshold. This additional distance threshold guarantees correctness of the neighbor list as long as no particle has moved more than half the threshold distance.
2. The neighbor list had a maximum number of neighbors (induced by XLA's fixed shape requirement). Moreover, it was difficult / impossible to determine whether the neighbor list had experienced an overflow. 

Together these two points conspired to make neighbor lists difficult / annoying / dangerous to use in practice. This PR addresses both of these points by adding more structure to neighbor lists. Whereas neighbor lists were previously just `[N, max_neighbors]` arrays, they are now
```python
@dataclasses.dataclass
class NeighborList(object):
  """A struct containing the state of a Neighbor List.

  Attributes:
    idx: For an N particle system this is an `[N, max_occupancy]` array of
      integers such that `idx[i, j]` is the jth neighbor of particle i.
    reference_position: The positions of particles when the neighbor list was
      constructed. This is used to decide whether the neighbor list ought to be
      updated.
    did_buffer_overflow: A boolean that starts out False. If there are ever
      more neighbors than max_neighbors this is set to true to indicate that
      there was a buffer overflow. If this happens, it means that the results
      of the simulation will be incorrect and the simulation needs to be rerun
      using a larger buffer.
    max_occupancy: A static integer specifying the maximum size of the
      neighbor list. Changing this will invoke a recompilation.
    cell_list_fn: A static python callable that is used to construct a cell
      list used in an intermediate step of the neighbor list calculation.
  """
  idx: np.ndarray
  reference_position: np.ndarray
  did_buffer_overflow: bool
  max_occupancy: int = dataclasses.static_field() 
  cell_list_fn: Callable = dataclasses.static_field()
```
This allows us to automatically update the neighbor list when necessary and check for overflows within jitted loops.

One subtlety that came up during the implementation is how to deal with resizing the neighbor list in an ergonomic fashion while still allowing the neighbor list function to be updated within a `jit`. To do this, I settled on a pattern where 
```python
neighbor_fn = partition.neighbor_list(
        displacement_or_metric, box_size, r_cutoff, dr_threshold) 
```
creates a function `neighbor_fn` that can be used in two different ways. 

1. To create a new neighbor list call `nbrs = neighbor_fn(positions)`. This will create a new neighbor list whose size is automatically determined from `positions`. This function cannot be `jit` since the shape of the neighbor list is not known. 
2. To update a neighbor list call `nbrs = neighbor_fn(positions, nbrs)`. This will attempt to update the neighbor list if any particle has moved more than `dr_threshold`. This can be `jit` but cannot change the maximum number of neighbors. If an overflow has occurred then the `did_buffer_overflow` field will be set to True.

Together, these two usages of `neighbor_fn` provide the following pattern for safe neighbor lists.
```python
displacement, shift = space.periodic(side_length)

init_fn, apply_fn = simulate.nve(energy_fn, shift, 1e-3)
state = init_fn(random.PRNGKey(0), R, neighbor_idx=nbrs.idx)

def body_fn(i, state):
  state, nbrs = state
  nbrs = neighbor_fn(state.position, nbrs)
  state = apply_fn(state, neighbor_idx=nbrs.idx)
  return state, nbrs

step = 0
while step < 40:
  new_state, nbrs = lax.fori_loop(0, 100, body_fn, (state, nbrs))
  # If the neighbor list overflowed, rebuild it and repeat part of 
  # the simulation.
  if nbrs.did_buffer_overflow:
    nbrs = neighbor_fn(state.position)
  else:
    state = new_state
    step += 1
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3f9fd3a6526c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.