# Issue

**Title:** docs: fix incorrect parameter name `enable_flashTP` → `enable_flash`

## Description

Hi there, I found that the documentation uses `enable_flashTP` as the parameter name for enabling 
flashTP acceleration, but the actual keyword argument in `SevenNetCalculator` is 
`enable_flash`.

Using `enable_flashTP=True` fails since it is passed as **kwargs and ignored, leaving flashTP disabled without any warning.

Thus, I made the following changes:
- Text: "Use enable_cueq or enable_flashTP" → "Use enable_cueq or enable_flash"
- Code: `enable_flashTP=True` → `enable_flash=True`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `97a683a757ff`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.