# Issue

**Title:** Fix compilation with Clang++

## Description

The 2 commits in this PR are required to build muscle for bioconda: 

### 

The `zero` and `memset_zero` macros defined in `myutils.h` are the same, but `zero` interferes with LLVM's libcxx when compiling on macOS using Clang:

```
In file included from addconfseq.cpp:1:
In file included from ./muscle.h:23:
In file included from ./multisequence.h:4:
In file included from ./sequence.h:6:
In file included from /usr/local/miniconda/envs/bioconda/conda-bld/muscle_1644453677064/_build_env/bin/../include/c++/v1/fstream:184:
In file included from /usr/local/miniconda/envs/bioconda/conda-bld/muscle_1644453677064/_build_env/bin/../include/c++/v1/ostream:137:
In file included from /usr/local/miniconda/envs/bioconda/conda-bld/muscle_1644453677064/_build_env/bin/../include/c++/v1/ios:215:
In file included from /usr/local/miniconda/envs/bioconda/conda-bld/muscle_1644453677064/_build_env/bin/../include/c++/v1/__locale:18:
In file included from /usr/local/miniconda/envs/bioconda/conda-bld/muscle_1644453677064/_build_env/bin/../include/c++/v1/mutex:190:
/usr/local/miniconda/envs/bioconda/conda-bld/muscle_1644453677064/_build_env/bin/../include/c++/v1/__mutex_base:447:25: error: too few arguments provided to function-like macro invocation
    if (__d <= __d.zero())
                        ^
./myutils.h:361:9: note: macro 'zero' defined here
#define zero(a, n)      memset((a), 0, (n)*sizeof(a[0]))
        ^
1 error generated.
make: *** [Makefile:53: Darwin/addconfseq.o] Error 1
```

This is the call to `zero` in libcxx:

https://github.com/llvm/llvm-project/blob/b35be6fe98e30b2373e8fdf024ef8c13a32121d7/libcxx/include/__mutex_base#L444

which is supposed to call:

https://en.cppreference.com/w/cpp/chrono/duration/zero

### 

Fix the following error when compiling with Clang++:

```
myutils.cpp:912:2: error: 'va_start' cannot be used in a captured statement
        va_start(ArgList, Format);
        ^
1 error generated.
make: *** [Makefile:53: Darwin/myutils.o] Error 1
```

Solution inspired by:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a18e70a56d33`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.