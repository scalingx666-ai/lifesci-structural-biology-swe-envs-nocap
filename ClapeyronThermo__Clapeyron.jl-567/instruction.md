# Issue

**Title:** Implement compression of association matrices

## Description

Motivation:

On association, the complexity of solving the association problem grows with the amount of site-pairs. but, on some particular cases (site-pairs with the same amount of sites), we can construct a smaller matrix that represents the same system. for example:

```julia
julia> system = PCSAFT(["methanol","ethanol"],assoc_options = :esd_runtime)
PCSAFT{BasicIdeal, Float64} with 2 components:
 "methanol"
 "ethanol"
Contains parameters: Mw, segment, sigma, epsilon, epsilon_assoc, bondvol

julia> K = Clapeyron.dense_assoc_site_matrix(system,6e-5,298.15,[0.3,0.7])
4×4 Matrix{Float64}:
   0.0    176.484    0.0    254.052
 176.484    0.0    254.052    0.0
   0.0    108.88     0.0    156.734
 108.88     0.0    156.734    0.0

julia> Clapeyron.assoc_matrix_solve(K)
4-element Vector{Float64}:
 0.040734223746058756
 0.04073422374605875
 0.06439787248555942
 0.06439787248555941
```
Now, lets consider the following matrix:

```julia
julia> J
2×2 Matrix{Float64}:
 176.484  254.052
 108.88   156.734

julia> Clapeyron.assoc_matrix_solve(J)
2-element Vector{Float64}:
 0.04073422374605745
 0.064397872485559
```
We go from a 4x4 to a 2x2 matrix, eliminating all zeros, but getting the same result (with unique sites). In other terms, the association solution of J is the "compressed" form of the association solution of K.

Even in small 4x4 cases, compression happens to reduce the runtime of the association solver by (at least) half, and due to how matrix inversion grows with size (around O(n^3)), i expect that any work done in reducing the complexity of K is worth it.

This PR implements two new features:

1. A compression function: that returns a matrix `J` and a series of indices for the original (repeated) site fractions:

```julia
julia> J,i = Clapeyron.compress_assoc_matrix(K);

julia> Clapeyron.assoc_matrix_solve(K) - Clapeyron.assoc_matrix_solve(J)[i]
4-element Vector{Float64}:
 1.304512053934559e-15
 1.2975731600306517e-15
 4.163336342344337e-16
 4.0245584642661925e-16

julia> i
4-element Vector{Int64}:
 1
 1
 2
 2
```
3. A 2x2 "dense" non-allocating dense solver: for most PC-SAFT binary association problems, the compressed result is a 2x2 dense matrix. Instead of solving the 2x2 association problem directly, we can instead opt for solve it in 1-dimentional space. More details on the formulation are in the code. The result in terms of performance is the following:

```julia
julia> @btime Clapeyron.assoc_matrix_solve($K) #original matrix, generic solver
  4.286 μs (20 allocations: 1.48 KiB)
4-element Vector{Float64}:
 0.040734223746058756
 0.04073422374605875
 0.06439787248555942
 0.06439787248555941

julia> @btime Clapeyron.assoc_matrix_solve($J) #compressed matrix, generic solver
  1.630 μs (18 allocations: 848 bytes)
2-element Vector{Float64}:
 0.04073422374605875
 0.06439787248555941

julia> @btime Clapeyron.assoc_matrix_solve($J) #compressed matrix, specialized solver
  729.915 ns (2 allocations: 80 bytes)
2-element Vector{Float64}:
 0.04073422374605745
 0.064397872485559
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `afc9afcdcedb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.