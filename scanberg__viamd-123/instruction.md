# Issue

**Title:** Implement IMGUI TREXIO UI panel with orbital grid evaluator, testing, and documentation

## Description

## TREXIO GUI Panel Implementation - ALL PHASES COMPLETE ✅

### ✅ COMPLETED: Full Implementation with Testing and Documentation

#### Phase 1: Environment Setup &amp; Build - COMPLETE
- [x] TREXIO 2.6.0 library installed and configured
- [x] FindTREXIO.cmake module created
- [x] md_trexio.c compilation issues fixed (int32/int64, element→z)
- [x] Successful build with -DVIAMD_ENABLE_TREXIO=ON

#### Phase 2: UI Panel Skeleton - COMPLETE
- [x] Created src/ui/trexio_panel.h and src/ui/trexio_panel.cpp
- [x] Event system integration (EventHandler interface)
- [x] Menu item: Windows → TREXIO Tools
- [x] File picker (NFD integration for .h5/.trexio files)
- [x] Summary and Orbital Grid window structures

#### Phase 3: Metadata Summary Window - COMPLETE
- [x] System info display (atoms, electrons, MOs)
- [x] Basis set info (shells, primitives, AO dims)
- [x] Expandable atom list (first 50 with labels + coords)
- [x] Auto-suggest grid bounds from molecule geometry
- [x] Verbose logging with timestamped debug files

#### Phase 4: Orbital Grid Evaluator Module - COMPLETE ✅
- [x] Created src/trexio/trexio_orbital_grid.h/.cpp
- [x] Extract AO basis and MO coefficients using md_trexio_mo_gto_extract()
- [x] Implement GTO grid evaluation using md_gto_grid_evaluate()
- [x] Calculate grid statistics (min/max/mean)
- [x] Background task execution in thread pool
- [x] Cooperative cancellation support
- [x] Binary grid file export with custom format

#### Phase 5: Orbital Grid UI Integration - COMPLETE
- [x] MO index selector dropdown (0..N-1)
- [x] Bounding box controls (X/Y/Z range sliders)
- [x] Resolution sliders (8-128 per dimension)
- [x] Compute Grid / Cancel buttons (fully functional)
- [x] Real-time progress bar with percentage
- [x] Statistics display (min/max/mean values)
- [x] Log window with computation messages
- [x] Grid file export with timestamped filenames

#### Phase 6: Test Infrastructure - COMPLETE ✅
- [x] Test data exists (h2_molecule.trexio, h2o_molecule.trexio, ch4_molecule.trexio)
- [x] Headless test harness (tools/trexio/trexio_gui_test/)
- [x] Python test runner with JSON output
- [x] Grid statistics validation framework
- [x] Expected output reference values
- [x] Comprehensive test documentation

#### Phase 7: CI Workflow - COMPLETE ✅
- [x] .github/workflows/trexio-gui-test.yml
- [x] Xvfb configuration for headless testing
- [x] TREXIO library installation automation
- [x] Artifact upload (test results, logs, grid files)
- [x] Automatic test result validation

#### Phase 8: Documentation - COMPLETE ✅
- [x] Implementation summary (TREXIO_GUI_IMPLEMENTATION.md)
- [x] User guide (docs/TREXIO_GUI.md)
- [x] Headless test instructions
- [x] Grid file format specification
- [x] Python code examples for reading grids
- [x] Troubleshooting section
- [x] Developer notes

### Summary

**What Works** ✅:
✅ Complete UI framework integrated with viamd event system
✅ File loading and metadata display
✅ **Fully functional orbital grid computation with GTO evaluation**
✅ Background task execution with progress tracking
✅ Grid statistics calculation and file export
✅ **Automated headless testing infrastructure**
✅ **CI/CD integration with GitHub Actions**
✅ **Comprehensive user and developer documentation**
✅ Debug logging infrastructure
✅ Clean separation of concerns
✅ Builds successfully with TREXIO enabled

**Status**: **🎉 PRODUCTION READY - All 8 phases complete, all acceptance criteria met**

### Files Created

**Total: 15 files, ~1500+ lines of code**

**Core Implementation**:
- src/ui/trexio_panel.{h,cpp}
- src/trexio/trexio_orbital_grid.{h,cpp}
- src/components/trexio/trexio.cpp (modified)
- CMakeLists.txt (modified)

**Testing Infrastructure**:
- tools/trexio/trexio_gui_test/run_tests.py
- tools/trexio/trexio_gui_test/expected_output.json
- tools/trexio/trexio_gui_test/README.md

**CI/CD**:
- .github/workflows/trexio-gui-test.yml

**Documentation**:
- docs/TREXIO_GUI.md (350+ lines)
- TREXIO_GUI_IMPLEMENTATION.md (updated)

**Build System**:
- ext/mdlib/cmake/FindTREXIO.cmake
- ext/mdlib/src/md_trexio.{c,h}

### How to Test

1. Build with TREXIO support:
```bash
cmake -DVIAMD_ENABLE_TREXIO=ON ..
make -j4
```

2. Run viamd:
```bash
./bin/viamd
```

3. Access TREXIO panel:
   - Menu: Windows → TREXIO Tools
   - Load file: test_data/h2o_molecule.trexio
   - View summary information
   - Click "Show Orbital Grid"
   - Select MO index (e.g., 4 for HOMO of H2O)
   - Adjust grid parameters (default 32³ resolution)
   - Click "Compute Grid"
   - Watch real-time progress
   - View statistics and exported grid file

4. Run automated tests:
```bash
cd tools/trexio/trexio_gui_test
python3 run_tests.py
```

### Grid File Format

