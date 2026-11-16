# Issue

**Title:** Make IMP_OBJECT_LOG and validate_inputs() cheaper

## Description

Relates #963.

Two small changes that reduce the per-evaluation overhead of Release builds, without changing behavior:

1. `IMP_OBJECT_LOG`, which runs for every restraint and score state evaluation, creates a `SetLogState` and a `SetCheckState`. Their constructors and destructors made out-of-line calls even when the object is at the `DEFAULT` level (the usual case), where these calls do nothing. That test is now inline.
2. `ModelObject::validate_inputs()` and `validate_outputs()` did a hash lookup (`get_has_dependencies()`) before testing whether internal checks are on, so Release and Fast builds did the lookup for nothing. The lookup is now inside the check.

Speedup of Release builds in MC steps/s (`IMP.core.MonteCarlo` with each system's own movers and full scoring function; median over 5 seeds, one machine, one core per run):

| | gcc 13.3 | gcc 8.5 |
|---|---|---|
| rnapolii tutorial | +9% | +7% |
| five disordered chains as 30-residue beads | +14% | +11% |
| one 1,275-residue chain at residue resolution | +1% | 0% |

With gcc 13, Release now runs at 0.81 (tutorial) and 0.62 (beads) of the speed of a Fast build, up from 0.74 and 0.54. Fast builds are unchanged (within 1.5%), and each seed follows the identical trajectory with and without this PR. Besides CI, the non-expensive tests pass with gcc 8.5 Release and Fast builds (except one PMI test that needs IMP.em2d, which that build lacks).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `65291660b98f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.