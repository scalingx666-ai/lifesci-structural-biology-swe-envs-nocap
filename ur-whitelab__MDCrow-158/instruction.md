# Issue

**Title:** remove chroma & simplify dependencies

## Description

The purpose of this is to remove the use of Chroma VDB and reduce dependencies required to run MDAgent. Instead of using chroma, tools are vectorized either using openai embeddings or sklearn's built-in vectorization algorithm. Then, search for most similar tools is conducted using cosine similarity. 

1. Replaced tool retrieval function
2. removed unused package (outlines)
3. made some packages optional (i.e.  alternative llm providers)
4. updated README

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `202d9824e8db`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.