# Issue

**Title:** Phase 5: Document TREXIO support status and fix build instructions

## Description

Phase 5 requires documenting TREXIO support for users and maintainers. Current docs claim TREXIO is "automatically downloaded" but CMake actually requires pre-installed TREXIO library, causing confusion and build failures.

## Documentation Fixes

**README.md & TREXIO_SUPPORT.md**
- Corrected prerequisite: TREXIO must be installed separately (not auto-downloaded)
- Added installation methods: from source, conda, spack
- Added HDF5 as optional but recommended dependency
- Prominent status warning: TREXIO support currently non-functional due to API issues

**Troubleshooting Guide**
- TREXIO library not found during CMake configuration
- Patch application failures
- HDF5 backend unavailable
- File format detection issues (`.h5` ambiguity with VeloxChem)

**Developer Documentation**
- Code structure (loader, UI component, integration points)
- How to extend TREXIO support
- Patch maintenance and regeneration
- Build system integration

## Issue Documentation (New)

**TREXIO_KNOWN_ISSUES.md**
- Compilation fails: `md_atom_type_data_t` no longer has `element` field
- mdlib API changed since TREXIO loader was written
- Type mismatches: int32_t (TREXIO API) vs int64_t (internal)
- Fix recommendations and testing checklist

**TREXIO_PR_CHECKLIST.md**
- Complete review matrix (build, functionality, platforms)
- Acceptance criteria evaluation
- Blocking issues identified

## Build System

**scripts/apply_mdlib_trexio_patch.sh**
- Now uses `mdlib_trexio_original.patch` (working version)
- Added troubleshooting hints on failure
- Idempotency verified

**FindTREXIO.cmake** (in updated patch)
- CMake module for TREXIO detection via pkg-config
- Fallback to find_path/find_library
- Creates imported target

## Current State

TREXIO loader has API compatibility issues preventing compilation:

```c
// md_trexio.c line ~477 - FAILS
if (sys->atom.type.element && sys->atom.type.element[j] == element) {
    // ERROR: 'md_atom_type_data_t' has no member named 'element'
}
```

Building with `-DVIAMD_ENABLE_TREXIO=ON` fails as documented. Recommend merging for documentation value; address compilation in follow-up using TREXIO_KNOWN_ISSUES.md guidance.

> [!WARNING]
>
> <details>
> <summary>Firewall rules blocked me from connecting to one or more addresses (expand for details)</summary>
>
> #### I tried to connect to the following addresses, but was blocked by firewall rules:
>
> - `esm.ubuntu.com`
>   - Triggering command: `/usr/lib/apt/methods/https` (dns block)
>
> If you need me to access, download, or install something from one of these locations, you can either:
>
> - Configure [Actions setup steps](https://gh.io/copilot/actions-setup-steps) to set up my environment, which run before the firewall is enabled
> - Add the appropriate URLs or hosts to the custom allowlist in this repository's [Copilot coding agent settings](https://github.com/scanberg/viamd/settings/copilot/coding_agent) (admins only)
>
> </details>

<!-- START COPILOT CODING AGENT SUFFIX -->

<details>

<summary>Original prompt</summary>

>
> ----
>
> *This section details on the original issue you should resolve*
>
> <issue_title>Update docs, prepare PR, and review checklist for TREXIO support</issue_title>
> <issue_description>**Phase 5 — Documentation, PR, & review**
>
> - Update README/developer docs: how to enable TREXIO, prerequisites, build instructions.
> - Document loader limitations and expected user experience/errors.
> - Review PR: builds on Linux/Mac (and Windows, if available), tests pass, log output is reasonable, new code well-commented (esp. at API and error boundaries).
>
> **Acceptance Criteria:**
> - Users and maintainers have clear, actionable instructions for using and maintaining TREXIO support; PR is review-ready; feedback from reviewer addressed.
> </issue_description>
>
> ## Comments on the Issue (you are @copilot in this section)
>
> <comments>
> </comments>
>

</details>

- Fixes scanberg/viamd#111

<!-- START COPILOT CODING AGENT TIPS -->
---

💡 You can make Copilot smarter by setting up custom instructions, customizing its development environment and configuring Model Context Protocol (MCP) servers. Learn more [Copilot coding agent tips](https://gh.io/copilot-coding-agent-tips) in the docs.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2c17b39189ce`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.