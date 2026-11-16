# Issue

**Title:** Bump vite from 8.0.16 to 8.3.5 in /viewer-frontend

## Description

Bumps [vite](https://github.com/vitejs/vite/tree/HEAD/packages/vite) from 8.0.16 to 8.3.5.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite/releases">vite's releases</a>.</em></p>
<blockquote>
<h2>v8.3.5</h2>
<h3>Bug Fixes</h3>
<ul>
<li><strong>build:</strong> handle missing chunk import maps (<a href="">#23777</a>) (<a href="">8d7623d</a>)</li>
<li><strong>build:</strong> include preload dependencies to chunk import map hashing (<a href="">#23793</a>) (<a href="">4d16e7c</a>)</li>
<li><strong>bundled-dev:</strong> apply <code>server.origin</code> to asset URLs (<a href="">#23683</a>) (<a href="">52ba877</a>)</li>
<li><strong>bundled-dev:</strong> declare utf-8 charset in fallback page (<a href="">#23846</a>) (<a href="">197daf6</a>)</li>
<li><strong>bundled-dev:</strong> ignore build.chunkImportMap (<a href="">#23685</a>) (<a href="">cfe917d</a>)</li>
<li><strong>bundled-dev:</strong> include user <code>import.meta.env.*</code> defines in the <code>import.meta.env</code> object (<a href="">#23713</a>) (<a href="">6019aa7</a>)</li>
<li><strong>bundled-dev:</strong> map forwarded error stacks through the bundle source maps (<a href="">#23741</a>) (<a href="">11fe1e4</a>)</li>
<li><strong>bundled-dev:</strong> normalize served output files (<a href="">#23684</a>) (<a href="">df4e02c</a>)</li>
<li><strong>bundled-dev:</strong> stop hmr propagation at modules that are no longer imported (<a href="">#23839</a>) (<a href="">7471e8c</a>)</li>
<li><strong>css:</strong> don't fail on a literal <code>%</code> in <code>url()</code> (<a href="">#23676</a>) (<a href="">50b382d</a>)</li>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#23731</a>) (<a href="">cf80aa5</a>)</li>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#23826</a>) (<a href="">77d8373</a>)</li>
<li><strong>deps:</strong> update rolldown-related dependencies (<a href="">#23733</a>) (<a href="">43f0d05</a>)</li>
<li><strong>deps:</strong> update rolldown-related dependencies (<a href="">#23827</a>) (<a href="">c2e0418</a>)</li>
<li><strong>optimizer:</strong> fall back to yarn.lock for lockfile hash (<a href="">#23667</a>) (<a href="">f206096</a>)</li>
<li><strong>optimizer:</strong> scan <code>oxc.jsxInject</code> imports (<a href="">#23758</a>) (<a href="">38f3cb4</a>)</li>
<li><strong>optimizer:</strong> skip patches dir check for yarn.lock fallback (<a href="">#23725</a>) (<a href="">8e890e1</a>)</li>
<li><strong>optimizer:</strong> skip patches dir hash for nub lockfile (<a href="">#23761</a>) (<a href="">a7d5696</a>)</li>
<li><strong>resolve:</strong> support subpath imports with multiple <code>#</code> (<a href="">#23631</a>) (<a href="">0d86b34</a>)</li>
<li><strong>resolve:</strong> update resolve.exports to 2.0.4 (<a href="">#23739</a>) (<a href="">4ea708a</a>)</li>
<li><strong>server:</strong> handle socket errors on upgrade requests not taken by the HMR server (<a href="">#23728</a>) (<a href="">c2c9ef4</a>)</li>
<li><strong>server:</strong> only strip base when path matches a full segment (<a href="">#23641</a>) (<a href="">3dfde87</a>)</li>
</ul>
<h3>Performance Improvements</h3>
<ul>
<li><strong>ssr:</strong> extract inline source maps without a regexp (<a href="">#23775</a>) (<a href="">6a02780</a>)</li>
</ul>
<h3>Miscellaneous Chores</h3>
<ul>
<li>migrate to Oxlint (<a href="">#23746</a>) (<a href="">5b73935</a>)</li>
</ul>
<h3>Code Refactoring</h3>
<ul>
<li><strong>deps:</strong> replace <code>@vercel/detect-agent</code> with <code>std-env</code> (<a href="">#23744</a>) (<a href="">ce4293f</a>)</li>
<li><strong>dev:</strong> consolidate moduleURL to file path utilities (<a href="">#23828</a>) (<a href="">df7b40e</a>)</li>
<li><strong>dev:</strong> separate import resolution from URL conversion (<a href="">#23791</a>) (<a href="">6116689</a>)</li>
<li><strong>dev:</strong> share ModuleURL and BrowserURL conversions (<a href="">#23790</a>) (<a href="">446954c</a>)</li>
<li><strong>dev:</strong> use ModuleURLs throughout HTML transforms (<a href="">#23815</a>) (<a href="">a162990</a>)</li>
</ul>
<h2>v8.3.4</h2>
<h3>Features</h3>
<ul>
<li><strong>bundled-dev:</strong> support <code>import.meta.hot.acceptExports</code> (<a href="">#23463</a>) (<a href="">bc0f21c</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>avoid mutating hmr defaults (fix <a href="">#23575</a>) (<a href="">#23576</a>) (<a href="">574d5e3</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite/blob/main/packages/vite/CHANGELOG.md">vite's changelog</a>.</em></p>
<blockquote>
<h2><!-- raw HTML omitted --><a href="https://github.com/vitejs/vite/compare/v8.3.4...v8.3.5">8.3.5</a> (2026-10-21)<!-- raw HTML omitted --></h2>
<h3>Bug Fixes</h3>
<ul>
<li><strong>build:</strong> handle missing chunk import maps (<a href="">#23777</a>) (<a href="">8d7623d</a>)</li>
<li><strong>build:</strong> include preload dependencies to chunk import map hashing (<a href="">#23793</a>) (<a href="">4d16e7c</a>)</li>
<li><strong>bundled-dev:</strong> apply <code>server.origin</code> to asset URLs (<a href="">#23683</a>) (<a href="">52ba877</a>)</li>
<li><strong>bundled-dev:</strong> declare utf-8 charset in fallback page (<a href="">#23846</a>) (<a href="">197daf6</a>)</li>
<li><strong>bundled-dev:</strong> ignore build.chunkImportMap (<a href="">#23685</a>) (<a href="">cfe917d</a>)</li>
<li><strong>bundled-dev:</strong> include user <code>import.meta.env.*</code> defines in the <code>import.meta.env</code> object (<a href="">#23713</a>) (<a href="">6019aa7</a>)</li>
<li><strong>bundled-dev:</strong> map forwarded error stacks through the bundle source maps (<a href="">#23741</a>) (<a href="">11fe1e4</a>)</li>
<li><strong>bundled-dev:</strong> normalize served output files (<a href="">#23684</a>) (<a href="">df4e02c</a>)</li>
<li><strong>bundled-dev:</strong> stop hmr propagation at modules that are no longer imported (<a href="">#23839</a>) (<a href="">7471e8c</a>)</li>
<li><strong>css:</strong> don't fail on a literal <code>%</code> in <code>url()</code> (<a href="">#23676</a>) (<a href="">50b382d</a>)</li>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#23731</a>) (<a href="">cf80aa5</a>)</li>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#23826</a>) (<a href="">77d8373</a>)</li>
<li><strong>deps:</strong> update rolldown-related dependencies (<a href="">#23733</a>) (<a href="">43f0d05</a>)</li>
<li><strong>deps:</strong> update rolldown-related dependencies (<a href="">#23827</a>) (<a href="">c2e0418</a>)</li>
<li><strong>optimizer:</strong> fall back to yarn.lock for lockfile hash (<a href="">#23667</a>) (<a href="">f206096</a>)</li>
<li><strong>optimizer:</strong> scan <code>oxc.jsxInject</code> imports (<a href="">#23758</a>) (<a href="">38f3cb4</a>)</li>
<li><strong>optimizer:</strong> skip patches dir check for yarn.lock fallback (<a href="">#23725</a>) (<a href="">8e890e1</a>)</li>
<li><strong>optimizer:</strong> skip patches dir hash for nub lockfile (<a href="">#23761</a>) (<a href="">a7d5696</a>)</li>
<li><strong>resolve:</strong> support subpath imports with multiple <code>#</code> (<a href="">#23631</a>) (<a href="">0d86b34</a>)</li>
<li><strong>resolve:</strong> update resolve.exports to 2.0.4 (<a href="">#23739</a>) (<a href="">4ea708a</a>)</li>
<li><strong>server:</strong> handle socket errors on upgrade requests not taken by the HMR server (<a href="">#23728</a>) (<a href="">c2c9ef4</a>)</li>
<li><strong>server:</strong> only strip base when path matches a full segment (<a href="">#23641</a>) (<a href="">3dfde87</a>)</li>
</ul>
<h3>Performance Improvements</h3>
<ul>
<li><strong>ssr:</strong> extract inline source maps without a regexp (<a href="">#23775</a>) (<a href="">6a02780</a>)</li>
</ul>
<h3>Miscellaneous Chores</h3>
<ul>
<li>migrate to Oxlint (<a href="">#23746</a>) (<a href="">5b73935</a>)</li>
</ul>
<h3>Code Refactoring</h3>
<ul>
<li><strong>deps:</strong> replace <code>@vercel/detect-agent</code> with <code>std-env</code> (<a href="">#23744</a>) (<a href="">ce4293f</a>)</li>
<li><strong>dev:</strong> consolidate moduleURL to file path utilities (<a href="">#23828</a>) (<a href="">df7b40e</a>)</li>
<li><strong>dev:</strong> separate import resolution from URL conversion (<a href="">#23791</a>) (<a href="">6116689</a>)</li>
<li><strong>dev:</strong> share ModuleURL and BrowserURL conversions (<a href="">#23790</a>) (<a href="">446954c</a>)</li>
<li><strong>dev:</strong> use ModuleURLs throughout HTML transforms (<a href="">#23815</a>) (<a href="">a162990</a>)</li>
</ul>
<h2><!-- raw HTML omitted --><a href="https://github.com/vitejs/vite/compare/v8.3.3...v8.3.4">8.3.4</a> (2026-10-08)<!-- raw HTML omitted --></h2>
<h3>Features</h3>
<ul>
<li><strong>bundled-dev:</strong> support <code>import.meta.hot.acceptExports</code> (<a href="">#23463</a>) (<a href="">bc0f21c</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>avoid mutating hmr defaults (fix <a href="">#23575</a>) (<a href="">#23576</a>) (<a href="">574d5e3</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>981f07f</code></a> release: v8.3.5 (<a href="">#23856</a>)</li>
<li><a href=""><code>0d86b34</code></a> fix(resolve): support subpath imports with multiple <code>#</code> (<a href="">#23631</a>)</li>
<li><a href=""><code>6a02780</code></a> perf(ssr): extract inline source maps without a regexp (<a href="">#23775</a>)</li>
<li><a href=""><code>8e890e1</code></a> fix(optimizer): skip patches dir check for yarn.lock fallback (<a href="">#23725</a>)</li>
<li><a href=""><code>197daf6</code></a> fix(bundled-dev): declare utf-8 charset in fallback page (<a href="">#23846</a>)</li>
<li><a href=""><code>4d16e7c</code></a> fix(build): include preload dependencies to chunk import map hashing (<a href="">#23793</a>)</li>
<li><a href=""><code>df7b40e</code></a> refactor(dev): consolidate moduleURL to file path utilities (<a href="">#23828</a>)</li>
<li><a href=""><code>a162990</code></a> refactor(dev): use ModuleURLs throughout HTML transforms (<a href="">#23815</a>)</li>
<li><a href=""><code>6116689</code></a> refactor(dev): separate import resolution from URL conversion (<a href="">#23791</a>)</li>
<li><a href=""><code>446954c</code></a> refactor(dev): share ModuleURL and BrowserURL conversions (<a href="">#23790</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/vitejs/vite/commits/v8.3.5/packages/vite">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=vite&package-manager=npm_and_yarn&previous-version=8.0.16&new-version=8.3.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `518abc96519c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.