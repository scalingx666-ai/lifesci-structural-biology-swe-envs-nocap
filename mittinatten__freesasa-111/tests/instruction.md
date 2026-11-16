# Issue

**Title:** fix: Out-of-bounds read in sr_atom_area() for atoms with no neighbors

## Description

`sr_atom_area()` read `nbi[0]` before checking `nni`, and the neighbor array is allocated uninitialised, so an atom with no neighbors either faulted the process or returned a silently undercounted area.

An atom with no neighbors has all of its test points exposed, so this returns `4*pi*r^2` directly.

**Changes:**
- `src/sasa_sr.c` - early return when `nni == 0`
- `src/sasa_lr.c` - the same early return, for symmetry
- `tests/test_freesasa.c` - regression test in the "Basic S&R" case: a single atom, and a pair in contact plus one isolated atom (the second also checks that the pair is unaffected)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aa480ca9becd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.