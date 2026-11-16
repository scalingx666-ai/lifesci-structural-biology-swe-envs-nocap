# Issue

**Title:** Add OutputReduction to organize ensemble results by output type

## Description

## Implementation Complete ✅

- [x] Understand current codebase structure
- [x] Implement `OutputReduction` type in `reductions.jl`
  - [x] Create struct that stores trajectories organized by output name
  - [x] Implement reduction function that reorganizes data from Trajectory → Output to Output → Trajectory
  - [x] Handle both with and without time data
  - [x] **Fix type stability issue** - use `typeof(v)[]` to create properly typed vectors
- [x] Export `OutputReduction` from Ensembles module
- [x] Add tests for `OutputReduction` in test/Ensembles/reductions.jl
  - [x] Test basic functionality with multiple trajectories and outputs
  - [x] Test that data integrity is maintained
  - [x] Test with and without time data
- [x] Address code review feedback
- [x] Run security scan with CodeQL
- [x] Final verification complete

## Summary

Successfully implemented `OutputReduction` type that reorganizes ensemble simulation results from trajectory-major to output-major format. This eliminates the need for manual indexing acrobatics when comparing outputs across trajectories.

### Recent Fix (commit addressing @Alexsp32's comment)
Fixed type stability issue in `get_initial_output_dict()`:
- **Before**: `[[] for _ in keys(template)]` created `Vector{Any}` arrays
- **After**: `[typeof(v)[] for v in template]` creates properly typed vectors (e.g., `Vector{Vector{Matrix{Float64}}}`)

This ensures type stability and better performance by avoiding type inference issues.

### Key Features
- Simple, intuitive API: `reduction=OutputReduction()`
- Type-stable implementation
- Backward compatible with existing code
- Comprehensive documentation and tests
- Follows existing codebase patterns

### Usage
```julia
result = run_dynamics(sim, tspan, distribution;
    output=(OutputPosition, OutputVelocity),
    reduction=OutputReduction(),
    trajectories=10)

# Easy access to data
positions = result[:OutputPosition]  # All positions from all trajectories
```

### Files Changed
- `src/Ensembles/reductions.jl` - Core implementation with type stability fix (52 lines)
- `src/Ensembles/Ensembles.jl` - Export statement (1 line)
- `test/Ensembles/reductions.jl` - Test suite (32 lines)

<!-- START COPILOT ORIGINAL PROMPT -->

<details>

<summary>Original prompt</summary>

>
> ----
>
> *This section details on the original issue you should resolve*
>
> <issue_title>Add option to sort simulations output by Output -> Trajectory rather than Trajectory -> Output</issue_title>
> <issue_description>**Is your feature request related to a problem? Please describe.**
> Output from ensemble simulations in NQCDynamics trajectories is sorted by trajectory, then output:
>
> ```
> Trajectory 1
> ⎣ Output1
> ⎣ Output2
> ⎣ Output3
> Trajectory 2
> ⎣ Output1
> ⎣ Output2
> ⎣ Output3
> ```
>
> This makes sense, but if we want to compare outputs across trajectories, indexing acrobatics á la `get.(trajectories, Output1, nothing)` become necessary to get a more usable representation of results.
>
> **Describe the solution you'd like**
> Maybe we can write a `Reduction` type that converts an ensemble simulation into a representation sorted by output, then trajectories, e.g:
>
> ```
> Output1_per_trajectory
> ⎣ Trajectory1
> ⎣ Trajectory2
> ⎣ Trajectory3
> Output2_per_trajectory
> ⎣ Trajectory1
> ⎣ Trajectory2
> ⎣ Trajectory3
> Output3_per_trajectory
> ⎣ Trajectory1
> ⎣ Trajectory2
> ⎣ Trajectory3
> ```
>
> **Describe alternatives you've considered**
> Indexing acrobatics. The advantage of building these intermediates from NQCDynamics results is that their shape is clearer to the user, while doing this kind of sorting automatically will yield memory-inefficient nested Vector types for output types that return more than a scalar, and finding a flattening routine to create higher-dimensional Arrays instead will be difficult to keep in a form generalizable to all problems.
>
> **Additional context**
> @Ash-Baldwin thinks this would be a good idea as well.
> </issue_description>
>
> ## Comments on the Issue (you are @copilot in this section)
>
> <comments>
> </comments>
>

</details>

<!-- START COPILOT CODING AGENT SUFFIX -->

- Fixes NQCD/NQCDynamics.jl#452

<!-- START COPILOT CODING AGENT TIPS -->
---

💡 You can make Copilot smarter by setting up custom instructions, customizing its development environment and configuring Model Context Protocol (MCP) servers. Learn more [Copilot coding agent tips](https://gh.io/copilot-coding-agent-tips) in the docs.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `accd71fa0724`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.