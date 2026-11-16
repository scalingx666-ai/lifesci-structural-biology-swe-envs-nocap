# Issue

**Title:** Avoid quadratic analysis serialization and preserve work after worker crashes

## Description

Analysis currently serializes its complete dataset for every submitted sample and can silently lose work after a worker dies. Write one private snapshot per pool, load it once per worker, and submit only integer indices. Passing a small file path also avoids slow sequential startup and hangs when a worker dies during startup.

Preserve RDKit properties and CPU tensor values, configure worker Torch threads while honoring explicit OMP/MKL settings, and leave caller Torch settings alone. Retain confirmed successes and skips, retry unconfirmed work, and raise after three consecutive pools make no progress. Workers join before snapshot reuse or cleanup; empty calls need no temporary storage. The configured worker limit remains available.

Thanks to @rhyschappell for the once-per-worker proposal in #235 and @tianxi03-ship-it for the worker-count and threading measurements in #273. Their original investigations motivated this replacement; machine-specific measurements do not establish a universal four-worker default.

Validation on the final source: 532 existing CPU tests and 10 real-spawn regressions passed; 18 optional dependency/model-asset tests skipped. Independent before/after fault injection confirms recovery from task crashes and worker death during import/loading, with no leftover workers or snapshot directories. Real serial/parallel metric artifacts match. Changed tests pass Ruff; source lint adds no diagnostics. No GPU/model inference was run.

Separate deep review completed with Astra, Luna, Terra, Sol and actual Claude Code Opus 5.5. The startup and empty-work findings are fixed and independently rechecked. Combined validation with PRs #283, #285 and #286 passed 843 tests with 19 optional-dependency/model-asset skips. All four are merged; final main has exactly the tested integration file tree.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b587f77979c9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.