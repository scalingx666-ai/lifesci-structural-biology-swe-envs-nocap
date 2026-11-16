# Issue

**Title:** modify reading data way and add inference test

## Description

By modifying the way of reading data, we can now process sequences with `\n`.
Meanwhile, it supports multi-sequences.
Below is my test fasta:
```
 >test
 ANKASDKHASJHFJKA
 ASJKDFAKJSHDJKJ
 >test2
 FADHJKDEASHFKLKLD
 >test3
 DHLFLAJKJKLAJKLFKLASJKL
```
And the code returns tags and seqs:
<img width="248" alt="image" src="https://user-images.githubusercontent.com/74758262/186063192-bd91d16f-169f-4a11-b437-95e935295629.png">

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `03a24ef9378d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.