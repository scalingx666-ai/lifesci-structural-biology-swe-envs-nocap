# Issue

**Title:** Removed ambiguity of plus symbol: explicitly set to pegtl::plus

## Description

Brief: There is an ambiguity of `plus` symbol in cif.hpp. 

If **gemmi** is compiled as headers only and part of another project `plus` symbol in cif.hpp might raise an ambiguity error since there are might be at least two candidates (depends on a project): `pegtl::plus` and `std::plus`. Having explicitly specified `pegtl::plus` helps to remove the error.

Actually, I would advise removing 
`using namespace pegtl;`
and other `using namespace` from headers altogether and prepending typenames explicitly since otherwise it may raise namespace clashes and thus such ambiguity errors.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6b3e0ac7cb9f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.