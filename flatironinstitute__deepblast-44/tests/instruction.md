# Issue

**Title:** Enabling multi-gpu support

## Description

This does two things
1. Removes long sequences as discussed here: 
2. Handles multiple GPUs as recommended here: https://pytorch.org/docs/master/generated/torch.nn.utils.rnn.pack_sequence.html

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9119290989d8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.