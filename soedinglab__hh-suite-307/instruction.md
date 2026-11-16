# Issue

**Title:** Use std::sort instead of QSortInt

## Description

I profiled the T1050 with the parameters run by AlphaFold. (Only -cpu is changed). I used Score-P as the profiling tool and got the following results.

<img width="1435" alt="pr" src="https://user-images.githubusercontent.com/40717344/150444606-57083866-ce1f-48a4-b6e2-7637da12daf7.png">

From this image, we can see that `QSortInt` in `mergeHitsToQuery` is taking a long time. With fast enough storage, my hhblits for this condition is about 2100sec, and `QSortInt` accounts for about 40%.

Instead of this `QsortInt`, use `std::sort`.

I ran hhblits installed by conda and using `std::sort` under the same conditions as before.
In order to avoid I/O effects, I analyze the difference in execution time between the logs that contain this change, instead of the overall execution time. (From https://github.com/soedinglab/hh-suite/blob/ac765987bd0daceb093a41a8e2850887dad5835f/src/hhblits.cpp#L1028-L1030 to https://github.com/soedinglab/hh-suite/blob/b100bb05fe6b920a7cbe58256eef72954d9088bf/src/hhhmm.cpp#L2337)

  | conda | use `std::sort`|
-- | -- | --|
iteration 1 | 1232(sec) | 477(sec)
iteration 2 | 631(sec) | 374(sec)
iteration 3 | 306(sec) | 232(sec)

This reduced the execution time. I also ran it using the parallelization policy, but the results were not significantly different from `std::sort`.

This change is due to the different stability of sort, so the execution results may not truly match.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dc74acf438de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.