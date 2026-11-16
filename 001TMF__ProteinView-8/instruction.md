# Issue

**Title:** perf: zlib Kitty encoding + f32 z-buffer

## Description

## Summary
- **Replace PNG with raw RGBA + zlib** for Kitty graphics — 2-5x faster encoding, same compression for protein renders (mostly transparent pixels). Changes `f=100` to `f=32,o=z` in the Kitty escape header. Transparency preserved via RGBA alpha channel.
- **Switch z-buffer from f64 to f32** — halves depth buffer memory bandwidth, better cache utilization. f32 has more than enough precision for screen-space z-buffering. Zero quality loss.

Both optimizations are lossless — pixel-identical output.

## Test plan
- [ ] FullHD mode in Kitty/Ghostty terminal — verify image renders correctly
- [ ] Transparency preserved (terminal background shows through)
- [ ] Auto-rotate smooth, no visual artifacts
- [ ] All 115 tests pass
- [ ] Test over SSH — verify compression is sufficient

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5a176eb5b761`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.