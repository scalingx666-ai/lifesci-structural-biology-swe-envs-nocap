# Issue

**Title:** Resolve dependency issues involving protobuf and setuptools

## Description

Hello! I wrote a pull request pinning the versions of `protobuf` and `setuptools` to address some dependency issues.

1. Regarding `protobuf`

The following error was raised: `TypeError: Descriptors cannot not be created directly.` Looking at the stack trace suggests that the error is caused by SaProt's required version of `wandb` having a dependency issue with `protobuf` (similar to ). Downgrading `protobuf` to a version <= 3.20.1 solves the issue.

2. Regarding `setuptools`

The following warning was displayed: `UserWarning: pkg_resources is deprecated as an API. See https://setuptools.pypa.io/en/latest/pkg_resources.html. The pkg_resources package is slated for removal as early
 as 2025-11-30. Refrain from using this package or pin to Setuptools<81.` (similar to ). 

Although currently this does not raise an error since the latest version of `setuptools` is `80.9.0`, maybe it's a good idea to preemptively pin the version to (hopefully) avoid dependency problems in the future.

Also, thanks again for this amazing work!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `80230b6fc9c2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.