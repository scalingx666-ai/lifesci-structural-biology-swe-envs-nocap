# Issue

**Title:** Update rstar requirement from 0.11 to 0.12

## Description

Updates the requirements on [rstar](https://github.com/georust/rstar) to permit the latest version.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/georust/rstar/releases">rstar's releases</a>.</em></p>
<blockquote>
<h2>v0.12.0 release</h2>
<h2>What's Changed</h2>
<ul>
<li>Fix a stack overflow error in DrainIterator by <a href="https://github.com/nickguletskii"><code>@​nickguletskii</code></a> in <a href="">georust/rstar#127</a></li>
<li>Remove actually unused depth parameter and make Clippy happy. by <a href="https://github.com/adamreichold"><code>@​adamreichold</code></a> in <a href="">georust/rstar#130</a></li>
<li>Update rstar-benches geo dependency by <a href="https://github.com/michaelkirk"><code>@​michaelkirk</code></a> in <a href="">georust/rstar#131</a></li>
<li>add mint feature for Point trait impl for mint::Point2 and mint::Point3 by <a href="https://github.com/ripytide"><code>@​ripytide</code></a> in <a href="">georust/rstar#134</a></li>
<li>Better distance_2 docs by <a href="https://github.com/urschrei"><code>@​urschrei</code></a> in <a href="">georust/rstar#136</a></li>
<li>Add cached envelope benchmark by <a href="https://github.com/urschrei"><code>@​urschrei</code></a> in <a href="">georust/rstar#137</a></li>
<li>update to <code>heapless=0.8</code> by <a href="https://github.com/rursprung"><code>@​rursprung</code></a> in <a href="">georust/rstar#140</a></li>
<li>Update CI as a precursor to enabling merge queues by <a href="https://github.com/urschrei"><code>@​urschrei</code></a> in <a href="">georust/rstar#143</a></li>
<li>Minor doc updates by <a href="https://github.com/urschrei"><code>@​urschrei</code></a> in <a href="">georust/rstar#144</a></li>
<li>Implement an owning iterator and IntoIter for RTree by <a href="https://github.com/adamreichold"><code>@​adamreichold</code></a> in <a href="">georust/rstar#146</a></li>
<li>Hash and Default impls, and some type coverage tests by <a href="https://github.com/pthariensflame"><code>@​pthariensflame</code></a> in <a href="">georust/rstar#150</a></li>
<li>Losslessly shrink rtree-example.png by <a href="https://github.com/pthariensflame"><code>@​pthariensflame</code></a> in <a href="">georust/rstar#152</a></li>
<li>Update the scaling discussion for bulk_load by <a href="https://github.com/jerabaul29"><code>@​jerabaul29</code></a> in <a href="">georust/rstar#156</a></li>
<li>Use SmallHeap also for the iterator-based nearest neighbour search and optimize its spill implementation. by <a href="https://github.com/adamreichold"><code>@​adamreichold</code></a> in <a href="">georust/rstar#154</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/nickguletskii"><code>@​nickguletskii</code></a> made their first contribution in <a href="">georust/rstar#127</a></li>
<li><a href="https://github.com/ripytide"><code>@​ripytide</code></a> made their first contribution in <a href="">georust/rstar#134</a></li>
<li><a href="https://github.com/rursprung"><code>@​rursprung</code></a> made their first contribution in <a href="">georust/rstar#140</a></li>
<li><a href="https://github.com/pthariensflame"><code>@​pthariensflame</code></a> made their first contribution in <a href="">georust/rstar#150</a></li>
<li><a href="https://github.com/jerabaul29"><code>@​jerabaul29</code></a> made their first contribution in <a href="">georust/rstar#156</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/georust/rstar/compare/v0.11.0...v0.12.0">https://github.com/georust/rstar/compare/v0.11.0...v0.12.0</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>3b32701</code></a> Prepare for 0.12.0 release (<a href="">#157</a>)</li>
<li><a href=""><code>1812101</code></a> Use SmallHeap also for the iterator-based nearest neighbour search and optimi...</li>
<li><a href=""><code>f9973cf</code></a> Update the scaling discussion for bulk_load (<a href="">#156</a>)</li>
<li><a href=""><code>c7d53c8</code></a> Optimize image rtree-example.png (<a href="">#152</a>)</li>
<li><a href=""><code>f1407dd</code></a> Hash and Default impls, and some type coverage tests (<a href="">#150</a>)</li>
<li><a href=""><code>6c23af0</code></a> Implement an owning iterator and IntoIter for RTree (<a href="">#146</a>)</li>
<li><a href=""><code>a8904d2</code></a> More doc updates (<a href="">#144</a>)</li>
<li><a href=""><code>54e7eb0</code></a> Update CI as a precursor to enabling merge queues (<a href="">#143</a>)</li>
<li><a href=""><code>c16c1e9</code></a> update to <code>heapless=0.8</code></li>
<li><a href=""><code>9f8c6b6</code></a> Add cached envelope benchmark (<a href="">#137</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/georust/rstar/compare/v0.11.0...v0.12.0">compare view</a></li>
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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8d698fa2b53d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.