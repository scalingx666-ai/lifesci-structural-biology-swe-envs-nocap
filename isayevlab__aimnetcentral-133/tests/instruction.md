# Issue

**Title:** chore(deps): clear the open Dependabot alerts in the lockfile

## Description

Closes 20 of the 21 open Dependabot alerts.

Every alert was against `uv.lock`, and none of the flagged packages is a runtime dependency, so no published install was affected. These are development and documentation tooling.

| package | from | to | alerts closed |
| --- | --- | --- | --- |
| GitPython | 3.1.56 | 3.1.62 | 13, one critical and eight high |
| cryptography | 49.0.0 | 50.0.1 | 1 high |
| tornado | 6.5.7 | 6.5.8 | 3 |
| mkdocs-material | 9.7.0 | 9.7.7 | 1 medium |
| setuptools | 81.0.0 | 84.0.0 | 1 medium |
| torch | 2.12.1 | 2.13.0 | 1 low |

**On the torch bump.** setuptools could not move on its own, because the locked torch held it back. Forcing setuptools alone pulled torch to 2.14.0, which is outside the supported 2.8 to 2.13 matrix, so that was rejected. Moving the locked torch to 2.13.0 instead releases setuptools and also clears the `torch.jit.script` advisory, which the changelog had already identified as needing exactly this. It puts the default lane on the newest version the matrix already tests in its own lane.

triton stays at 3.7.1. That is deliberate and is what the resolver produces: torch 2.13.0 does not pin triton, and 3.8.0 requires torch 2.14. A stale triton against a newer torch is the known `triton_key` breakage in this repo, so this pairing is the one to want.

The default `tests-core` lane runs with inductor enabled, unlike the torch-matrix lanes, so this pull request is the first place the torch 2.13 and triton 3.7.1 pairing is exercised through inductor. That is the thing to watch in CI here.

**The one alert left open** is a low-severity paramiko issue with no released patch: SHA-1 permitted in `rsakey.py`, vulnerable through 4.0.0, which is the current release. It arrives as a third-level test dependency, through fabric from pysisyphus, and nothing in this project opens an SSH connection. There is nothing to upgrade to.

No source changes, so the local suites are unaffected; the lockfile change is what CI validates here.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d05dee6d414b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.