# Issue

**Title:** chore(deps): bump web-vitals from 5.1.0 to 6.2.3

## Description

Bumps [web-vitals](https://github.com/GoogleChrome/web-vitals) from 5.1.0 to 6.2.3.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/GoogleChrome/web-vitals/blob/main/CHANGELOG.md">web-vitals's changelog</a>.</em></p>
<blockquote>
<h3>v6.2.3 (2026-10-05)</h3>
<ul>
<li>Fix negative <code>resourceLoadDuration</code> in LCP attribution
(<a href="">#803</a>)</li>
<li>Fix INP clean-up bug causing memory leak
(<a href="">#799</a>)</li>
</ul>
<h3>v6.2.2 (2026-09-14)</h3>
<ul>
<li>Cap pending LoAFs to avoid memory leak
(<a href="">#796</a>)</li>
</ul>
<h3>v6.2.1 (2026-08-26)</h3>
<ul>
<li>Fix negative inputDelay in INP attribution
(<a href="">#789</a>)</li>
</ul>
<h3>v6.2.0 (2026-08-24)</h3>
<ul>
<li>Prevent spurious CLS report of 0 after bfcache restore
(<a href="">#786</a>)</li>
<li>Guard <code>supportedEntryTypes</code> for older browsers
(<a href="">#787</a>)</li>
</ul>
<h3>v6.1.1 (2026-08-15)</h3>
<ul>
<li>Scope the navigation interaction count to each InteractionManager
(<a href="">#783</a>)</li>
</ul>
<h3>v6.1.0 (2026-08-05)</h3>
<ul>
<li>Add Resource Timing buffer for LCP attribution
(<a href="">#776</a>)</li>
</ul>
<h3>v6.0.1 (2026-07-27)</h3>
<ul>
<li>Prevent JavaScript error if <code>PerformanceObserver</code> not available
(<a href="">#772</a>)</li>
</ul>
<h3>v6.0.0 (2026-07-21)</h3>
<p>v6 introduces <a href="https://developer.chrome.com/docs/web-platform/soft-navigations">Soft Navigation support for the Web Vitals metrics</a> when supported by the browser.</p>
<blockquote>
<p>[!NOTE]
See the <a href="https://github.com/GoogleChrome/web-vitals/blob/main/docs/upgrading-to-v6.md">upgrading to v6</a> guide for a complete list of all API changes in version 6.</p>
</blockquote>
<ul>
<li><strong>[BREAKING]</strong> Remove unneeded modules with tsconfig <code>verbatimModuleSyntax</code>
(<a href="">#741</a>)</li>
<li>Add source maps
(<a href="">#771</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>400d019</code></a> Release v6.2.3</li>
<li><a href=""><code>248e6cb</code></a> Prep CHANGELOG for v6.2.3</li>
<li><a href=""><code>eeda0f2</code></a> fix: ignore resources requested after LCP in LCP attribution (<a href="">#803</a>)</li>
<li><a href=""><code>31b81e0</code></a> Soft Nav README tweaks (<a href="">#801</a>)</li>
<li><a href=""><code>2d75789</code></a> Fix bad LCP buffer test (<a href="">#800</a>)</li>
<li><a href=""><code>4a480a0</code></a> Fix INP clean-up bug causing memory leak (<a href="">#799</a>)</li>
<li><a href=""><code>01e8b5d</code></a> Release v6.2.2</li>
<li><a href=""><code>60f15b4</code></a> Prep CHANGELOG for v6.2.2</li>
<li><a href=""><code>2263928</code></a> Cap pending loafs (<a href="">#796</a>)</li>
<li><a href=""><code>582ee74</code></a> Release v6.2.1</li>
<li>Additional commits viewable in <a href="https://github.com/GoogleChrome/web-vitals/compare/v5.1.0...v6.2.3">compare view</a></li>
</ul>
</details>
<details>
<summary>Install script changes</summary>
<p>This version modifies <code>prepare</code> script that runs during installation. Review the package contents before updating.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=web-vitals&package-manager=npm_and_yarn&previous-version=5.1.0&new-version=6.2.3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5de8b6520a43`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.