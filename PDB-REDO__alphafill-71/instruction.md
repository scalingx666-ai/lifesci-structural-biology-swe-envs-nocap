# Issue

**Title:** Bump @babel/plugin-transform-modules-systemjs from 7.27.1 to 7.29.4

## Description

Bumps [@babel/plugin-transform-modules-systemjs](https://github.com/babel/babel/tree/HEAD/packages/babel-plugin-transform-modules-systemjs) from 7.27.1 to 7.29.4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/babel/babel/releases">@​babel/plugin-transform-modules-systemjs's releases</a>.</em></p>
<blockquote>
<h2>v7.29.4 (2026-05-05)</h2>
<h4>:bug: Bug Fix</h4>
<ul>
<li><code>babel-plugin-transform-modules-systemjs</code>
<ul>
<li><a href="">#17974</a> [7.x backport]fix(systemjs): improve module string name support (<a href="https://github.com/JLHwung"><code>@​JLHwung</code></a>)</li>
</ul>
</li>
</ul>
<h4>Committers: 1</h4>
<ul>
<li>Huáng Jùnliàng (<a href="https://github.com/JLHwung"><code>@​JLHwung</code></a>)</li>
</ul>
<h2>v7.29.3 (2026-04-30)</h2>
<h4>:eyeglasses: Spec Compliance</h4>
<ul>
<li><code>babel-parser</code>
<ul>
<li><a href="">#17923</a> Support flow extends bound (<a href="https://github.com/JLHwung"><code>@​JLHwung</code></a>)</li>
</ul>
</li>
</ul>
<h4>:bug: Bug Fix</h4>
<ul>
<li><code>babel-helper-create-class-features-plugin</code>, <code>babel-plugin-proposal-decorators</code>
<ul>
<li><a href="">#17931</a> fix(decorators): replace super within all removed static elements (<a href="https://github.com/JLHwung"><code>@​JLHwung</code></a>)</li>
</ul>
</li>
<li><code>babel-register</code>
<ul>
<li><a href="">#17915</a> Fix thread synchronization issues in <code>@babel/register</code> (<a href="https://github.com/liuxingbaoyu"><code>@​liuxingbaoyu</code></a>)</li>
</ul>
</li>
<li><code>babel-compat-data</code>, <code>babel-plugin-bugfix-safari-rest-destructuring-rhs-array</code>, <code>babel-preset-env</code>
<ul>
<li><a href="">#17788</a> Add bugfix plugin for Safari array rest destructuring bug (<a href="https://github.com/JLHwung"><code>@​JLHwung</code></a>)</li>
</ul>
</li>
</ul>
<h4>:nail_care: Polish</h4>
<ul>
<li><code>babel-parser</code>
<ul>
<li><a href="">#17782</a> Improve trailing comma comment handling (<a href="https://github.com/JLHwung"><code>@​JLHwung</code></a>)</li>
</ul>
</li>
</ul>
<h4>:memo: Documentation</h4>
<ul>
<li><a href="">#17847</a> Replace npmjs.com links with npmx.dev (<a href="https://github.com/nicolo-ribaudo"><code>@​nicolo-ribaudo</code></a>)</li>
</ul>
<h4>:running_woman: Performance</h4>
<ul>
<li><code>babel-helper-import-to-platform-api</code>, <code>babel-plugin-proposal-import-wasm-source</code>, <code>babel-plugin-transform-json-modules</code>
<ul>
<li><a href="">#17818</a> Load async Wasm and JSON imports in parallel (<a href="https://github.com/nicolo-ribaudo"><code>@​nicolo-ribaudo</code></a>)</li>
</ul>
</li>
</ul>
<h4>Committers: 4</h4>
<ul>
<li>Babel Bot (<a href="https://github.com/babel-bot"><code>@​babel-bot</code></a>)</li>
<li>Huáng Jùnliàng (<a href="https://github.com/JLHwung"><code>@​JLHwung</code></a>)</li>
<li>Nicolò Ribaudo (<a href="https://github.com/nicolo-ribaudo"><code>@​nicolo-ribaudo</code></a>)</li>
<li><a href="https://github.com/liuxingbaoyu"><code>@​liuxingbaoyu</code></a></li>
</ul>
<h2>v7.29.2 (2026-03-16)</h2>
<h4>:eyeglasses: Spec Compliance</h4>
<ul>
<li><code>babel-parser</code>
<ul>
<li><a href="">#17840</a> [7.x backport] async x =&gt; {} must be in leading pos (<a href="https://github.com/JLHwung"><code>@​JLHwung</code></a>)</li>
</ul>
</li>
</ul>
<h4>:bug: Bug Fix</h4>
<ul>
<li><code>babel-helpers</code>, <code>babel-plugin-transform-async-generator-functions</code>, <code>babel-preset-env</code>, <code>babel-runtime-corejs3</code>
<ul>
<li><a href="">#17805</a> [7.x backport] fix: Properly handle await in finally (<a href="https://github.com/liuxingbaoyu"><code>@​liuxingbaoyu</code></a>)</li>
</ul>
</li>
<li><code>babel-preset-env</code></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>a458f66</code></a> v7.29.4</li>
<li><a href=""><code>32ebd5a</code></a> [7.x backport]fix(systemjs): improve module string name support (<a href="">#17974</a>)</li>
<li><a href=""><code>aa8394e</code></a> v7.29.0</li>
<li><a href=""><code>0053db6</code></a> Update polyfill packages (<a href="">#17727</a>)</li>
<li><a href=""><code>61647ae</code></a> v7.28.5</li>
<li><a href=""><code>a177d55</code></a> [Babel 8] Use <code>t.traverseFast</code> to replace some <code>path.traverse</code> (<a href="">#17518</a>)</li>
<li>See full diff in <a href="https://github.com/babel/babel/commits/v7.29.4/packages/babel-plugin-transform-modules-systemjs">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for <code>@​babel/plugin-transform-modules-systemjs</code> since your current version.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=@babel/plugin-transform-modules-systemjs&package-manager=npm_and_yarn&previous-version=7.27.1&new-version=7.29.4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/PDB-REDO/alphafill/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `818666ee3f9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.