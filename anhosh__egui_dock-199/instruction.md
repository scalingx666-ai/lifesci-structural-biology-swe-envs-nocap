# Issue

**Title:** Mapping over tab types

## Description

This PR implements a `map` function for all types containing tabs.
The concept is similar to the map function in `Iterator`s, `Result`s, `Option`s, etc, taking a closure which receives a value and returns a new one, possibly of a different type.

### Usage example

Since serde deserialization does not allow partial deserialization or passing additional values, this feature can be used to construct the tab types from intermediate deserialized values while mixing in things like shared pointers.

```rs
let some_non_deserializable_value = Arc::new(..);

let tree: Tree<serde_json::Value> = from_str(..).unwrap();
let tree = tree.map_tabs(|value| {
    ActualTabType::new(some_non_deserializable_value.clone(), value).unwrap()
});
```

Also see

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `17b25b5dbbc4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.