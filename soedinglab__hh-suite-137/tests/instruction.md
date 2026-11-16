# Issue

**Title:** fixed a bug for global alignment

## Description

I fixed the bug which I raised 
The bug was related to finding the maximum score value. It is happening when I was using a "-glob" option for a global alignment search. The variable "j" becomes t->L+1 after a for-loop (j=1; j<=t->L; ++j), and t->L+1 is used for the "j" value afterward. So, when I was using hhalign, score_vec had exactly the same size of t->L. Yes, it was accessing to a garbage value. 
It affected on "hhalign" (for sure) and the other programs such as hhsearch and hhblits (probably). It may not cause a severe problem for hhsearch/hhblits because they define bigger arrays which are initialized with -inf.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d335e621b15f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.