# Issue

**Title:** feat(output): add optional timed molecule output

## Description

This PR adds optional time-aware molecule output for tracking molecule structures across analyzed frames.

Changes include:

- add optional frame/timestep columns to .moname via --show-molecule-time
- support filtering .moname entries by analyzed frame via --molecule-frame
- support filtering .moname entries by original timestep via --molecule-timestep
- add optional .reactionevent JSONL output via --reaction-event
- keep .reactionevent disabled by default to avoid extra per-event overhead

## Tests

- python -m black --check reacnetgenerator/reacnetgen.py reacnetgenerator/_path.py reacnetgenerator/_reaction.py reacnetgenerator/commandline.py tests/test_reacnetgen.py
- python -m pytest tests/test_reacnetgen.py::TestReacNetGen::test_reaction_event_details tests/test_reacnetgen.py::TestReacNetGen::test_reaction_event_default_is_off tests/test_reacnetgen.py::TestReacNetGen::test_molecule_time_formatting tests/test_reacnetgen.py::TestReacNetGen::test_molecule_time_filter_by_timestep tests/test_reacnetgen.py::TestReacNetGen::test_commandline_help
- git diff --check"

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **New Features**
  * New CLI options to emit an optional molecule-timeline CSV (with frame/timestep filters) and to output per-reaction event CSV rows; both outputs are opt-in.

* **Documentation**
  * Clarified molecule timeline and name formats, documented molecule-timeline CSV columns, timestep/frame filtering behavior, and reaction-event CSV columns/indexing.

* **Tests**
  * Added unit and integration tests for molecule timeline generation, filtering, sorting/merging, and reaction-event CSV output.

<!-- review_stack_entry_start -->

[![Review Change Stack](https://storage.googleapis.com/coderabbit_public_assets/review-stack-in-coderabbit-ui.svg)](https://app.coderabbit.ai/change-stack/deepmodeling/reacnetgenerator/pull/2436?utm_source=github_walkthrough&utm_medium=github&utm_campaign=change_stack)

<!-- review_stack_entry_end -->
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6092d9dcdc9f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.