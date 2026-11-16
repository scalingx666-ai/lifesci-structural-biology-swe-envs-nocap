# Issue

**Title:** Fix gen_archive crash on non-local filesystems (ENOTEMPTY)

## Description

## What does this PR do and why?

When gen_archive=true, archive_run() deleted the run directory while the run's `log` file was still held open by a logging FileHandler. On local filesystems unlinking an open file is fine, but on non-local filesystems (NFS silly-rename, FUSE object stores like gcsfuse/s3fs, overlayfs, CIFS) the open/eventually-consistent entry keeps the directory non-empty and shutil.rmtree fails with OSError: [Errno 39] Directory not empty.

Primary fix: close_logfile_handlers() releases the log file descriptor before deletion (filesystem-agnostic). Defensive fallback: _robust_rmtree retries transient failures and, if the tree still cannot be removed, logs a warning and leaves the already-archived directory in place instead of crashing the run.

## How was this tested?

As the error was discovered on an EGI notebook, I tested the implementation on an EGI notebook with `gen_archive=true` and the run completes without errors.


## AI assistance

The error and the fix were diagnosed with help from Claude. The code changes were manually checked.
Tests were created with Claude.

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1626

## Notes for reviewers

The error was only found when running a notebook in notebooks.egi.eu

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d632e5ccdc68`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.