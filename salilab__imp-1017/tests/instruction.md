# Issue

**Title:** Improvements to rigid body derivatives

## Description

This PR makes several significant changes to rigid body derivatives in IMP:
- Fix to quaternion derivatives. Previously, local and global quaternion derivatives were always projected to the hyperplane tangent to the 3-sphere at the unit quaternion during back-propagation. This corresponds to the first step of the scoring function evaluation being a normalization operation (it is the Jacobian of l2-normalization). Importantly, this gradient corresponds to a different log density than we have written down. It's neither with respect to the spherical measure of unit quaternions nor the measure in unconstrained quaternion space. Because the derivatives are accumulated from the innermost member in a hierarchy of nested rigid bodies to the outermost, none of the above gradients were guaranteed to be correct. Since the quaternion derivatives were implemented by me for  and [HMC](https://github.com/salilab/hmc) with potentially nested rigid bodies, this behavior probably didn't manifest for anyone else.
- General purpose functions for pulling back adjoints on operations with transformations and rotations. This is motivated by the observation that IMP uses reverse-mode differentiation (gradients are computed from the scoring function backwards). In reverse-mode, derivatives on intermediates are called adjoints, and they can be pulled back to earlier intermediates and ultimately variables with vector-Jacobian products, although adjoint functions such the ones implemented here are usually more efficient.
- Reimplementation of pullback of rigid body adjoints, ultimately to gradients, using the above
- Improved testing of rigid body derivatives. All gradients on nested rigid bodies with a mixture of rigid and non-rigid members are now compared with central difference approximations of the same.
- Several minor fixes to documentation/logging.

If you're not using quaternion derivatives or nested rigid bodies, you shouldn't notice any difference. However, it would be nice if some of the Brownian dynamics folks (e.g. @barakr) could make sure that the torques are still as expected. These don't seem to be tested well in `IMP::core`.

Since HMC will permit any Float variable with gradients to be sampled, there's more impetus to make sure gradients are handled correctly in IMP and easier to implement for complicated restraints/forward models/representations, like those used for EM. Perhaps an entry in the manual would be helpful. I'm volunteering but would appreciate suggestions; the rigid body example seems a bit too complex for such a write-up.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0ab5bd9c17ed`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.