# Issue

**Title:** Direction atom types / GB adjustments and fix build error

## Description

Hi,

I've issued this pull request to address a few issues:
1. OpenMD does not build without QHULL due to an unguarded destructor on `surfaceMesh_` in HullFinder.cpp. I simply added guards.
2. Added arithmetic mixing option to GB since the Cleaver formulation does not behave as expected for non dissimilar species.
3. The P2 order parameter calculator for StaticProps used the column vector from the rotation matrix while the GB potential used the row vector for it's director. I adjusted StaticProps to be consistent with GB. Otherwise it may not calculate the correct OP. I've also attached images below illustrating this behavior for a Gay-Berne system.

![original](https://cloud.githubusercontent.com/assets/7806885/9069703/cc96fb3a-3ab8-11e5-8d75-c9a2d20c568a.png)

![adjusted](https://cloud.githubusercontent.com/assets/7806885/9069717/dc583912-3ab8-11e5-9060-e29ebef95b49.png)

Thanks!
Hythem

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d1b17d9c5be7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.