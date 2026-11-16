# Issue

**Title:** Update numpy requirement from <2 to <3

## Description

Updates the requirements on [numpy](https://github.com/numpy/numpy) to permit the latest version.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/numpy/numpy/releases">numpy's releases</a>.</em></p>
<blockquote>
<h2>v2.2.6 (May 17, 2025)</h2>
<h1>NumPy 2.2.6 Release Notes</h1>
<p>NumPy 2.2.6 is a patch release that fixes bugs found after the 2.2.5
release. It is a mix of typing fixes/improvements as well as the normal
bug fixes and some CI maintenance.</p>
<p>This release supports Python versions 3.10-3.13.</p>
<h2>Contributors</h2>
<p>A total of 8 people contributed to this release. People with a &quot;+&quot; by
their names contributed a patch for the first time.</p>
<ul>
<li>Charles Harris</li>
<li>Ilhan Polat</li>
<li>Joren Hammudoglu</li>
<li>Marco Gorelli +</li>
<li>Matti Picus</li>
<li>Nathan Goldbaum</li>
<li>Peter Hawkins</li>
<li>Sayed Adel</li>
</ul>
<h2>Pull requests merged</h2>
<p>A total of 11 pull requests were merged for this release.</p>
<ul>
<li><a href="">#28778</a>: MAINT: Prepare 2.2.x for further development</li>
<li><a href="">#28851</a>: BLD: Update vendor-meson to fix module_feature conflicts arguments...</li>
<li><a href="">#28852</a>: BUG: fix heap buffer overflow in np.strings.find</li>
<li><a href="">#28853</a>: TYP: fix <code>NDArray[floating] + float</code> return type</li>
<li><a href="">#28864</a>: BUG: fix stringdtype singleton thread safety</li>
<li><a href="">#28865</a>: MAINT: use OpenBLAS 0.3.29</li>
<li><a href="">#28889</a>: MAINT: from_dlpack thread safety fixes</li>
<li><a href="">#28913</a>: TYP: Fix non-existent <code>CanIndex</code> annotation in <code>ndarray.setfield</code></li>
<li><a href="">#28915</a>: MAINT: Avoid dereferencing/strict aliasing warnings</li>
<li><a href="">#28916</a>: BUG: Fix missing check for PyErr_Occurred() in _pyarray_correlate.</li>
<li><a href="">#28966</a>: TYP: reject complex scalar types in ndarray.__ifloordiv__</li>
</ul>
<h2>Checksums</h2>
<h3>MD5</h3>
<pre><code>259343f056061f6eadb2f4b8999d06d4  numpy-2.2.6-cp310-cp310-macosx_10_9_x86_64.whl
16fa85488e149489ce7ee044d7b0d307  numpy-2.2.6-cp310-cp310-macosx_11_0_arm64.whl
f01b7aea9d2b76b1eeb49766e615d689  numpy-2.2.6-cp310-cp310-macosx_14_0_arm64.whl
f2ddc2b22517f6e31caa1372b12c2499  numpy-2.2.6-cp310-cp310-macosx_14_0_x86_64.whl
52190e22869884f0870eb3df7a283ca9  numpy-2.2.6-cp310-cp310-manylinux_2_17_aarch64.manylinux2014_aarch64.whl
8f382b9ca6770db600edd5ea2447a925  numpy-2.2.6-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
e604aae2ef6e01fb92ecc39aca0424d9  numpy-2.2.6-cp310-cp310-musllinux_1_2_aarch64.whl
</code></pre>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>2b686f6</code></a> Merge pull request <a href="">#28980</a> from charris/prepare-2.2.6</li>
<li><a href=""><code>ed41828</code></a> REL: Prepare for the NumPy 2.2.6 release [wheel build]</li>
<li><a href=""><code>83e4e7f</code></a> Merge pull request <a href="">#28966</a> from charris/backport-28958</li>
<li><a href=""><code>248f0cb</code></a> TYP: add rejection-tests for complex <code>ndarray</code> floordiv</li>
<li><a href=""><code>5bad9da</code></a> TYP: reject complex scalar types in <code>ndarray.__ifloordiv__</code></li>
<li><a href=""><code>6c42775</code></a> Merge pull request <a href="">#28915</a> from charris/backport-28892</li>
<li><a href=""><code>4277e7c</code></a> Merge pull request <a href="">#28916</a> from charris/backport-28898</li>
<li><a href=""><code>bd1c863</code></a> BUG: Fix missing check for PyErr_Occurred() in _pyarray_correlate. (<a href="">#28898</a>)</li>
<li><a href=""><code>87d1d8a</code></a> MAINT: Avoid dereferencing/strict aliasing warnings during complex casts in `...</li>
<li><a href=""><code>9e50659</code></a> Merge pull request <a href="">#28913</a> from charris/backport-28908</li>
<li>Additional commits viewable in <a href="https://github.com/numpy/numpy/compare/v0.2.0...v2.2.6">compare view</a></li>
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
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3fb8d7efa916`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.