# Issue

**Title:** Update egui/eframe to 0.34

## Description

## Summary
- Bump `egui` dependency from 0.33 to 0.34
- Bump `eframe` dev-dependency from 0.33 to 0.34
- Deprecate `DockArea::show(ctx)` — users should use `show_inside(ui)` instead
- Migrate all examples to eframe 0.34's new `App::ui(&mut Ui)` API (replacing deprecated `App::update(&Context)`)
- Replace deprecated `ctx.style()` with `ctx.global_style()`

## Test plan
- [x] `cargo check --all-features --examples` — no warnings
- [x] `cargo test --doc` — 20 passed, 0 failed

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e9694814cdfe`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.