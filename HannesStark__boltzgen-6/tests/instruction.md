# Issue

**Title:** Allow offline mode for inference

## Description

# Background

Huge fan of the repo and paper, great job @HannesStark and team!

This PR adds a new argument to the inference pipeline to allow us to run it in "offline mode", mostly by telling the huggingface client not to send any outbound requests. 

This parameter exactly mirrors the huggingface hub argument of the same name documented here:  https://huggingface.co/docs/huggingface_hub/en/package_reference/file_download

Let me know if you need any more information about this change or if there are any other suggestions you have here, happy to help get this change integrated. Congrats on the launch!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `58c1eed2b07f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.