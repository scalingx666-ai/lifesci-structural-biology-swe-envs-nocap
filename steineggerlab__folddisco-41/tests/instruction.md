# Issue

**Title:** Fix CIF parsing failures for structures with numeric values and relative paths

## Description

## Problem

 Folddisco's CIF parser crashes or silently corrupts data on a number of real-world RCSB structures. We hit these while building folddisco indices at scale.

 ## Fixes

### 1. Lexer: `.` and `?` misparsed when followed by non-whitespace (`lib/pdbtbx-cif/src/lib.rs`)

The lexer treated . as Inapplicable and ? as Unknown regardless of what followed. In PDB 9A1O, the field `_ihm_external_files.file_path` contains unquoted relative paths like `./EM/part_4.mrc`. The leading . was consumed as Inapplicable, leaving `/EM/part_4.mrc` as an orphan token and breaking loop parsing with `"Loop has incorrect number of data items"`.

 **Fix:** `.` and `?` are only treated as special values when followed by whitespace or EOF. Otherwise they're parsed as text identifiers.

### 2. Numeric residue/ligand names cause panic (`src/structure/io/cif.rs`)

All-numeric ligand codes (e.g. `919` in PDB 6MWE, the Tie2 inhibitor DCC-2036) are lexed as `Value::Numeric(919.0)`. `get_three_char_array` and `get_four_char_array` only handled `Value::Text`, returning `None` and triggering the panic at line 254: `"Residue name should be provided"`.

**Fix:** `get_three_char_array`, `get_four_char_array`, and `get_one_char` now convert `Value::Numeric` to its string representation before processing.

### 3. Multi-character chain IDs cause error (`src/structure/io/cif.rs`)

Large cryo-EM structures like PDB 9A1O have multi-character chain ids (e.g. `auth_asym_id = 10`). `get_one_char` errored because "10" can't fit in a single byte.

**Fix:** `get_one_char` returns `None` for multi-character chain IDs, allowing the caller to fall back to `label_asym_id` (which is typically single-character). NOTE: this is only a band-aid fix. The proper fix is to allow chain ids to be 4 bytes (thus matching mmCIF).

## Tests

Added unit tests covering:
  - Numeric Value handling in get_three_char_array, get_four_char_array, get_one_char
  - Multi-digit chain ID fallback
  - Lexer behavior for . and ? in various positions (bare, before digits, before path characters, at EOF)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `de68e1531363`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.