# Issue

**Title:** Enhance the performance of dew and bubble_temperature()

## Description

The primary performance improvements stem from resolving closure issues and modifying solver parameters.

Please avoid writing closure functions like this and passing them to the solver.
```julia
function foo(r)
f(x)=x*r
solve!(f)
end
```

The best practice is to
```julia
function foo(r)
f = let r=r
  x->x*r
end
solve!(f)
end
```
see https://docs.julialang.org/en/v1/manual/performance-tips/#man-performance-captured

On the other hand, configuring the `ForwardDiff.Chunk{min(length(v0), 8)}()` saves some time.

The biggest challenge is to refactor the code and eliminate the current nested AD, which is not done here.

Before:
| Case | Variant | median | min | mean | allocs | memory |
|---|---|---:|---:|---:|---:|---:|
| A) PR ethane/propane (2 comp) | default | 56.90 µs | 49.80 µs | 63.09 µs | 626 | 60.56 KiB |
| A) PR ethane/propane (2 comp) | v0 | 38.00 µs | 30.20 µs | 41.25 µs | 376 | 41.00 KiB |   
| A) PR ethane/propane (2 comp) scan(8) | default | 418.00 µs | 402.20 µs | 465.93 µs | 5010 | 484.58 KiB |
| A) PR ethane/propane (2 comp) scan(8) | v0 | 350.00 µs | 336.70 µs | 401.44 µs | 3916 | 436.58 KiB |
| B) PR methane/ethane/propane (3 comp) | default | 93.50 µs | 75.50 µs | 100.15 µs | 849 | 89.24 KiB |
| B) PR methane/ethane/propane (3 comp) | v0 | 56.80 µs | 44.80 µs | 59.78 µs | 488 | 60.03 KiB |
| B) PR methane/ethane/propane (3 comp) scan(8) | default | 701.10 µs | 595.50 µs | 746.08 µs | 6789 | 706.82 KiB |
| B) PR methane/ethane/propane (3 comp) scan(8) | v0 | 602.40 µs | 553.20 µs | 705.57 µs | 5484 | 704.55 KiB |
| C) PR n-alkanes (4 comp) | default | 106.40 µs | 86.40 µs | 114.12 µs | 997 | 105.37 KiB |
| C) PR n-alkanes (4 comp) | v0 | 64.70 µs | 49.70 µs | 68.22 µs | 528 | 69.02 KiB |        
| C) PR n-alkanes (4 comp) scan(8) | default | 810.60 µs | 696.60 µs | 885.44 µs | 7978 | 843.09 KiB |
| C) PR n-alkanes (4 comp) scan(8) | v0 | 592.70 µs | 559.70 µs | 694.51 µs | 5519 | 733.60 KiB |

After:
| Case | Variant | median | min | mean | allocs | memory |
|---|---|---:|---:|---:|---:|---:|
| A) PR ethane/propane (2 comp) | default | 51.50 µs | 47.90 µs | 58.53 µs | 540 | 63.86 KiB | 
| A) PR ethane/propane (2 comp) | v0 | 30.00 µs | 27.10 µs | 35.27 µs | 292 | 44.56 KiB |      
| A) PR ethane/propane (2 comp) scan(8) | default | 402.90 µs | 390.70 µs | 451.69 µs | 4322 | 510.95 KiB |
| A) PR ethane/propane (2 comp) scan(8) | v0 | 312.70 µs | 299.70 µs | 357.12 µs | 3041 | 440.80 KiB |
| B) PR methane/ethane/propane (3 comp) | default | 76.70 µs | 64.00 µs | 81.84 µs | 691 | 79.65 KiB |
| B) PR methane/ethane/propane (3 comp) | v0 | 40.60 µs | 32.60 µs | 45.05 µs | 332 | 50.70 KiB |
| B) PR methane/ethane/propane (3 comp) scan(8) | default | 543.30 µs | 506.50 µs | 615.18 µs | 5525 | 630.05 KiB |
| B) PR methane/ethane/propane (3 comp) scan(8) | v0 | 388.80 µs | 364.50 µs | 450.71 µs | 3472 | 508.35 KiB |
| C) PR n-alkanes (4 comp) | default | 97.40 µs | 82.80 µs | 105.40 µs | 839 | 95.55 KiB |     
| C) PR n-alkanes (4 comp) | v0 | 54.60 µs | 44.50 µs | 58.56 µs | 372 | 59.47 KiB |
| C) PR n-alkanes (4 comp) scan(8) | default | 730.55 µs | 673.00 µs | 809.86 µs | 6714 | 764.59 KiB |
| C) PR n-alkanes (4 comp) scan(8) | v0 | 540.80 µs | 507.50 µs | 616.04 µs | 3900 | 599.15 KiB |

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `156d2b20577d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.