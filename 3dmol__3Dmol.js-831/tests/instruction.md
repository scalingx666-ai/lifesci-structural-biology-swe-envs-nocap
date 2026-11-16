# Issue

**Title:** Build as both UMD and ES6 modules.

## Description

Ref: #704 

Updates 3Dmol to build both UMD and ES6 compatible modules, allowing imports via `<script type="module"/>` in web contexts.

This includes...

... lightly refactoring the webpack configuration to expose UMD/ES6 and development/production targets.
... lightly refactoring the module layout to expose a namespace target that does not bind `window.$3Dmol`.
... `colors.ts` fixed to explicitly reference htmlColors, rather than `$3Dmol`.
... falling back to sync surface rendering in ES6 configs. The surface rendering webworker source is ... trickly ... to build in the ES6 configuration. It *could* be ported to a module worker, but this is out of scope for this work.

This should be fully backward compatible with previous build targets.
As an example smoketest (likely to be reverted before merge), this updates the top-level `index.html` to use the ES6 build.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5729c51b4491`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.