# Issue

**Title:** adds a generic remove_residues function (remove by predicate)

## Description

This allows, for example, removal of all zinc atoms (which is an [example in `iotbx`](https://cci.lbl.gov/cctbx_docs/iotbx/iotbx.pdb.html), but this implementation will be faster, as `iotbx` depends on shared pointers (equivalent to Rust's `Rc`) to do this)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `216b855dcc97`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.