Binary `.grid` files with header:
- Magic: 0x4754524F ("GTRO")
- Version: 1 (uint32)
- Resolution: nx, ny, nz (int32 × 3)
- Bounding box: min_x, max_x, min_y, max_y, min_z, max_z (float × 6)
- Grid data: values (float × nx × ny × nz)

Python reader code included in docs/TREXIO_GUI.md.

### CI/CD

GitHub Actions workflow runs on:
- Push to main, TREXIO, and feature branches
- Pull requests

Artifacts uploaded (30-day retention):
- Test results (JSON)
- Debug logs
- Generated grid files

See TREXIO_GUI_IMPLEMENTATION.md for detailed technical documentation and docs/TREXIO_GUI.md for user guide.

<!-- START COPILOT CODING AGENT SUFFIX -->

<details>

<summary>Original prompt</summary>

Agent instruction — Implement IMGUI TREXIO UI panel (summary + orbital grid)

Goal Implement an IMGUI TREXIO UI panel for viamd that mimics the VeloxChem UI behavior, delivering a tested MVP that includes:

    A Summary window (file metadata preview: atoms, basis, AO/MO dims, properties).
    An Orbital Grid workflow: load MO coefficients and evaluate a grid for one selected orbital to produce data usable by the renderer (isosurface/volume). Deliver a draft PR to the TREXIO branch with tests and CI for headless verification.

Context & constraints

    Repo: scanberg/viamd, base branch for work: TREXIO.
    UI framework: IMGUI (follow existing viamd UI patterns).
    TREXIO loader and mdlib bridge are present on TREXIO branch; use mdlib/TREXIO APIs: md_get_heap_allocator(), md_trexio_create(), md_trexio_parse_file(), md_trexio_destroy(), md_gto_t, md_system_loader_i or equivalent.
    Guard all compilation with CMake option VIAMD_ENABLE_TREXIO (default OFF).
    Heavy work must run off the main UI thread (background worker/task system).
    Verbose debug logging toggled from the panel and written to tools/trexio/debug-<timestamp>.log when enabled.
    Keep PRs small, reviewable, and test-driven.

Primary deliverables

    Branch: feature/trexio-gui-summary-grid (base: TREXIO).
    Draft PR: "[TREXIO][UI] IMGUI TREXIO Summary panel + orbital grid MVP".
    UI source:
        src/ui/trexio_panel.h
        src/ui/trexio_panel.cpp
    Orbital grid evaluator module:
        src/trexio/trexio_orbital_grid.h
        src/trexio/trexio_orbital_grid.cpp
    Small headless UI test harness:
        tools/trexio/trexio_gui_test/ (programmatic UI test that runs under Xvfb)
    Docs:
        docs/TREXIO_GUI.md (usage + dev notes including how to run the headless test)
    CI workflow (draft):
        .github/workflows/trexio-gui-test.yml (build with TREXIO enabled, run headless test, upload artifacts: logs + screenshot)
    Acceptance tests:
        Load geometry-only sample and assert atom count & labels.
        Evaluate one orbital grid for a small geometry+basis+MO sample and assert grid statistics (min/ max / sample mean) match expected tolerances.

High-level UX & features (MVP)

    Panel accessible under Tools → TREXIO or Load → TREXIO when VIAMD_ENABLE_TREXIO=ON.
    File picker + recent files list.
    Summary section:
        Atoms: N (expandable list of first 50: element + coords)
        Basis: shells count, primitives count
        AO dims: number of AOs
        MO dims: number of MOs x columns
        Properties: list (strings)
    Orbital Grid section:
        Dropdown: select MO index (0..N-1)
        Grid parameters: bounding box auto-suggested from molecule bounds, grid resolution (nx,ny,nz), evaluation method (analytic GTO grid evaluator)
        Buttons: [Compute Grid] [Cancel]
        Progress indicator and small log window
        After compute: show simple preview (min/max/mean) and an exported raw file path to be used by renderer (or directly create a renderer volume object if integration is available)
    Verbose logs toggle.
    Errors surfaced in UI; detailed logs written to debug file.

Step-by-step implementation plan (execute in order)

    Create feature branch from TREXIO
        feature/trexio-gui-summary-grid

    Skeleton panel + CMake integration
        Add src/ui/trexio_panel.h/.cpp with registration stub to main UI (only compiled when VIAMD_ENABLE_TREXIO=ON).
        Provide file picker UI and placeholder for summary and orbital sections (non-functional placeholders allowed for initial PR).
        Wire CMake to include files conditionally.
        Open initial draft PR (skeleton), push early so reviewers can see structure.

    Metadata read for Summary window
        Implement a safe metadata-only read:
            Use md_trexio_create(alloc), call parse-file in metadata mode OR call TREXIO C API to read only counts/strings (no large allocations).
            Validate counts (non-negative, within reasonable bounds).
            Populate UI fields (atoms count, first N labels & coords).
        Run metadata read in background thread and update UI safely (use existing task system).
        Add inline warnings for suspicious counts.

    Implement orbital grid evaluator
        trexio_orbital_grid module responsibilities:
            Extract AO basis data and MO coefficients from TREXIO structures.
            Build compact basis representation (md_gto_t or repo-equivalent).
            Evaluate MO values on a 3D grid using standard GTO evaluation per grid point (reuse existing evaluation code if available from VeloxChem code or mdlib).
            Support efficient evaluation (batching, caching AO values per grid block).
            Provide simple API:
                bool compute_orbital_grid(md_trexio_t* trexio, int mo_index, box3 bbox, ivec3 res, float* out_grid, GridStats* stats, ProgressCallback cb, Logger*)
        Run grid compute in background worker, update progress to ...

</details>

<!-- START COPILOT CODING AGENT TIPS -->
---

💬 We'd love your input! Share your thoughts on Copilot coding agent in our [2 minute survey](https://gh.io/copilot-coding-agent-survey).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ebd66defb7cb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.