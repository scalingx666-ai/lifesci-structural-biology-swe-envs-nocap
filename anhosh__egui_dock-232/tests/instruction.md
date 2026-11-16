# Issue

**Title:** Fix tab body background not being rounded

## Description

As title says:
![image](https://github.com/Adanos020/egui_dock/assets/2311185/a40a315f-326c-4490-a3ee-9e56a1248ba2)

After the fix the background is rounded with the value of `TabBodyStyle::rounding`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ea55cff15c76`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.