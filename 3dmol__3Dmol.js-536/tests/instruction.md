# Issue

**Title:** Use the wheel event to control zoom

## Description

`mousewheel` is [deprecated](https://developer.mozilla.org/en-US/docs/Web/API/Element/mousewheel_event), and firefox now support the standard `wheel` instead of requiring `DOMMouseScroll`

With the previous version, zooming in and out of a viewer on firefox (for example using the small viewer in https://3dmol.csb.pitt.edu/doc/index.html) would also scroll the page since the call to preventDefault was on a different event.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f1e74260ae59`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.