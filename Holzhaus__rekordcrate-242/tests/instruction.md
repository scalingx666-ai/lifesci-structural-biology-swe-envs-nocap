# Issue

**Title:** fix(anlz): change type of `comment` field and capture trailing bytes

## Description

Addresses #240

`crate-digger` interprets the comment field as a fixed-length UTF-16BE string of exactly `len_comment` bytes, but `NullWideString` scans for a NUL terminator, potentially reading more bytes. `FixedUtf16String` reads the exact byte count and trims trailing NULs, aligning with the reference. Additionally, the `ExtendedCue` struct now captures any extra bytes beyond the defined fields as a `trailing` field.

Also fixed a typo (Rekordbot -> Rekordbox)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9bdcbeac615c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.