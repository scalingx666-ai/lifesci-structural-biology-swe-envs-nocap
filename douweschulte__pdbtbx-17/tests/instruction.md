# Issue

**Title:** refactor

## Description

Either `&mut T` or `*mut T` can be automatically coerced to `*mut T` when passed as a function argument, for example:

```rust
fn main() {
    let mut i = 0;
    print_a_option_mut_i32(Some(&mut i));
}

fn print_a_option_mut_i32(p: Option<*mut i32>) {
    println!("{:?}", unsafe { *p.unwrap() });
}
```

And because it's a raw pointer anyways, it is good to be explicit

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `649aa8fd90a0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.