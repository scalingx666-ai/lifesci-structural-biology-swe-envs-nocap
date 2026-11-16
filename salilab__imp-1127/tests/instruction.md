# Issue

**Title:** Avoid extra copies when pickling, and serialize DensityMap data in one block

## Description

Relates #1080.

Two small changes that make pickling use less memory, and make it faster for density maps, without changing the pickle format:

1. `_get_as_binary()` serialized into an `ostringstream`, then copied the data into a `std::string` and again into a `bytes` object; `_set_from_binary()` copied the `bytes` into a `std::string` and again into an `istringstream`. The data are now copied once, from the stream buffer into the `bytes` object, and read directly from the `bytes` object (two small helper classes in `swig_helpers_base.h`).
2. `DensityMap::serialize()` wrote and read the voxel data one value at a time; it now does so with a single `cereal::binary_data` call.

Pickling a 256³ `IMP.em.DensityMap` (134 MB) and an `IMP.Model` with 10⁶ XYZR particles (41 MB); Release build, Python 3.11, median of 3; temporary memory as a multiple of the pickle size:

| | develop | this PR |
|---|---|---|
| DensityMap `dumps` | 0.36 s, 2x | 0.14 s, 1x |
| DensityMap `loads` | 0.22 s, 3x | 0.11 s, 1x |
| Model `dumps` | 0.14 s, 2x | 0.14 s, 1x |
| Model `loads` | 0.89 s, 3x | 0.89 s, 1x |

Pickling 100,000 `Vector3D`s is 5-8% faster. Pickles are byte-for-byte the same as before (checked for `Model`, a restraint, `VersionInfo`, `Vector3D` and `DensityMap`), so old pickles load with this PR and vice versa.

Protocol 5 out-of-band buffers (PEP 574), also suggested in #1080, are left for a follow-up. A prototype that wrapped every object's state in a `PickleBuffer` from a Python `__reduce_ex__` made pickling 100,000 `Vector3D`s with protocol 5 slower (0.16 s to 0.26 s), so out-of-band buffers should probably be used only for large objects; and reading them without a copy needs `Py_buffer`, which is only in the limited API from Python 3.11 (the Windows installer is built against the 3.10 limited API).

Existing tests cover the changed code (e.g. the pickle tests in `modules/em/test/test_density_map.py` and `modules/kernel/test/test_version_info.py`). The CI jobs pass locally (Ubuntu 24.04 Release and Debug, Ubuntu 26.04 Fast, clang standing in for macOS), as does a Fast build with `IMP_PY_LIMITED_API=3.10`, as used for the Windows installer.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `318a8ecbb74c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.