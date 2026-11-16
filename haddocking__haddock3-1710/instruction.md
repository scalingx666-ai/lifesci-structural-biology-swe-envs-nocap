# Issue

**Title:** Fix alpha-GalNAc (A2G) documentation and NGM C4 stereochemistry

## Description

alpha-GalNAc was already in the force field as A2G, the PDB chemical component code for 2-acetamido-2-deoxy-alpha-D-galactopyranose, but the header REMARK that serves as the authoritative supported-carbohydrate list described it as a glucopyranose, which made it look unsupported.

## What does this PR do and why?

carbohydrate.top:
- correct the A2G REMARK and the residue comment: it is the alpha anomer of NGA, with C4 inverted with respect to NDG
- fix the malformed NGM C4 improper. It read "H4 C4 O3 C5", listing C4 inside its own chirality improper and using O3 where O4 belongs, so it restrained a meaningless quadruple instead of the C4 centre. It now reads "H4 O4 C3 C5", matching A2G, GAL and GLA. On the gal-ngm test case the built C4 improper moves from -56.7 to -65.2 degrees, against -66.4 for the galactose of the same molecule.
- correct the sialyl-link REMARKS: A23 was described backwards and an A23S patch was advertised that does not exist in the file

bondglycans.cns:
- add A2G as an alpha(2,3)/alpha(2,6) sialylation acceptor, which enables sialyl-Tn (SIA alpha(2,6) alpha-GalNAc). Only the A23c/A26c loops are extended; the A23a/A26a loops take the acceptor as the '-' reference, which does not match PRESidue A23/A26, so they cannot fire. No new parameters are needed: after patching, A2G O3/O6 become OAS and every affected improper resolves to an existing entry, exactly as for GAL.
Two further fixes in the same area, each in its own commit:

- correct the GCS residue comment, which read "2-N-beta-D-galactopyranose (glucosamine)". GCS is beta-glucosamine, as the REMARKS header already said: its C4 improper "H4 C5 C3 O4" is the odd permutation of the galacto form NGA uses, so the configuration is gluco. Comment only, no effect on the force field.
- add the missing N-acetyl planarity impropers to NGA, NAG, MAG and A2G. NDG, NAM, NAA, NGM, SIA and SIB all restrain their N-acetyl group to be planar, but these four did not, even though the parameters already exist in carbohydrate.param and are commented there as "!NAG,SIA planar", so the omission looks accidental rather than deliberate. Both impropers resolve to fully specific existing parameters, so nothing is added to the parameter file: "N2 C7 C2 HN2" -> "NH1 C CCS H" -> 0.0 deg, and "C7 C8 N2 O7" -> "C CCS NH1 O" -> 0.0 deg. GCS is deliberately left out, being glucosamine with a free amine and no acetyl group. **This is the only behaviour-affecting change in the PR**: it shifts NAG energies slightly, in the direction of planarity and of consistency with NDG.


## How was this tested?

- new test_topoaa_GalGalNAcalpha with golden data gal-a2g.pdb, the core-1/T-antigen disaccharide Gal-beta(1,3)-alpha-GalNAc. CNS has to build the anomeric centre and the C4 substituents, so the test checks that the A2G impropers pin alpha at C1 and galacto at C4, and that the B13 link is patched in.
- the planarity change was measured on the NAG/NDG glycan of examples/docking-protein-glycan: the acetamide groups go from up to 5.8 degrees out of plane to 0.07 degrees, while NDG, which already carried the impropers, is unchanged at 0.01 degrees and so acts as a control.
- every improper of NGA, NAG, MAG, A2G, NDG and NGM was checked against carbohydrate.param; all resolve, none unresolved.
- tests/ and integration_tests/ pass locally (1816 and 84 passed).
- run the docking-protein-glycan test example and compared the consistency of the results with the main branch.

## AI assistance

Claude was used to check the current topo/param files for glycans and implement changes which were manually checked. 

## Checklist

- [X] Tests cover the new and/or changed code
- [X] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5d241fc31087`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.