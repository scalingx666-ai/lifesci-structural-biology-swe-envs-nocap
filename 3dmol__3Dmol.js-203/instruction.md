# Issue

**Title:** Explicit Typed Array Length

## Description

Typed array constructors should throw an error when called with no arguments according to the [ecmascript spec](http://www.ecma-international.org/ecma-262/6.0/#table-49).  There are a few places in this project that don't pass arguments, so this PR fixes them by just passing `0`.

The latest version of Chrome doesn't throw an error like it should, so most people probably don't notice that this is wrong.  However, [core-js](https://github.com/zloirock/core-js), which is used in Babel's popular [polyfill](https://babeljs.io/docs/usage/polyfill/), does throw an error and causes 3Dmol to break entirely.

Let me know if there are any other places in the codebase I missed!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3855d430dc2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.