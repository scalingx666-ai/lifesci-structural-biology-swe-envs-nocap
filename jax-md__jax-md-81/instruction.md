# Issue

**Title:** Add Morse potential

## Description

This PR resolves Issue #6 by adding the Morse potential. Specifically, three functions have been added to energy.py:
- `morse`
- `morse_pair`
- `morse_pair_neighbor_list`

which have the expected behavior. The implementation was modeled after the Lennard Jones potential, though there is a slight difference in how `r_onset` and `r_cutoff` are scaled by `sigma`. I am open to a discussion here...

I have tested this myself, but is there a more rigorous testing protocol in place, or anything like that?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0d6ccbcb8ad6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.