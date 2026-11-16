# Issue

**Title:** Drop the two @param tags createHydrodynamicsModel does not take

## Description

Discussed in #33

## Proposed changes

- `createHydrodynamicsModel` documents three parameters and takes one. Dropped the two tags that do not exist in the signature
- comments only, no code touched

```cpp
 * @param id the identification of the concrete object
 * @param sd a pointer to the StuntDouble being modeled
 * @param info a pointer to the SimInfo object
 */
HydrodynamicsModel* createHydrodynamicsModel(const std::string& id);
```

## Motivation behind changes

The definition in `HydrodynamicsModelFactory.cpp:75` takes only `id` as well, and the one call site in `applications/hydrodynamics/Hydro.cpp:293` passes a single argument. Doxygen drops a `@param` whose name is not in the signature, so `sd` and `info` never appeared in the generated docs -- the reader gets a function documented as taking three arguments and a page showing one.

I removed the two tags rather than guessing what they were for. My clone is shallow so I could not check whether an older signature took them. If it did and the plan is to bring them back, closing this is fine.

### Test plan

Comments only, so behaviour is unchanged. The check is the compiler's own:

```
$ clang++ -Wdocumentation -fsyntax-only -Isrc t.cpp
HydrodynamicsModelFactory.hpp:114:15: warning: parameter 'sd' not found in the function declaration
HydrodynamicsModelFactory.hpp:115:15: warning: parameter 'info' not found in the function declaration
```

Two warnings before, none after. Did not build the project.

### Pull Request Readiness Checklist

- [x] I agree to contribute to the project under OpenMD's BSD 3-Clause License.

- [x] To the best of my knowledge, the proposed patch is not based on a code under GPL or other license that is incompatible with OpenMD.

- [x] The PR is proposed to proper branch.

- [ ] There is reference to original bug report and related work.

- [ ] There is accuracy test, performance test and test data in the repository, if applicable.

- [ ] The feature is well documented and sample code can be built with the project CMake.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ac338c030d59`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.