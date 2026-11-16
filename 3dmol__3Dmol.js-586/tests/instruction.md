# Issue

**Title:** Feature Jest math.js Tests

## Description

# Description

* This change brings the number of passing tests to 126, essentially finishing off the math.js file
* It also modifies the Jest GitHub action so that multiple test suites/files will all show their print outs

Fixes # 568

## Type of change
- [x] New feature (non-breaking change which adds functionality)

# How Has This Been Tested?

-[] npm run build
-[] npx jest --verbose

**My Configuration**:
* `npm --version`: 8.5.0
* `node --version`: v17.1.0
* `python3 --version`: 3.9.1
* OS: Windows
* ARCH: x86_64

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `66960c4a9748`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.