# Issue

**Title:** GitHub Action to find undefined names in Python code

## Description

Test results: https://github.com/cclauss/openfold/actions

https://flake8.pycqa.org/en/latest/user/error-codes.html

On the flake8 test selection, this PR does  _not_ focus on "_style violations_" (the majority of flake8 error codes that [__psf/black__](https://github.com/psf/black) can autocorrect).  Instead, these tests focus on runtime safety and correctness:
* __E9__ tests are about Python syntax errors usually raised because flake8 can not build an Abstract Syntax Tree (AST).  Often these issues are a sign of unused code or code that has not been ported to Python 3.  These would be compile-time errors in a compiled language but in a dynamic language like Python, they result in the script halting/crashing on the user.
* __F63__ tests are usually about the confusion between identity and equality in Python.  Use ==/!= to compare str, bytes, and int literals is the classic case.  These are areas where __a == b__ is True but __a is b__ is False (or vice versa).  Python >= 3.8 will raise SyntaxWarnings on these instances.
* __F7__ tests logic errors and syntax errors in type hints
* __F82__ tests are almost always _undefined names_ which are usually a sign of a typo, missing imports, or code that has not been ported to Python 3.  These also would be compile-time errors in a compiled language but in Python, a __NameError__ is raised which will halt/crash the script on the user.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a933bc7479a1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.