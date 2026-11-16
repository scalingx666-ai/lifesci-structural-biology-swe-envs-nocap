# Issue

**Title:** Add excess properties for activity models

## Description

This PR adds dispatches for excess properties of activity models.

---

Addtionally, there might have been a bug for entropy/helmholtz energy of EOS models. That's why I also changed an existing test.

Here a brief formula summary of the changes for excess properties for full EOS:
 
- `helmholtz_energy`: No method existed, so it fell through to `mixing` and returned the mixing property.
  
  New:

  $$a^{E} = a(p,T,\mathbf{z}) - \sum_i z_i \left[ a_{0,i}(p,T) + RT \ln x_i \right]$$

- `entropy`

  old vs new:

```math
  s^{E}_{\mathrm{old}} = s^{\mathrm{res}}(v,T,\mathbf{z}) - \sum_i z_i\, s^{\mathrm{res}}_{0,i}(v_{0,i},T)
```

```math
  s^{E}_{\mathrm{new}} = s(p,T,\mathbf{z}) - \sum_i z_i \left[ s_{0,i}(p,T) - R \ln x_i \right]
```

- `gibbs_energy`: Formula unchanged

Now satisfied, previously not:

$$s^{E} = -\left(\frac{\partial g^{E}}{\partial T}\right)_{p,\mathbf{z}}, \qquad a^{E} = g^{E} - p\,v^{E}$$

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fbf81218f940`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.