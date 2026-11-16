# Issue

**Title:** `Tab` rewrite

## Description

`Tab` is no longer a trait which the user has to implement on their own custom widget. A context type is also no longer required.

This makes creating trees easier without limiting customizability.

Example:

```rust
// Initial tree setup
let tab1 = TabBuilder::default()
    .title("Tab 1")
    .content(|ui| {
        ui.label("Tab 1");
    })
    .build();
let tab2 = TabBuilder::default()
    .title("Tab 2")
    .inner_margin(Margin::same(4.0))
    .content(|ui| {
        ui.label("Tab 2");
    })
    .build();
let mut tree = Tree::new(vec![tab1, tab2]);

// Then, in your app's `update` function:
egui_dock::show(&mut ui, id, &style, &mut tree)
```

Part of this PR is closing #1 and #5

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `87ab646620c7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.