# Issue

**Title:** Use 8-bit color indices consistently

## Description

Before, we sometimes used 8-bit indices and sometimes 16-bit ones,
because the reverse-engineered format documentation described it that
way.

However, these does not seem to be a good reason why there should be
16-bit color indices when the value it contains is just 8-bit. It's
likely that the most significant byte actually belongs to another field.

Also see:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `63cd0fe39799`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.