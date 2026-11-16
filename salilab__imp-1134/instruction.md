# Issue

**Title:** Replace deprecated CGAL convex hull with Triangulation package

## Description

Our code in IMP.cgal for uniform sphere covers uses the deprecated CGAL `Convex_hull_d.h` header. Replace this with the newer Triangulation package, and also fix some bugs and typos in the implementation. .

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `95b8de828f41`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.