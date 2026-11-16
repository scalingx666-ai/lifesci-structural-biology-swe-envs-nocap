# Issue

**Title:** Add regression testing of the examples against main

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
This PR adds `examples/run_examples_regression.py`, which replaces the manual run-and-compare procedure for the integration tests. It runs all `examples/*/*-test.cfg` files on the current code and compares the results with a reference built from `origin/main`.

- **Reference:** `init` builds it in a separate git worktree, so the developer's checkout is not touched.
- **Skipped:** MPI and batch examples, and follow-up configs that need an existing run (`--extend-run`, `--restart`). 55 tests are run.
- **Completion check:** haddock3 must exit cleanly, the log must end with `Finished at` and contain no `ERROR` lines, and every module must have its step folder. The number of output models and the files written by each step are compared with the reference. This also covers the scoring and analysis examples that have no caprieval step.
- **CAPRI statistics,** per caprieval step:
  - number of acceptable, medium and high quality models (DockQ criteria, plus il-RMSD criteria for protein-ligand);
  - rank of the first acceptable model;
  - rank and quality of the best model.
- **Report:** `examples/regression/report.md` lists new failures, output differences, quality and ranking changes with better/worse markers, runtime changes, and skipped tests.

Housekeeping:
- **Removed:** `run_tests.py`, `compare_runs.py` and `run_examples-full.py`, and the test that kept the first two in sync. The two scripts used a hard-coded list of 30 tests.
- **Added:** the `extract-capri-stats-*.sh` scripts, which summarise a single run.
- **Docs:** rewrote `examples/README.md` and `docs/pages/testing/integration_tests.md` for the new workflow.

## How was this tested?
- `tests/test_examples_regression.py` covers test selection and skips, CAPRI statistics (DockQ and ligand criteria), the completion check, and the comparison (changes, new failures, failures on both sides).
- I checked the statistics against `extract-capri-stats-dockq.sh` and `extract-capri-stats-ligand.sh` on existing runs; the values are identical.
- Full `init` + `run` (55 tests each) comparing `main` with the `cns-scripts-consistency` branch. All tests ran, and the report flagged the expected differences in the CG examples.
- I manually used it to check the results of a new branch. All working fine. Nice and concise report
- 
## AI assistance
Claude Code wrote the script, the tests and the documentation updates based on my specifications and checked them as described above. I reviewed the changes and ran the full regression set myself.

## Checklist

- [X] Tests cover the new and/or changed code
- [X] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)) (developer tool, documented in `docs/` and `examples/README.md`; no user-manual change needed)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues


## Notes for reviewers
- A full run takes about 3 hours per branch locally, so this is not meant for the CI.
- Existing run directories of the examples are deleted before each run (`--list` shows which).
- Runtime comparisons are only meaningful if both runs used the same machine under similar load.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `815fcc141008`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.