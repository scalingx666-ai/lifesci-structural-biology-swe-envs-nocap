# Issue

**Title:** Tolerate uninitialized computes in the post-run snapshot

## Description

## Summary

Opening the [Large nanoporous SiO2 quick run](https://andeplane.github.io/atomify/?project=quick-run-large-nanoporous-sio2&tab=runs&run=run-001) failed with:

```
ERROR: Trying to build an occasional neighbor list before initialization is complete (src/neighbor.cpp:2568)
```

The LAMMPS build is fine. The example script defines `compute rdf` but never issues `run`/`minimize` (it is meant for flying around the structure). Since #428 the worker takes a final snapshot after every script so zero-step structure views get a frame, and that snapshot invokes every compute. LAMMPS never initialized them, so `compute rdf` had no neighbor list and threw, which surfaced as a failed run.

LAMMPS errors are recoverable exceptions in library mode, so the adapter now treats a modifier that throws on invocation as "no data yet" and keeps the snapshot and the run alive. This covers any script with a neighbor-list compute and no run, not just this example, so the example script is left unchanged.

## Verification

- Reproduced in Node by driving `lammps-atomify.js` directly: `compute rdf` throws after a no-run script, works after `run 0`.
- New unit test on `LammpsAdapter.snapshotModifiers` (throwing modifier is skipped, others still sync).
- New e2e `no-run-script.spec.ts` runs a no-run script with `compute rdf` through the real engine and expects a completed zero-step run with a final frame. It passes with the fix and fails against the unfixed adapter.
- Typecheck, full unit suite (485 tests), prettier on touched files.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `22b56d21be35`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.