# Issue

**Title:** Add minimal environment and setup instructions (disk-friendly, GPU/CPU pins)

## Description

This PR adds a disk-friendly minimal conda environment and a concise setup guide for DynamicBind.

Changes:
- Add  (PyTorch pinned for CUDA 11.7 + guidance for CPU).
- Add  with CPU/GPU install commands and PyG wheel instructions.
- Add  and remove generated logs/temp files from the working tree.

Rationale:
- Reduce disk usage for users by avoiding large optional system packages while providing clear steps to install GPU-specific wheels when needed.

Notes:
- The environment is tested locally in this Codespace (conda env created and PyG wheels installed).
- GPU acceleration on the host requires NVIDIA drivers/CUDA; instructions are included in the guide.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `abdcd83f313c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.