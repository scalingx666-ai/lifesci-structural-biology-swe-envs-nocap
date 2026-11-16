# Issue

**Title:** Fix macOS wheel bundling by setting DYLD_LIBRARY_PATH for delocate

## Description

## Summary

The v0.10.0 wheels are broken - they can't be imported because the QUIP shared libraries weren't bundled into the wheels.

**macOS issue:** `delocate-wheel` couldn't find the QUIP libraries because `DYLD_LIBRARY_PATH` wasn't set. The fallback (`cp {wheel} {dest_dir}/`) silently produced broken wheels.

**Linux issue:** `auditwheel` couldn't find the QUIP libraries because `LD_LIBRARY_PATH` wasn't set.

## Fix

**macOS:**
- Add `QUIP_LIB_PATH` environment variable pointing to QUIP library directories
- Set `DYLD_LIBRARY_PATH` in the repair command so delocate can find the libraries
- Remove the fallback that produced broken wheels (fail fast instead)

**Linux:**
- Add `LD_LIBRARY_PATH` with QUIP library paths so auditwheel can find them

## Test plan

- [ ] CI wheel builds pass on all platforms
- [ ] macOS wheel can be installed and `import quippy` works
- [ ] Linux wheel can be installed and `import quippy` works
- [ ] Tag v0.10.1 to release fixed wheels

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e09d3eb94574`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.