# Issue

**Title:** add script for benchmarking & benchmark results

## Description

N_seq = 256, N_msa = 128, A100 40GB

|  Method | Forward Time | Backward Time  | Peak Memory at Training | 
| -------- | -------------- | ---------------  | ------------------------ |
| openfold | 17.198 ms      |  23.703 ms          | 8.079 GB |
| openfold with LMA | 20.906 ms      |  39.007 ms         | 8.552 GB |
| fastfold  |  9.415 ms       |  20.247 ms         |      7.814 GB |
| unifold  |  8.440 ms        |  18.472 ms          | 7.669 GB |

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bd037a927586`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.