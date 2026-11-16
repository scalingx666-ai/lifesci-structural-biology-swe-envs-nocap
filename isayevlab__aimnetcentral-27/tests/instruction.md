# Issue

**Title:** Update numpy requirement from <2.0 to <3.0

## Description

Updates the requirements on [numpy](https://github.com/numpy/numpy) to permit the latest version.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/numpy/numpy/releases">numpy's releases</a>.</em></p>
<blockquote>
<h2>2.3.5 (Nov 16, 2025)</h2>
<h1>NumPy 2.3.5 Release Notes</h1>
<p>The NumPy 2.3.5 release is a patch release split between a number of maintenance
updates and bug fixes. This release supports Python versions 3.11-3.14.</p>
<h2>Contributors</h2>
<p>A total of 10 people contributed to this release. People with a &quot;+&quot; by their
names contributed a patch for the first time.</p>
<ul>
<li>Aaron Kollasch +</li>
<li>Charles Harris</li>
<li>Joren Hammudoglu</li>
<li>Matti Picus</li>
<li>Nathan Goldbaum</li>
<li>Rafael Laboissière +</li>
<li>Sayed Awad</li>
<li>Sebastian Berg</li>
<li>Warren Weckesser</li>
<li>Yasir Ashfaq +</li>
</ul>
<h2>Pull requests merged</h2>
<p>A total of 16 pull requests were merged for this release.</p>
<ul>
<li><a href="">#29979</a>: MAINT: Prepare 2.3.x for further development</li>
<li><a href="">#30026</a>: SIMD, BLD: Backport FPMATH mode on x86-32 and filter successor...</li>
<li><a href="">#30029</a>: MAINT: Backport write_release.py</li>
<li><a href="">#30041</a>: TYP: Various typing updates</li>
<li><a href="">#30059</a>: BUG: Fix np.strings.slice if stop=None or start and stop &gt;= len...</li>
<li><a href="">#30063</a>: BUG: Fix np.strings.slice if start &gt; stop</li>
<li><a href="">#30076</a>: BUG: avoid negating INT_MIN in PyArray_Round implementation (<a href="">#30071</a>)</li>
<li><a href="">#30090</a>: BUG: Fix resize when it contains references (<a href="">#29970</a>)</li>
<li><a href="">#30129</a>: BLD: update scipy-openblas, use -Dpkg_config_path (<a href="">#30049</a>)</li>
<li><a href="">#30130</a>: BUG: Avoid compilation error of wrapper file generated with SWIG...</li>
<li><a href="">#30157</a>: BLD: use scipy-openblas 0.3.30.7 (<a href="">#30132</a>)</li>
<li><a href="">#30158</a>: DOC: Remove nonexistent <code>order</code> parameter docs of <code>ma.asanyarray</code>...</li>
<li><a href="">#30185</a>: BUG: Fix check of PyMem_Calloc return value. (<a href="">#30176</a>)</li>
<li><a href="">#30217</a>: DOC: fix links for newly rebuilt numpy-tutorials site</li>
<li><a href="">#30218</a>: BUG: Fix build on s390x with clang (<a href="">#30214</a>)</li>
<li><a href="">#30237</a>: ENH: Make FPE blas check a runtime check for all apple arm systems</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>c3d60fc</code></a> Merge pull request <a href="">#30238</a> from charris/prepare-2.3.5</li>
<li><a href=""><code>11451fa</code></a> REL: Prepare for the NumPy 2.3.5 release</li>
<li><a href=""><code>eab5bd4</code></a> Merge pull request <a href="">#30237</a> from charris/backport-30102</li>
<li><a href=""><code>7cea31a</code></a> Fixup merge of multiarraymodule.c</li>
<li><a href=""><code>b898173</code></a> Update numpy/_core/src/common/blas_utils.h</li>
<li><a href=""><code>f755483</code></a> Report FPE ignoring in matmul in <code>show_runtime()</code></li>
<li><a href=""><code>c47116f</code></a> Move test to Python</li>
<li><a href=""><code>bd7b93f</code></a> ooops, needs to be a calloc of course.</li>
<li><a href=""><code>83a1517</code></a> Guard for HAVE_CBLAS and always compile the helpers</li>
<li><a href=""><code>ab680ef</code></a> ENH: Make FPE blas check a runtime check for all arm systems</li>
<li>Additional commits viewable in <a href="https://github.com/numpy/numpy/compare/v0.2.0...v2.3.5">compare view</a></li>
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
- `@dependabot merge` will merge this PR after your CI passes on it
- `@dependabot squash and merge` will squash and merge this PR after your CI passes on it
- `@dependabot cancel merge` will cancel a previously requested merge and block automerging
- `@dependabot reopen` will reopen this PR if it is closed
- `@dependabot close` will close this PR and stop Dependabot recreating it. You can achieve the same result by closing it manually
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `740cf3437696`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.