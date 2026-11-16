# Issue

**Title:** Better cursor for close button

## Description

This PR changes the cursor use for the close button. Previously the drag hand icon was used, which is confusing and incorrect, since you can't actually drag a tab from the close button.
I also found it a bit hard sometimes to determine whether the cursor was currently hovering over the close button because the drag hand is so wide, so I changed it to the pointing hand.

Before:
![image](https://user-images.githubusercontent.com/33729490/198596461-55e96815-2dd5-4c9b-867a-dc3d7d23bc46.png)
After:
![image](https://user-images.githubusercontent.com/33729490/198599519-d6af0e6e-84c5-416d-b580-9bfb260ffc0d.png)


Alternatively, the standard arrow cursor might be used, which is what firefox and chromium do. But they also use the arrow for the rest of the tab until you start dragging it, so ¯\\\_(ツ)_/¯

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `29d145213f9c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.