# Issue

**Title:** Fix segfault when ligands fail to parse in batch mode

## Description

## Summary
- : segfault (SIGSEGV) when using `--ligand_index` with ligands that fail to parse
- `parse_ligand_from_file_no_failure()` returns an empty model (with empty `ligands` vector) when parsing fails, but `main.cpp` accesses `ligands[0]` without checking, causing a crash
- Added a guard that checks for empty `ligands` vector before accessing it, skipping failed ligands with a warning instead of crashing

## Test plan
- [ ] Run Uni-Dock with `--ligand_index` containing a mix of valid and intentionally malformed ligand files
- [ ] Verify that malformed ligands produce a warning message and are skipped gracefully
- [ ] Verify that valid ligands in the same batch are still docked correctly

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c0aba05e6720`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.