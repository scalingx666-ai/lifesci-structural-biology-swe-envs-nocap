# Issue

**Title:** Use available_rect_before_wrap() in DockArea::show_inside

## Description

Using `max_rect()` in `DockArea::show_inside` function makes the DockArea hide any element previously added, it is specially annoying when using Panels.

With the following code:
```rust
CentralPanel::default().show(ctx, |ui| {
    TopBottomPanel::top("top_bar").show_inside(ui, |ui| {
        ui.label("MyLabel");
    });

    DockArea::new(&mut self.tree)
        .show_inside(ui, &mut self.context);
});
```

We previously had:
![image](https://user-images.githubusercontent.com/48593807/217957035-46bd9f5a-5de5-4fc8-8b3b-756c31b7d8c1.png)

And with this change we have:
![image](https://user-images.githubusercontent.com/48593807/217957130-fda3b12b-0483-46ff-9806-0ecf328f22a2.png)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d96ceba8e946`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.