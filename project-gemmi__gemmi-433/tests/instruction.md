# Issue

**Title:** to_mmcif: quote empty pdbx_strand_id so _struct_ref_seq stays readable

## Description

### Problem

For a structure with a **blank chain name** (e.g. a PDB file with no chain ID) **and a DBREF**, `make_mmcif_document()` produces an mmCIF file that gemmi itself cannot read back:

```python
import gemmi
st = gemmi.read_structure('1pfe.cif.gz')
for ch in st[0]:
    if ch.name == 'B':
        ch.name = ''          # blank chain name + existing DBREF
doc = st.make_mmcif_document()
gemmi.cif.read_string(doc.as_string())
# ValueError: Wrong number of values in loop _struct_ref_seq.*
```

The empty `_struct_ref_seq.pdbx_strand_id` is written as a **zero-width token**, so the data row ends up with one value fewer than the loop has tags. The loop is ragged, and the whole file becomes unreadable — not just by gemmi's strict reader, but by other consumers too (this surfaced as an MMDB/clipper `Message_fatal` abort in a downstream pipeline reading gemmi-written mmCIF).

It reproduces on current `master` and on the 0.7.5 release. Real-world trigger: legacy single-chain PDB entries with a blank chain ID that carry DBREF records (e.g. PDB `2ACY`).

### Cause

In the `_struct_ref_seq` row builder ([`src/to_mmcif.cpp`](https://github.com/project-gemmi/gemmi/blob/master/src/to_mmcif.cpp)), every field is passed through a sanitising helper (`string_or_qmark`, `string_or_dot`, `.str()`, `qchain`) — **except** `pdbx_strand_id`, which was added raw:

```cpp
seq_loop.add_row({std::to_string(++counter2),
                  std::to_string(counter),
                  strand_id->second,  // pdbx_strand_id  <-- raw; empty -> zero-width token
                  id,
                  ...
```

When `strand_id->second` is empty, nothing is emitted for that column.

### Fix

Wrap it in `qchain()` — exactly what the adjacent `_struct_ref` row already does for `qchain(ent.name)`, and what `qchain`'s own comment describes (chain names that may be empty, written as `''`). The empty value now serialises as `''` (a valid quoted empty string), the loop is well-formed, and it round-trips.

```cpp
qchain(strand_id->second),  // pdbx_strand_id
```

One-line change. Added a regression test (`tests/test_mol.py::test_empty_strand_id_struct_ref_seq`) that blanks a chain name on `1pfe` and asserts the written `_struct_ref_seq` re-reads cleanly; it fails before the change (`Wrong number of values in loop _struct_ref_seq`) and passes after. Full `test_mol.py`/`test_cif.py` pass with no regressions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1f5733de1e4c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.