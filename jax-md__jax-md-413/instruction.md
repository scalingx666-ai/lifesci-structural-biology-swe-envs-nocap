# Issue

**Title:** Add reference NPT CSVR integrator

## Description

Implements Bussi-Zykova-Parrinello Barostat with CSVR thermostat following  with two deviations from https://arxiv.org/pdf/0901.0779
1. equations are integrated in the full NPT ensemble as opposed to the 3(N-1)PT ensemble implemented in the paper
2. the equations of motion are implemented in fractional coordinates to be consistent 

TODOs
1. double check the implementation,
2. add tests,
3. compare with a reference implementation

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6fffda2009be`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.