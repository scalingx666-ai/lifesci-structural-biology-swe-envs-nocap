# Issue

**Title:** Add more folders to .npmignore

## Description

Hello,

Installing `3Dmol.js` with npm results in a 40 Mb folder. Looking into the size distribution, we can see that a lot of space is used by the python stuff:

![2023-03-26-140757_1074x654_scrot](https://user-images.githubusercontent.com/3043706/227774616-7184ed65-24ba-4f25-b918-63db6168a4ec.png)

And we definitely don't need all these examples and non-production code when installing the package. Especially the notebooks chekpoints!

So here is a PR that will make the npm install lighter.

Here is how it looks before:

![pack-master](https://user-images.githubusercontent.com/3043706/227774936-03f4efb7-bc87-4e9d-ae1b-868b401439d2.png)

And after:

![pack-npmignore](https://user-images.githubusercontent.com/3043706/227774947-e08f47eb-7e72-4c0c-8a09-e8a8a326dba7.png)



As a side note, I would suggest splitting the python code into another repository, as I believe it makes more sense to separate JS and Python projects, which have different tooling and environments.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `93a29440c954`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.