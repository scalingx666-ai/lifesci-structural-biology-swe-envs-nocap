# Issue

**Title:** Preserve explicit inter-residue bond orders in PDBx

## Description

. The PDBx reader currently turns every covalent `struct_conn` connection into a single bond, including a double bond written by `set_structure()`.

Read `pdbx_value_order` for covalent connections, applying the same symmetry and atom-mapping filters as the endpoints. Preserve the existing single-bond fallback for absent, masked or unknown orders and keep metal coordination bonds as coordination bonds. The field is case-insensitive and defaults to `sing` in the [wwPDB dictionary](https://mmcif.wwpdb.org/dictionaries/mmcif_pdbx_v50.dic/Items/_struct_conn.pdbx_value_order.html).

Added CIF/BinaryCIF round-trip regressions for single through quadruple bonds: six fail before the change and both single-bond controls already pass. All 337 PDBx tests pass; the full Ruff check and format check pass. An independent Gemmi/dictionary workload checks explicit orders, missing values, coordination, symmetry and unmatched atoms, plus unchanged deposited-structure controls. A regular Python 3.12 wheel reproduces the source results.

Full Pyright remains affected by existing diagnostics and missing optional dependencies; the non-interface diagnostics are identical to baseline, with no new diagnostic from the parser change.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aaa9e969e263`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.