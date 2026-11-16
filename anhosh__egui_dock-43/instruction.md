# Issue

**Title:** Tab Add button

## Description

<img width="602" alt="Screenshot 2022-09-22 091811" src="https://user-images.githubusercontent.com/10081540/191800570-9578d356-2ae3-49db-89ac-309696fb173e.png">

Adds a little `+` button to the tab title bar. Using the API looks like this:
```rust
impl egui_dock::TabViewer for SomeTabWidget<'_> {
    type Tab = InstanceKey;
    ....
    fn on_add(&mut self, node: egui_dock::NodeIndex) {
        // can use node index to refocus the tree and add to a particular split
    }
    ....
}
```
The code for drawing the `+` button is a little rudimentary, let me know if you have any suggestions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f88edb59f757`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.