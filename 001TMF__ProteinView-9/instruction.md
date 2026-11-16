# Issue

**Title:** fix: wire up --mode flag, line clipping, resize handling, color scheme state

## Description

## Summary
Fixes 5 issues found during codex CLI code review of the codebase.

- **Wire up `--mode` CLI flag** — was declared but never parsed. `App::new()` hardcoded Cartoon. Now accepts `cartoon|backbone|wireframe`, default `cartoon`.
- **Cohen-Sutherland line clipping** — `draw_line_3d()` and `draw_dashed_line_3d()` only did trivial reject. Extreme zoom/pan caused very long Bresenham walks on off-screen lines. Now clips to framebuffer bounds with z-interpolation.
- **Save/restore color scheme in interface mode** — `cycle_color()` corrupted interface coloring, `toggle_interface()` reset to Structure discarding user's scheme. Now saves on enter, restores on exit.
- **Handle terminal resize events** — input thread only forwarded Key events. Now forwards Resize, recalculates zoom and marks ribbon mesh dirty.
- **`m` from FullHD steps to HalfBlock** — was dropping straight to Braille. Now follows the 3-tier model: FullHD→HalfBlock→Braille.

## Test plan
- [ ] `--mode wireframe` starts in wireframe
- [ ] `--mode backbone` starts in backbone
- [ ] Zoom way in on wireframe mode — no render freeze from off-screen lines
- [ ] Press `f` (interface), then `c` (cycle color), then `f` again — original scheme restored
- [ ] Resize terminal window — viewport reframes correctly
- [ ] Press `m` from FullHD — goes to HalfBlock, not Braille
- [ ] All 115 tests pass

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6505a95ec2c3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.