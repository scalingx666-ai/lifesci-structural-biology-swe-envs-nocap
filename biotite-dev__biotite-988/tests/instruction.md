# Issue

**Title:** Use QCP method in `superimpose()`

## Description

This PR replaces the SVD-based Kabsch algorithm in `superimpose()` with the *quaternion-based characteristic polynomial* (QCP) method ([Theobald 2005](https://doi.org/10.1107/S0108767305015266), [Liu et al. 2010](https://doi.org/10.1002/jcc.21439)), implemented in Rust.

## Method
- The largest eigenvalue of Horn's 4×4 key matrix is found by Newton-Raphson iteration on its characteristic polynomial, starting from the upper bound $(G_A + G_B)/2$.
- The corresponding eigenvector (the quaternion of the optimal rotation) is taken from the column of the adjoint matrix of $K - \lambda I$ with the largest diagonal element.
- QCP always yields a proper rotation, so no reflection correction is needed.
- Centering and the inner product matrix are computed in two passes over the coordinates without temporary arrays and in double precision. The previous implementation computed the SVD in `float32`, since `coord()` always converts to `float32`.
- If the largest eigenvalue is (nearly) degenerate, the adjoint matrix vanishes and gives no reliable eigenvector. This happens for collinear atoms, where the optimal rotation is not unique. In that case the key matrix is diagonalized with the Jacobi eigenvalue algorithm as a fallback.
- Masking and conversion to C-contiguous arrays stay in Python, so the Rust code only receives the selected coordinates.

## Accuracy
I compared the new and old implementation on 129 cases:
- Random coordinates with 3 to 10⁵ atoms and different noise levels, uncorrelated structures, 180° rotations, mirrored input.
- Multiple models, a single fixed model against multiple mobile models (and vice versa), boolean and index masks.
- All structures in `tests/structure/data/pdb`.

In the 121 cases with a unique optimal rotation:

|  | max. deviation of rotation matrix elements |
|---|---|
| new vs. old | 9.2·10⁻⁷ |
| new vs. `float64` Kabsch reference | 1.3·10⁻¹⁴ |
| old vs. `float64` Kabsch reference | 9.2·10⁻⁷ |

So the remaining difference comes from the `float32` SVD in the old implementation. The RMSD achieved by the new method is never higher by more than 1.9·10⁻⁷ Å.

For near-collinear structures (2000 random cases), both methods stay within 5·10⁻⁶ Å of the optimal RMSD. The median deviation is 10⁻¹³ Å (new) vs. 10⁻⁷ Å (old).

`test_restoration()` now also covers planar and collinear coordinates; the collinear case runs the Jacobi fallback.

## Performance
![Benchmark of superimpose()](https://raw.githubusercontent.com/padix-key/biotite/50f55905aeaee6613d7e9fc5e9b73b0e55f8fe67/superimpose_benchmark.png)

Both sides time the complete `superimpose()` call (old: the previous function body), with single-model `float32` input, using a release build on an Apple M3 Max:

| Atoms | SVD (old) | QCP (new) | Speedup |
|---|---|---|---|
| 10 | 29.3 µs | 2.6 µs | 11.4× |
| 1 000 | 55.1 µs | 5.8 µs | 9.5× |
| 100 000 | 2.88 ms | 0.32 ms | 8.9× |
| 1 000 000 | 27.4 ms | 3.3 ms | 8.4× |

For multi-model input (10-1000 models of 1000 atoms) the speedup is 8-9×.

Memory layout and masking, for a structure with 507 510 atoms (`3wip` tiled 30 times):

| Mobile layout | Mask | SVD (old) | QCP (new) | Speedup |
|---|---|---|---|---|
| C-contiguous | none | 18.39 ms | 2.11 ms | 8.7× |
| C-contiguous | CA atoms (12 %) | 4.25 ms | 2.38 ms | 1.8× |
| column-major (output of `rotate()`) | none | 11.80 ms | 4.12 ms | 2.9× |
| column-major (output of `rotate()`) | CA atoms (12 %) | 4.22 ms | 2.26 ms | 1.9× |

With a mask or non-contiguous coordinates, copying the coordinates in NumPy dominates the run time.

Note that editable installs build the Rust extension in the `dev` profile, where the kernel is ~1.3× slower for large unmasked structures than in a release build.

## Behavior changes
- An `atom_mask` that selects no atoms now raises a `ValueError`.
- A mismatching number of atoms or models now raises an `IndexError` instead of the error from NumPy's `matmul()`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `81e1a2e0bff4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.