# Issue

**Title:** refactor: fix clippy warnings for rust 1.64

## Description

fixes 
```
warning: unnecessary parentheses around match arm expression
   --> src/pdb/string.rs:205:34
    |
205 |             Self::Ucs2le(buf) => (buf.len() * 2),
    |                                  ^             ^
    |
    = note: `#[warn(unused_parens)]` on by default
help: remove these parentheses
    |
205 -             Self::Ucs2le(buf) => (buf.len() * 2),
205 +             Self::Ucs2le(buf) => buf.len() * 2,
    |

error: unnecessary closure used with `bool::then`
  --> src/setting.rs:69:17
   |
69 |     #[bw(calc = no_checksum.then(|| 0).unwrap_or_else(|| self.calculate_checksum()))]
   |                 ^^^^^^^^^^^^----------
   |                             |
   |                             help: use `then_some(..)` instead: `then_some(0)`
   |
note: the lint level is defined here
  --> src/lib.rs:18:9
   |
18 | #![deny(clippy::all)]
   |         ^^^^^^^^^^^
   = note: `#[deny(clippy::unnecessary_lazy_evaluations)]` implied by `#[deny(clippy::all)]`
   = help: for further information visit https://rust-lang.github.io/rust-clippy/master/index.html#unnecessary_lazy_evaluations

```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `12a5b8213191`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.