# Issue

**Title:** pdb.rs: fix `DeviceSQLString::parse_long_utf16le` and `DeviceSQLString::parse_long_ascii`

## Description

previous code relied on kaitai docs that theorized the presence of
two nulls at the end of these strings. The kaitai parser definition
does not check this so the theory has never been proven in practice.
Its more likely that the string just ends without any trailing null
bytes and there is likely garbage which must not be interpreted.

This theory has yet to be confirmed and it goes against the 
kaitai struct definition commonly seen as truth, so take this
PR with a grain of salt.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cc9819b46a08`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.