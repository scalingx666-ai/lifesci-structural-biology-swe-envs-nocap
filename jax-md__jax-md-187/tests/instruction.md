# Issue

**Title:** Fix docstring formatting

## Description

This PR adds several fixes to the docstrings. I've tried to make the commits somewhat atomic so that you can pick the changes you like.

### Changes
* Fix the indentation such that e.g. parameters render correctly
* Some LaTeX math fixes I missed in #182
* Format function names, e.g. "Function foo" to "Function `foo`"
* Format shapes, e.g. "Array of size [n, m]" to "Array of size `[n, m]`"
* Use footnotes for references
* Add links from convenience wrappers to docstring of wrapped potentials
* Remove duplicate docstrings from convenience wrappers
* Remove the non-existent function `bks_silica` from the docs build

### Example
After PR:
<img width="684" alt="Screenshot 2022-04-25 at 16 08 16" src="https://user-images.githubusercontent.com/20258504/165107481-c830c71b-5fa8-442c-aa91-6245b9e7be37.png">
Before PR:
<img width="721" alt="Screenshot 2022-04-25 at 16 08 27" src="https://user-images.githubusercontent.com/20258504/165107503-8700b535-d979-497c-9e6c-2d3c9d87f020.png">

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3f6f04ad413`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.