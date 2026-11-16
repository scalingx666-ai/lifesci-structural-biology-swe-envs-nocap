# Issue

**Title:** Make TabIndex publically accessible

## Description

The `TabIndex` is used within the public interface of the crate, however the type itself was not pub.

I also had to change the order of imports a bit because `utils::*` seems to include the type somehow.
That resulted in the type still being inaccessible and the explicit pub use of TabIndex being marked as an "unused import".

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `10ade79285eb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.