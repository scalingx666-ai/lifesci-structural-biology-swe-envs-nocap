# Issue

**Title:** CI: migrate from pyright to ty

## Description

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Chores**
  * CI workflow and installer updated to a slimmer runner and modernized steps; type-checking runs changed to a new check invocation.
  * Project tooling configuration added/updated.

* **Refactor**
  * Tightened type annotations and generics across utilities; download accepts optional checksum and a zero-check helper now returns a native bool.
  * Public API surface preserved; type-only imports added to improve static typing.

* **Style**
  * Minor cleanup of suppressed-type comments and small sorting-key clarifications.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c36677490789`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.