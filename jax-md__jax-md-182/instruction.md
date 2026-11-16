# Issue

**Title:** Fix code blocks and equations in documentation

## Description

This PR adds reStructuredText Python code blocks `.. code-block:: python` to correctly render the documentation

### This PR:
<img width="720" alt="Screenshot 2022-04-14 at 16 16 10" src="https://user-images.githubusercontent.com/20258504/163409940-94044294-fcbd-47c8-a762-a6461390d945.png">
<img width="720" alt="Screenshot 2022-04-14 at 16 16 19" src="https://user-images.githubusercontent.com/20258504/163409961-e4fd62c4-8a4d-40fc-8c89-8f70a5b2c324.png">

### Previously:
<img width="720" alt="Screenshot 2022-04-14 at 16 16 51" src="https://user-images.githubusercontent.com/20258504/163409980-b0cbfaf5-2aae-497d-adb8-0feb32a75cf0.png">
<img width="720" alt="Screenshot 2022-04-14 at 16 16 58" src="https://user-images.githubusercontent.com/20258504/163409989-fbc30dcb-f883-43ac-bf7c-d3ed4309e87c.png">

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2b8754a80bb8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.