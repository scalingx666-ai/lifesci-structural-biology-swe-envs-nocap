# Issue

**Title:** add volume fraction functions

## Description

This PR adds functionality to calculate volume fractions in arbitrary dimensions. Specifically, it adds the following 4 functions:

- `nball_unit_volume`: calculate the volume of an n-dimensional unit sphere
- `particle_volume`: calculate the total volume of a collection of particles. There are various options for specifying different particle radii (e.g. species, etc.). 
-  `volume_fraction`: calculate the volume fraction, uses `quantity.volume`
- `box_size_at_volume_fraction`: similar to `box_size_at_number_density` but for volume fraction. 

While I did document these functions, a few examples might be useful to explain how to use the parameters `radii`, `particle_count`, and `species` to cover different situations:

- case 1: monodisperse particles

```python
dim = 2
phi = 0.87
radii = 1
N = 100
print(particle_volume(radii, dim, particle_count = N))
box_size = box_size_at_volume_fraction(phi, radii, dim, particle_count = N)
print(box_size)
print(volume_fraction(box_size, radii, dim, particle_count = N))
```
- case 2: specify each radii separately
```python
radii = jnp.linspace(1,1.4,N)
print(particle_volume(radii, dim))
box_size = box_size_at_volume_fraction(phi, radii, dim)
print(box_size)
print(volume_fraction(box_size, radii, dim))
```
- case 3: species but with equal concentrations
```python
radii = jnp.array([1,1.1,1.2,1.3,1.4])
particle_count = N // radii.shape[0] #not particle_count = N !
print(particle_volume(radii, dim, particle_count = particle_count))
box_size = box_size_at_volume_fraction(phi, radii, dim, particle_count = particle_count)
print(box_size)
print(volume_fraction(box_size, radii, dim, particle_count = particle_count))
```
- case 4: species with unequal concentrations
```python 
radii = jnp.array([1,1.1,1.2,1.3,1.4])
particle_count = jnp.array([18,19,20,21,22])
print(particle_volume(radii, dim, particle_count = particle_count))
box_size = box_size_at_volume_fraction(phi, radii, dim, particle_count = particle_count)
print(box_size)
print(volume_fraction(box_size, radii, dim, particle_count = particle_count))
```
- case 5: using a jax-md species array
```python 
radii = jnp.array([1,1.1,1.2,1.3,1.4])
species = random.randint(random.PRNGKey(0), (N,), 0, radii.shape[0])
print(particle_volume(radii, dim, species = species))
box_size = box_size_at_volume_fraction(phi, radii, dim, species = species)
print(box_size)
print(volume_fraction(box_size, radii, dim, species = species))
```

Note: the case 5 cannot be jitted because the size of `jnp.bincount(species)` cannot be determined. This should be fairly easy to work around in practice by manually doing the bincount and then using case 4. 

As always, I'm eager to hear any comments/suggestions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `85981261fa9a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.