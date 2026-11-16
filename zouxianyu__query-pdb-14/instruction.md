# Issue

**Title:** Fix path traversal vulnerability in downloader

## Description

Add input validation for file name and GUID parameters to prevent directory traversal attacks. The validation ensures:
- File names only contain alphanumeric characters, dots, underscores, and hyphens
- GUIDs only contain hexadecimal characters
- Both parameters are non-empty

This prevents malicious inputs from accessing files outside the intended directory structure.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `beffb00867ca`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.