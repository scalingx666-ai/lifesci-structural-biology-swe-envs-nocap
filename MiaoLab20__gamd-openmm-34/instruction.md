# Issue

**Title:** Add support for OpenMM input files in parser and simulation classes

## Description

This pull request introduces support for OpenMM XML-based input files in the `GamdSimulation` class and improves exception handling throughout the codebase. The changes include updates to the `createGamdSimulation` method to handle OpenMM-specific input files, modifications to the `parser.py` file for parsing OpenMM tags, and enhancements to error messages for better readability.

### Support for OpenMM XML-based input files:
* [`gamd/gamdSimulation.py`](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L112-R149): Added handling for OpenMM XML-based input files (`system`, `state`, and `topology`) in the `createGamdSimulation` method. This includes deserialization using `XmlSerializer` and initialization of common attributes (`topology`, `positions`, and `box_vectors`). [[1]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L112-R149) [[2]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L228-R304)

* [`gamd/parser.py`](diffhunk://#diff-596b99ad8fe5aea88c4e908dc6b981f8223253732542630b15e1d70b5cba49c7L391-R428): Added parsing logic for the `<openmm>` tag in the `parse_file` method, using `SimpleNamespace` to store OpenMM-specific input file paths (`system`, `state`, and `topology`). Updated assertions to include `<openmm>` as a valid input type.

### Improved exception handling:
* [`gamd/gamdSimulation.py`](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L76-R82): Replaced `%s` formatting with `str.format()` for exception messages to improve readability and consistency. This applies to errors related to nonbonded methods, constraints, input file types, algorithms, and reporter types. [[1]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L76-R82) [[2]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L93-R108) [[3]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L112-R149) [[4]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L206-R252) [[5]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L270-R319)

### Code enhancements:
* [`gamd/gamdSimulation.py`](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7R51-R53): Refactored the `createGamdSimulation` method to initialize common attributes (`topology`, `positions`, and `box_vectors`) and set them correctly based on the input file type. Added logic to handle periodic box vectors uniformly across different input file types. [[1]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7R51-R53) [[2]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7R181-R186) [[3]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7R202-R204) [[4]](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7R220-R222)

* [`gamd/gamdSimulation.py`](diffhunk://#diff-4ee8b94bdfc5ea297856f597fbb56c19c14348ca54ea14bbb6e48dd7b0b420e7L228-R304): Updated the `Simulation` creation logic to use the `gamdSimulation.topology` attribute instead of `topology.topology` for consistency.

These changes enhance the flexibility of the `GamdSimulation` class by supporting additional input formats and improve the maintainability of the codebase through better error handling and attribute management.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `248b9e3c30b0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.