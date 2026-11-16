# Issue

**Title:** Fix modified-backbone CA filtering and ambiguous PDB input

## Description

Fix `ConsecutiveCA` without dropping modified residues or inventing sequence adjacency. An ALA/phosphoserine pair with a real 20 A CA gap is rejected, while arbitrary centers, missing atoms and cropped sequence gaps no longer produce false jumps. Modified backbones use unique conventional N/CA/C/O names and stored N-CA-C(=O) reference bonds; unrecognized backbones remain unchecked. Model centers, archive formats and the distance threshold are unchanged.

The graph alone cannot establish polymer membership: an unsequenced PDB can place a non-polymer ligand with that graph inside a protein subchain. As explicitly agreed with the maintainer, inferred polymer subchains containing retained HETATM residues now require SEQRES and fail with actionable guidance otherwise. This includes known MSE/SEP modifications and all models/subchains. Ordinary ATOM-only fallback, declared SEQRES, explicit mmCIF membership, and separate non-polymer/water subchains remain supported. README documents the input change. Existing cached structures parsed from ambiguous PDBs must be rebuilt from corrected input; the filter cannot recover discarded membership information.

Supersedes #259. Thanks @fnachon for identifying the arbitrary-center problem; this replacement retains checks on real modified backbones and resolves the parser ambiguity found during review.

Validation:
- 144 PDB/parser and CA regression tests pass on Python3.12/Torch2.15/NumPy2.4.6 and Python3.11/Torch2.7.1/NumPy2.0.2.
- Four independent Codex reviewers checked the final change, including the original 0AN ligand counterexample, 14 official CCD references, missing coordinates, sequence gaps, atom order, serialization/extraction, multiple models/chains, alternate conformations and randomized array layouts.
- Core suite: 801 passed, 17 skipped, and seven pre-existing CSV identifier/NA-sequence failures in 211.65s. All seven failure IDs match unchanged main; an independent reviewer reproduced the same failures on both snapshots.
- Scoped lint and whitespace checks pass. Optional ESMFold2/solubleMPNN suites and full-model/GPU campaigns were not run.

This verifies the documented naming/connectivity and input-membership contract, not universal recognition of every modified chemistry or malformed PDB.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9b0b90d829d6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.