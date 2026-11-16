# Issue

**Title:** Added ability to remove tab (using logic from render)

## Description

I wanted to be able to add/remove tabs in different parts of the gui (i.e. in a View menu). The add is already supported with push_to_focused_leaf, but the remove was not available as an API call. I was able to find it in the render logic and put it in its own function and I thought this might be useful for other people.

toggled on:
![image](https://user-images.githubusercontent.com/12837524/202838007-f9e606a6-d2a2-4b35-863e-188b4439f255.png)

toggled off:
![image](https://user-images.githubusercontent.com/12837524/202838018-df621fd9-e8de-4993-b8b8-953df01b9714.png)


Edit:
Also it wasn't something I could easily add as a utility function in my own code since `TabIndex` isn't publicly accessible. Looks like that's fixed in #60 though, so I don't need this merged if you guys think it's not something you want to add.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5f6a43184181`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.