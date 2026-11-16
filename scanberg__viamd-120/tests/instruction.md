# Issue

**Title:** Add TREXIO component to CMake build system

## Description

Phase 1 scaffolding for TREXIO quantum chemistry file format support. The component source file exists but was not wired into the build system.

## Changes

- **CMakeLists.txt**: Add `src/components/trexio/trexio.cpp` to `COMP_FILES` when `VIAMD_ENABLE_TREXIO=ON`, matching the VeloxChem pattern
- **src/components/trexio/trexio.cpp**: Fix `MD_LOG_WARN` → `MD_LOG_INFO` (WARN macro doesn't exist in mdlib)
- **.gitignore**: Ignore CodeQL build artifacts

## Build Verification

```bash
# Default build (TREXIO disabled)
cmake .. && make  # ✓ Component excluded from build

# TREXIO enabled
cmake .. -DVIAMD_ENABLE_TREXIO=ON && make  # ✓ Component included, compiles cleanly
```

The component contains only stub UI windows with no functional loader code, as specified for Phase 1. Functional implementation will require the mdlib TREXIO patch (Phase 2).

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
> <issue_title>Scaffolding and CMake integration for TREXIO support</issue_title>
> <issue_description>**Phase 1 — Scaffolding and CMake integration**
>
> - Create new `src/components/trexio/trexio.cpp` (and optionally trexio.h).
> - Update CMakeLists.txt to add the new file to `COMP_FILES` if `VIAMD_ENABLE_TREXIO` is ON.
> - Verify the build is stable with and without TREXIO support (OFF/ON).
>
> Scaffolding and CMake integration (quick, unblocker) Goal: Have a safe skeleton for TREXIO code that builds cleanly with and without TREXIO enabled. Tasks:
>
>     Add starter source file(s): src/components/trexio/trexio.cpp (and trexio.h if needed). Keep it minimal (no parser logic) — e.g., empty loader class or stubbed md_system_loader_i implementation that returns errors when TREXIO not available.
>     Add CMake option and conditional compile: VIAMD_ENABLE_TREXIO default OFF. Add the new files to the component compile list only when option is ON.
>     Add a fast smoke test target that builds viamd with TREXIO ON and OFF to validate CMake changes don’t break CI. Acceptance criteria:
>     Project builds locally and in CI with VIAMD_ENABLE_TREXIO=OFF and =ON (no runtime test required). Estimated effort: 1–2 hours.
>
>
>
> **Acceptance Criteria:**
> - Build system works with and without the TREXIO module.
> - Starter source file committed, does not break CI or builds.
> - No functional loader code yet.
>
> </issue_description>
>
> ## Comments on the Issue (you are @copilot in this section)
>
> <comments>
> </comments>
>

</details>

- Fixes scanberg/viamd#108

<!-- START COPILOT CODING AGENT TIPS -->
---

✨ Let Copilot coding agent  — coding agent works faster and does higher quality work when set up for your repo.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `04f15621d9cb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.