# Issue

**Title:** Fix patch application failure when md_trexio files already exist

## Description

The `git apply` command for the mdlib TREXIO patch fails when run multiple times because it attempts to create files that already exist. Removing the files manually doesn't solve the issue—CMakeLists.txt remains modified, causing the patch to still fail.

## Changes

### Added idempotent patch application script
- `scripts/apply_mdlib_trexio_patch.sh` detects existing patch application and skips or cleans up partial applications
- Automatically reverts CMakeLists.txt before reapplying if needed
- Handles all edge cases: fresh application, reapplication, partial cleanup

### Updated documentation
- `README.md` and `docs/TREXIO_SUPPORT.md` now reference the script
- Added fallback manual instructions for users who prefer `git apply` directly

## Usage

```bash
# Works on first run, subsequent runs, and after manual file deletion
./scripts/apply_mdlib_trexio_patch.sh
```

The script checks for `MD_ENABLE_TREXIO` in CMakeLists.txt and existence of both md_trexio files to determine patch state, cleaning up and reapplying only when necessary.

<!-- START COPILOT CODING AGENT SUFFIX -->

<details>

<summary>Original prompt</summary>

> the patch is still not working. FIrst the two md_trexio file already exist in ext/mdlic/src/ and when I remove them to apply the patch, it does not work with this error.

</details>

<!-- START COPILOT CODING AGENT TIPS -->
---

💬 We'd love your input! Share your thoughts on Copilot coding agent in our [2 minute survey](https://gh.io/copilot-coding-agent-survey).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `735e915d4e3c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.