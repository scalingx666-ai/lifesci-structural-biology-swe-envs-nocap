# Issue

**Title:** Refactor: TabViewer

## Description

The current `trait Tab` implementation has some limitations:

A) We cannot serialize `Tree`:s.
B) One must create the tabs up-front with everything they need to show themselves (with `Tab::ui`).

The second point in particular impose very weird constraints on users. If a tab wants to modify some global state, it need to be initialized with a `Arc<Mutex<State>>` or similar. I don't like!

This PR is a refactor that solves both these problems (and more!?).

The approach is this: instead of storing a `Box<dyn Tab>` in `Tree`, we instead make `Tree` generic over what the user wants to identify a tab (`Tree<Tab>`). For instance, a user may identify each tab by a UUID or similar. Then we use a new `trait TabView` which actually shows the tabs, fetches their titles, handles close events, and so on.

The old `trait Tab` approach can still be implemented on top of this implementation, if one so desires.

In general, I think this is a better approach to a generic library. I'm not sure if we should even keep the old `trait Tab`, or let users define that themselves.

---

**TODO**
* [x] Figure out if we want to keep `trait Tab`, and if so if we should add some helpers to make make the use of it similar to before

---

Other changes in this PR:
* A new newtype `struct TabIndex(pub usize)` for better typesafety (and self-documenting code).
* Add `Tree::find_tab`
* Add `Tree::set_active_tab`
* Rename `Tree::set_focused` to `Tree::set_focused_node`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `05092bb0f19b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.