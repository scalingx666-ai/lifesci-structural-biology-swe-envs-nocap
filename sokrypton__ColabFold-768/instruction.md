# Issue

**Title:** Lightweight colabfold_search environment

## Description

This is a minor change to enable a lightweight environment to support only the colabfold_search application.
```
pip install colabfold[colabfold-search]
```
Change shouldn't affect any existing installation workflows. Tested local install and within colab notebook.

**Motivation:**

- In my hands, the deep learning libraries often cause version conflicts and are not required to run the colabfold_search app. 
- It is nice to have a lightweight environment to run colabfold_search without bulky dependencies.
- It is useful to run colabfold_search locally independent of model inference to support other models using the colabfold_search workflow.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `00a1698ade76`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.