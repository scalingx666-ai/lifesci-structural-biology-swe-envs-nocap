# Issue

**Title:** Bump immutable from 5.1.5 to 5.1.9 in /viewer-frontend

## Description

Bumps [immutable](https://github.com/immutable-js/immutable-js) from 5.1.5 to 5.1.9.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/immutable-js/immutable-js/releases">immutable's releases</a>.</em></p>
<blockquote>
<h2>v5.1.9</h2>
<h2>What's Changed</h2>
<ul>
<li>fix(List): preserve undefined values when grown past 32 elements by <a href="https://github.com/spokodev"><code>@​spokodev</code></a> / <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2235</a> (originated from <a href="">immutable-js/immutable-js#2230</a> )</li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/immutable-js/immutable-js/compare/v5.1.8...v5.1.9">https://github.com/immutable-js/immutable-js/compare/v5.1.8...v5.1.9</a></p>
<h2>v5.1.8</h2>
<h2>What's Changed</h2>
<ul>
<li>fix(List): guard oversized bounds in setListBounds. Fixes CVE <a href="https://github.com/immutable-js/immutable-js/security/advisories/GHSA-v56q-mh7h-f735">https://github.com/immutable-js/immutable-js/security/advisories/GHSA-v56q-mh7h-f735</a></li>
<li>perf(Map): index large hash-collision buckets for faster lookups. Fixes CVE <a href="https://github.com/immutable-js/immutable-js/security/advisories/GHSA-xvcm-6775-5m9r">https://github.com/immutable-js/immutable-js/security/advisories/GHSA-xvcm-6775-5m9r</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/immutable-js/immutable-js/compare/v5.1.7...v5.1.8">https://github.com/immutable-js/immutable-js/compare/v5.1.7...v5.1.8</a></p>
<h2>v5.1.7</h2>
<h2>What's Changed</h2>
<ul>
<li>fix(Repeat): lastIndexOf returned size instead of size - 1 by <a href="https://github.com/chatman-media"><code>@​chatman-media</code></a> in <a href="">immutable-js/immutable-js#2227</a></li>
</ul>
<h2>internal</h2>
<ul>
<li>Backport tests from 6.x branch by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2199</a></li>
<li>fix(IndexedCollection): <code>has(index)</code> on a lazy <code>Seq</code> of unknown size now checks index existence instead of searching for a value equal to the index by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2203</a></li>
<li>Better type for reduce if not ininitial value is given by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2205</a></li>
<li>Backport test from <a href="">#2193</a> by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2207</a></li>
<li>backport tests from 6.x by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2213</a></li>
<li>Firefox link to non-French page by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2219</a></li>
<li>Bump esbuild and <code>@​size-limit/preset-small-lib</code> by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">immutable-js/immutable-js#2217</a></li>
<li>backport tests from <a href="">#2210</a> by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2214</a></li>
<li>Bump shell-quote from 1.8.2 to 1.8.4 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">immutable-js/immutable-js#2211</a></li>
<li>Bump <code>@​tootallnate/once</code> from 2.0.0 to 2.0.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">immutable-js/immutable-js#2190</a></li>
<li>Bump minimatch from 9.0.5 to 9.0.9 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">immutable-js/immutable-js#2189</a></li>
<li>Bump <code>@​codemirror/theme-one-dark</code> from 6.1.2 to 6.1.3 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">immutable-js/immutable-js#2168</a></li>
<li>Bump form-data from 4.0.5 to 4.0.6 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">immutable-js/immutable-js#2220</a></li>
<li>Bump typescript-eslint from 8.33.0 to 8.61.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">immutable-js/immutable-js#2222</a></li>
<li>Bump <code>@​rollup/plugin-commonjs</code> from 28.0.2 to 29.0.3 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">immutable-js/immutable-js#2224</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/chatman-media"><code>@​chatman-media</code></a> made their first contribution in <a href="">immutable-js/immutable-js#2227</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/immutable-js/immutable-js/compare/v5.1.6...v5.1.7">https://github.com/immutable-js/immutable-js/compare/v5.1.6...v5.1.7</a></p>
<h2>v5.1.6</h2>
<h2>What's Changed</h2>
<ul>
<li>fix(reverseFactory): read reversedSequence.size in __iterator instead of this by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2196</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/immutable-js/immutable-js/blob/main/CHANGELOG.md">immutable's changelog</a>.</em></p>
<blockquote>
<h2>5.1.9</h2>
<ul>
<li>fix(List): a <code>List</code> grown past 32 elements while all its values are <code>undefined</code> no longer reads those values back as <code>null</code> (affected <code>get</code>, iteration, <code>toArray</code>, <code>equals</code> and <code>hashCode</code>)</li>
</ul>
<h2>5.1.8</h2>
<ul>
<li>fix(List): guard oversized bounds in setListBounds. Fixes CVE <a href="https://github.com/immutable-js/immutable-js/security/advisories/GHSA-v56q-mh7h-f735">https://github.com/immutable-js/immutable-js/security/advisories/GHSA-v56q-mh7h-f735</a></li>
<li>perf(Map): index large hash-collision buckets for faster lookups. Fixes CVE <a href="https://github.com/immutable-js/immutable-js/security/advisories/GHSA-xvcm-6775-5m9r">https://github.com/immutable-js/immutable-js/security/advisories/GHSA-xvcm-6775-5m9r</a></li>
</ul>
<h2>4.3.9</h2>
<ul>
<li>fix(List): guard oversized bounds in setListBounds. Fixes CVE <a href="https://github.com/immutable-js/immutable-js/security/advisories/GHSA-v56q-mh7h-f735">https://github.com/immutable-js/immutable-js/security/advisories/GHSA-v56q-mh7h-f735</a></li>
<li>perf(Map): index large hash-collision buckets for faster lookups. Fixes CVE <a href="https://github.com/immutable-js/immutable-js/security/advisories/GHSA-xvcm-6775-5m9r">https://github.com/immutable-js/immutable-js/security/advisories/GHSA-xvcm-6775-5m9r</a></li>
</ul>
<h2>5.1.7</h2>
<ul>
<li>fix(Repeat): lastIndexOf returned size instead of size - 1 by <a href="https://github.com/chatman-media"><code>@​chatman-media</code></a> in <a href="">immutable-js/immutable-js#2227</a>. Fixes CVE <a href="https://github.com/immutable-js/immutable-js/security/advisories/GHSA-wf6x-7x77-mvgw">CVE-2026-29063 </a></li>
<li>fix(IndexedCollection): <code>has(index)</code> on a lazy <code>Seq</code> of unknown size now checks index existence instead of searching for a value equal to the index <a href="">#2203</a></li>
<li>[TypeScript]: <code>reduce</code>/<code>reduceRight</code> without an initial value now infer the result type from the collection's values when the reducer returns a value (e.g. <code>list.reduce((a, b) =&gt; a + b)</code> infers <code>number</code>), matching <code>Array#reduce</code>. Previously an explicit type argument was required. <a href="">#2205</a></li>
</ul>
<h2>5.1.6</h2>
<ul>
<li>fix(reverseFactory): read <code>reversedSequence.size</code> in <code>__iterator</code> instead of this <a href="">#2196</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>329f7a6</code></a> 5.1.9</li>
<li><a href=""><code>21fabd9</code></a> changelog</li>
<li><a href=""><code>009164f</code></a> Merge pull request <a href="">#2235</a> from immutable-js/fix/avoid-null-when-setsize33</li>
<li><a href=""><code>5b65bfb</code></a> fix(List): preserve undefined values when grown past 32 elements</li>
<li><a href=""><code>50bf39e</code></a> Update CHANGELOG.md for versions 5.1.8 and 4.3.9</li>
<li><a href=""><code>6496539</code></a> 5.1.8</li>
<li><a href=""><code>808a83a</code></a> Merge commit from fork</li>
<li><a href=""><code>e51d49f</code></a> perf(Map): index large hash-collision buckets for faster lookups</li>
<li><a href=""><code>25c58b0</code></a> fix typescript in tests</li>
<li><a href=""><code>a1a1ee4</code></a> Merge commit from fork</li>
<li>Additional commits viewable in <a href="https://github.com/immutable-js/immutable-js/compare/v5.1.5...v5.1.9">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=immutable&package-manager=npm_and_yarn&previous-version=5.1.5&new-version=5.1.9)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/Acellera/moleculekit/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1f8eeaf1584f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.