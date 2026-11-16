# Issue

**Title:** Use CentralPanel in DockArea::show()

## Description

Fixes what we can for #95.

Currently, egui does not support well the addition of a 'background' layer (it makes `is_pointer_over_area`) break (see issue for details).

In this PR I propose creating a `CentralPanel` instead to circumvent the issue. 

However, in my opinion we shouldn't have a show function which takes a `Context`, we're trying to do the same thing as a `CentralPanel` without the ability to interact with egui's internals.
I think that we could consider `DockArea` as a Widget, which has to be rendered inside an egui Ui. In this case we could only have a `show` function that would be the equivalent of today's `show_inside`. I agree that intuitively, DockArea is a Container, but in the egui sense, it would avoid the issue pointed in #95.

What are your thoughts @Adanos020?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9e07a4b7a95e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.