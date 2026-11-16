# Issue

**Title:** NPM Module Improvements

## Description

This project was published as an npm module in issue  but it was still lacking the ability to easily be used in this way.  This PR includes the build directory and points to one of the output files as a main so that the project can be required (or used via script tag pointing to the build directory via node_modules).

.npmignore was added to tell npm to include things ignored by .gitignore when publishing, like the build directory.  The npm docs explain this: https://docs.npmjs.com/misc/developers#keeping-files-out-of-your-package.

Further work could improve this a bit, like using jQuery as a dependency via npm for deduplication in projects, but this should get us started with making this project useful as an npm module.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fea18bd6674d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.