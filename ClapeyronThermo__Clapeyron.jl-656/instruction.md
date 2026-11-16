# Issue

**Title:** Update JutulDarcy requirement from 0.2, 0.3 to 0.2, 0.3, 0.4 in the all-julia-packages group across 1 directory

## Description

Updates the requirements on [JutulDarcy](https://github.com/sintefmath/JutulDarcy.jl) to permit the latest version.
Updates `JutulDarcy` to 0.4.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/sintefmath/JutulDarcy.jl/releases">JutulDarcy's releases</a>.</em></p>
<blockquote>
<h2>v0.4.0</h2>
<h2>JutulDarcy v0.4.0</h2>
<p><a href="https://github.com/sintefmath/JutulDarcy.jl/compare/v0.3.12...v0.4.0">Diff since v0.3.12</a></p>
<ul>
<li>All solvers can now run on GPU (CUDA/AMDGPU) (use <code>mode=:ka_cuda</code> or <code>mode=:ka_amd</code> after loading the respective backend CUDA/AMDGPU.</li>
<li>Greatly improved parallelization on threads by using the <code>mode = :ka</code>.</li>
<li>Support for merging multiple wells into a single object for faster assembly</li>
<li>New linear solvers for the ka backends</li>
<li>Rewritten link to hypre</li>
<li>Improvements to plotting of 3D models</li>
<li>Support for GASWAT setup to Søreide Whitson- type equations of state</li>
<li>Plot extensions are now independent of GLMakie and can work with only WGLMakie loaded (or any other future supported Makie backend)</li>
<li>Improvements to AFI support</li>
<li>Module for setting up CSP11/SPE11 cases</li>
<li>Support for inertia in multisegment wells</li>
<li>Support for potential energy in thermal formulation</li>
</ul>
<h2>Breaking changes</h2>
<ul>
<li>Jutul has been upgraded to 0.4. This means that any dispatches on model now has additional parametric arguments.</li>
<li>The composite system functionality has been removed.</li>
<li>Cases validate by default before simulation and can throw errors for very unphysical values (can be disabled by passing <code>validate=false</code> to <code>simulate_reservoir</code>)</li>
</ul>
<p><strong>Merged pull requests:</strong></p>
<ul>
<li>Add GPU support via KernelAbstractions (<a href="">#281</a>) (<a href="https://github.com/moyner"><code>@​moyner</code></a>)</li>
<li>Validate by default + fix cpgrid issue for degenerate faces (<a href="">#288</a>) (<a href="https://github.com/moyner"><code>@​moyner</code></a>)</li>
<li>Add inertia to multisegment well momentum balance equation (<a href="">#289</a>) (<a href="https://github.com/strene"><code>@​strene</code></a>)</li>
<li>Two small fixes to wells (<a href="">#290</a>) (<a href="https://github.com/moyner"><code>@​moyner</code></a>)</li>
<li>Thermal energy formulation update (<a href="">#292</a>) (<a href="https://github.com/strene"><code>@​strene</code></a>)</li>
<li>GASWAT + composition diffusion rework (<a href="">#293</a>) (<a href="https://github.com/moyner"><code>@​moyner</code></a>)</li>
<li>Move plots from GLMakie to Makie ext (<a href="">#294</a>) (<a href="https://github.com/moyner"><code>@​moyner</code></a>)</li>
<li>Improve handling of inactive cells for AFI files with inline properties (<a href="">#295</a>) (<a href="https://github.com/moyner"><code>@​moyner</code></a>)</li>
<li>Fix reservoir plotting defaults, field selection and unit conversions (<a href="">#296</a>) (<a href="https://github.com/jakobtorben"><code>@​jakobtorben</code></a>)</li>
<li>Fix cell indexing in compositional boundary condition mass fluxes (<a href="">#298</a>) (<a href="https://github.com/strene"><code>@​strene</code></a>)</li>
<li>Add submodule for setting up SPE11/CSP11 cases A/B/C (<a href="">#299</a>) (<a href="https://github.com/moyner"><code>@​moyner</code></a>)</li>
<li>Fix default reservoir plot proportions (<a href="">#301</a>) (<a href="https://github.com/jakobtorben"><code>@​jakobtorben</code></a>)</li>
<li>Doc tweaks, new default optimizer, convenience function for optimizer (<a href="">#302</a>) (<a href="https://github.com/moyner"><code>@​moyner</code></a>)</li>
<li>Bump minimum Julia version to 1.10 (LTS) (<a href="">#303</a>) (<a href="https://github.com/moyner"><code>@​moyner</code></a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li>See full diff in <a href="https://github.com/sintefmath/JutulDarcy.jl/commits/v0.4.0">compare view</a></li>
</ul>
</details>
<br />

Dependabot will resolve any conflicts with this PR as long as you don't alter it yourself. You can also trigger a rebase manually by commenting `@dependabot rebase`.

[//]: # (dependabot-automerge-start)
[//]: # (dependabot-automerge-end)

---

<details>
<summary>Dependabot commands and options</summary>
<br />

You can trigger Dependabot actions by commenting on this PR:
- `@dependabot rebase` will rebase this PR
- `@dependabot recreate` will recreate this PR, overwriting any edits that have been made to it
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore <dependency name> major version` will close this group update PR and stop Dependabot creating any more for the specific dependency's major version (unless you unignore this specific dependency's major version or upgrade to it yourself)
- `@dependabot ignore <dependency name> minor version` will close this group update PR and stop Dependabot creating any more for the specific dependency's minor version (unless you unignore this specific dependency's minor version or upgrade to it yourself)
- `@dependabot ignore <dependency name>` will close this group update PR and stop Dependabot creating any more for the specific dependency (unless you unignore this specific dependency or upgrade to it yourself)
- `@dependabot unignore <dependency name>` will remove all of the ignore conditions of the specified dependency
- `@dependabot unignore <dependency name> <ignore condition>` will remove the ignore condition of the specified dependency and ignore conditions

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9f46ac689fb7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.