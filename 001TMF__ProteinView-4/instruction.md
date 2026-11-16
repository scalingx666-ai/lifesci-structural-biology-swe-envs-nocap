# Issue

**Title:** SSH-aware 3-tier render modes with PNG Kitty compression

## Description

## Summary
- **3-tier render mode system**: Braille → HD (shaded braille) → FullHD (Sixel/Kitty graphics)
- **SSH-aware defaults**: `--hd` maps to HD over SSH, FullHD locally. `--fullhd` forces graphics protocol.
- **PNG-compressed Kitty protocol**: Custom transmitter using `f=100` PNG encoding instead of ratatui-image's raw RGBA (`f=32`). ~10-20x bandwidth reduction, making FullHD viable over SSH.
- **Split keybindings**: `m` = Braille ↔ HD, `M` = toggle FullHD (with SSH warning)
- **Auto-scaling thickness**: Line/circle sizes scale with framebuffer resolution
- **Smooth auto-rotate**: dt clamping + frame-skip timer reset prevents jitter
- **Flicker-free Kitty rendering**: Single fixed image ID with atomic replacement, unicode placeholders with diacritics matching ratatui-image's approach

## Changes (10 commits)
- `4aadedb` feat: 3-tier render mode system with SSH-aware defaults
- `a9bb2d5` fix: split render mode keybindings (m=HD, M=FullHD)
- `05973e3` fix: auto-scale line thickness based on framebuffer resolution
- `5d72170` perf: PNG-compressed Kitty graphics protocol for FullHD mode
- `c0c4fba` fix: resolve FullHD rendering bugs and improve robustness
- `bf97b2e` fix: resolve jitter, flickering, and HD quality issues
- `d2209e1` fix: eliminate FullHD Kitty flickering by removing delete-before-draw
- `ba43056` fix: restore wireframe line thickness at HD/braille resolution
- `d7e988d` fix: prevent help overlay panic on small terminals, reduce allocations
- `53d070b` fix: address codebase review findings

## Test plan
- [ ] `cargo run -- examples/1AOI.pdb` — starts in Braille, press `m` for HD, `M` for FullHD
- [ ] Auto-rotate (spacebar) smooth in all three modes
- [ ] FullHD over SSH: responsive with PNG compression
- [ ] Wireframe mode (`v`) looks correct in HD and FullHD
- [ ] Color cycling (`c`) works across all render modes
- [ ] Help overlay (`?`) displays correctly, no panic on small terminals
- [ ] Status bar shows render mode, SSH indicator, and "Backbone*" for degraded Cartoon in Braille

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0d8308dab7fa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.