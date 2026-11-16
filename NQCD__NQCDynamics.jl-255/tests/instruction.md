# Issue

**Title:** Make Calculators automatically evaluate quantities in the correct order

## Description

Previously, whenever electronic quantities from the model were required, a series of operations using the Calculators module were necessary. The order of evaluations was important and it was not always clear whether quantities were updated.
Now, the calculators will cache the quantities if they match the current position and will only evaluate if necessary. The user need only call `Calculators.get_{quantity}(calculator, r)` and the quantity will be returned.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `115d316be70c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.