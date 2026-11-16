# Issue

**Title:** fix: bound reaction analysis and guard oversized components

## Description

## Summary

- Reduce peak reaction-analysis memory by storing variable-length molecule names as object arrays, using compact atom-state arrays, and counting reactions incrementally.
- Stop immediately after connectivity detection when a connected component exceeds the configured absolute and fractional limits, before molecule naming, route construction, or reaction generation.
- Expose max_component_atoms and max_component_fraction through both the Python and CLI APIs. The default effective limit is max(256, ceil(total_atoms * 0.10)); max_component_atoms=0 disables the guard.
- Provide backend-specific remediation for coordinate, ASE, and explicit-bond inputs without automatically changing chemistry.

## Validation

- 22 focused connected-component guard tests passed, including default and overridden limits, fractional ceiling behavior, exact boundaries, disabled protection, validation failures, CLI/parm2cmd round trips, early pipeline termination, and ASE pair-cutoff recovery.
- Full test suite: 152 passed, 5 skipped, 6 xfailed, 3 xpassed.
- Ruff lint and formatting checks passed for all changed Python files; git diff --check passed.
- The configured pre-commit environment could not be provisioned on the test host because its package mirror did not provide ruff 0.16.4. Direct Ruff checks passed; CI is expected to exercise the repository-managed hook environment.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **New Features**
  - Added safeguards for oversized connected components during molecule detection.
  - Configure atom-count and system-fraction limits through the command line or Python API; set limits to zero to disable them.
  - Error messages identify the affected frame and provide backend-specific guidance.

- **Bug Fixes**
  - Improved handling of variable-length molecule names and reaction-route counting.
  - Preserved reaction counts and corrected array type handling across processing workflows.

- **Documentation**
  - Added guidance on component-size limits, ASE cutoffs, and configuration options.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `16b0390d23f5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.