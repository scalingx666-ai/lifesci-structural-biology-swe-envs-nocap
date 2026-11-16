# Issue

**Title:** chore(deps): bump the github-actions group across 1 directory with 3 updates

## Description

Bumps the github-actions group with 3 updates in the / directory: [actions/setup-python](https://github.com/actions/setup-python), [astral-sh/setup-uv](https://github.com/astral-sh/setup-uv) and [github/codeql-action](https://github.com/github/codeql-action).

Updates `actions/setup-python` from 6.2.0 to 7.1.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/setup-python/releases">actions/setup-python's releases</a>.</em></p>
<blockquote>
<h2>v7.1.0</h2>
<h2>What's Changed</h2>
<h3>Enhancements</h3>
<ul>
<li>Add <code>mirror</code> and <code>mirror-token</code> inputs for custom Python distribution sources by <a href="https://github.com/luhenry"><code>@​luhenry</code></a> in <a href="">actions/setup-python#1302</a></li>
<li>Improve error message clarity by <a href="https://github.com/v-lmvysakh"><code>@​v-lmvysakh</code></a> in <a href="">actions/setup-python#1351</a></li>
</ul>
<h3>Dependency Upgrade</h3>
<ul>
<li>Upgrade browserslist from 4.28.2 to 4.28.9 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1353</a></li>
<li>Upgrade <code>@​typescript-eslint/parser</code> from 8.62.0 to 8.70.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1343</a></li>
<li>Upgrade eslint-plugin-jest from 29.15.2 to 29.16.6 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1342</a></li>
<li>Upgrade <code>@​vercel/ncc</code> from 0.44.0 to 0.45.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1357</a></li>
<li>Upgrade <code>@​types/semver</code> from 7.7.1 to 7.8.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1359</a></li>
<li>Upgrade undici from 6.28.0 to 6.29.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1364</a></li>
<li>Upgrade ts-jest from 29.4.11 to 29.4.14 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1361</a></li>
<li>Upgrade brace-expansion from 5.0.9 to 5.0.12 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1365</a></li>
<li>Upgrade prettier from 3.8.4 to 3.9.9 and package.json from 7.0.0 to 7.1.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1363</a></li>
<li>Upgrade <code>@​typescript-eslint/eslint-plugin</code> from 8.62.0 to 8.71.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1369</a></li>
<li>Upgrade actions/checkout from 7.0.0 to 7.0.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1345</a></li>
<li>Upgrade cache to 6.3.0 by <a href="https://github.com/v-HarithaVattikuti"><code>@​v-HarithaVattikuti</code></a> in <a href="">actions/setup-python#1370</a></li>
<li>Resolve Basic Validation audit failures by <a href="https://github.com/v-HarithaVattikuti"><code>@​v-HarithaVattikuti</code></a> in <a href="">actions/setup-python#1347</a></li>
<li>Resolve npm audit failures by <a href="https://github.com/v-HarithaVattikuti"><code>@​v-HarithaVattikuti</code></a> in <a href="">actions/setup-python#1350</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/luhenry"><code>@​luhenry</code></a> made their first contribution in <a href="">actions/setup-python#1302</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/setup-python/compare/v7.0.0...v7.1.0">https://github.com/actions/setup-python/compare/v7.0.0...v7.1.0</a></p>
<h2>v7.0.0</h2>
<h2>What's Changed</h2>
<h3>Enhancements</h3>
<ul>
<li>Migrate to ESM and upgrade dependencies by <a href="https://github.com/priyagupta108"><code>@​priyagupta108</code></a> in <a href="">actions/setup-python#1330</a></li>
<li>Pin SHA commits and update docs with latest versions by <a href="https://github.com/HarithaVattikuti"><code>@​HarithaVattikuti</code></a> in <a href="">actions/setup-python#1338</a></li>
<li>Remove the pip-install input by <a href="https://github.com/gowridurgad"><code>@​gowridurgad</code></a> in <a href="">actions/setup-python#1336</a></li>
</ul>
<h3>Bug Fix</h3>
<ul>
<li>Fix to Classify stderr warning messages as warnings instead of errors in annotations by <a href="https://github.com/lmvysakh"><code>@​lmvysakh</code></a> in <a href="">actions/setup-python#1335</a></li>
<li>Validate and retry manifest fetch to prevent silent failures by <a href="https://github.com/priyagupta108"><code>@​priyagupta108</code></a> in <a href="">actions/setup-python#1332</a></li>
</ul>
<h3>Dependency Upgrade</h3>
<ul>
<li>Bump certifi from 2020.6.20 to 2024.7.4 in /<strong>tests</strong>/data by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1328</a></li>
<li>Remove EOL Python versions and Bumps numpy text fixture by <a href="https://github.com/priya-kinthali"><code>@​priya-kinthali</code></a> in <a href="">actions/setup-python#1333</a></li>
<li>Upgrade <code>@​actions/cache</code> to 6.2.0 by <a href="https://github.com/philip-gai"><code>@​philip-gai</code></a> in <a href="">actions/setup-python#1337</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/lmvysakh"><code>@​lmvysakh</code></a> made their first contribution in <a href="">actions/setup-python#1335</a></li>
<li><a href="https://github.com/philip-gai"><code>@​philip-gai</code></a> made their first contribution in <a href="">actions/setup-python#1337</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>6d4fd22</code></a> Cache upgrade to 6.3.0 (<a href="">#1370</a>)</li>
<li><a href=""><code>ec52d0a</code></a> Bump <code>@​typescript-eslint/eslint-plugin</code> from 8.62.0 to 8.71.1 (<a href="">#1369</a>)</li>
<li><a href=""><code>ff73b24</code></a> Bump prettier from 3.8.4 to 3.9.9 and package.json from 7.0.0 to 7.1.0 (<a href="">#1363</a>)</li>
<li><a href=""><code>0e40890</code></a> Bump brace-expansion from 5.0.9 to 5.0.12 (<a href="">#1365</a>)</li>
<li><a href=""><code>3892123</code></a> Bump ts-jest from 29.4.11 to 29.4.14 (<a href="">#1361</a>)</li>
<li><a href=""><code>6609657</code></a> Bump undici from 6.28.0 to 6.29.0 (<a href="">#1364</a>)</li>
<li><a href=""><code>e1be392</code></a> Bump <code>@​types/semver</code> from 7.7.1 to 7.8.0 (<a href="">#1359</a>)</li>
<li><a href=""><code>06da627</code></a> Bump <code>@​vercel/ncc</code> from 0.44.0 to 0.45.0 (<a href="">#1357</a>)</li>
<li><a href=""><code>af9bcc7</code></a> Bump eslint-plugin-jest from 29.15.2 to 29.16.6 (<a href="">#1342</a>)</li>
<li><a href=""><code>7aeabeb</code></a> Bump <code>@​typescript-eslint/parser</code> from 8.62.0 to 8.70.0 (<a href="">#1343</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/actions/setup-python/compare/v6.2.0...v7.1.0">compare view</a></li>
</ul>
</details>
<br />

Updates `astral-sh/setup-uv` from 8.1.0 to 10.3.3
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/astral-sh/setup-uv/releases">astral-sh/setup-uv's releases</a>.</em></p>
<blockquote>
<h2>v10.3.3 🌈 Use Astral mirror for version manifests with GitHub fallback</h2>
<h2>Changes</h2>
<p>This release contains something that should have been included a very long time ago. Sorry for sleeping on that.</p>
<p>This action now retrieves the release manifest that contains the available versions, their download links and checksums from the Astral mirror, rather than trying GitHub first. This should present much more stable.
(Known checksums are still checked, so the security impact does not change)</p>
<p>Also a big thank you to <a href="https://github.com/soujasK"><code>@​soujasK</code></a> for a set of bugfixes 👏</p>
<h2>🐛 Bug fixes</h2>
<ul>
<li>Use Astral mirror for version manifests with GitHub fallback <a href="https://github.com/eifinger"><code>@​eifinger</code></a> (<a href="">#1119</a>)</li>
<li>fix: allow whitespace in uv requirement specifiers <a href="https://github.com/soujasK"><code>@​soujasK</code></a> (<a href="">#1112</a>)</li>
<li>fix: resolve ~= specifiers with PEP 440 semantics <a href="https://github.com/soujasK"><code>@​soujasK</code></a> (<a href="">#1111</a>)</li>
<li>fix: only report a saved cache when saving succeeded <a href="https://github.com/soujasK"><code>@​soujasK</code></a> (<a href="">#1110</a>)</li>
</ul>
<h2>🧰 Maintenance</h2>
<ul>
<li>chore: update known checksums for 0.13.6 @<a href="https://github.com/apps/github-actions">github-actions[bot]</a> (<a href="">#1117</a>)</li>
</ul>
<h2>📚 Documentation</h2>
<ul>
<li>docs: use JSDoc for compatible release specifier comment <a href="https://github.com/eifinger"><code>@​eifinger</code></a> (<a href="">#1113</a>)</li>
<li>docs: update version references to v10.3.2 @<a href="https://github.com/apps/github-actions">github-actions[bot]</a> (<a href="">#1104</a>)</li>
</ul>
<h2>v10.3.2 🌈 update known checksums for 0.13.5</h2>
<h2>Changes</h2>
<h2>🧰 Maintenance</h2>
<ul>
<li>chore: update known checksums for 0.13.5 @<a href="https://github.com/apps/github-actions">github-actions[bot]</a> (<a href="">#1103</a>)</li>
</ul>
<h2>📚 Documentation</h2>
<ul>
<li>docs: update version references to v10.3.1 @<a href="https://github.com/apps/github-actions">github-actions[bot]</a> (<a href="">#1102</a>)</li>
</ul>
<h2>v10.3.1 🌈 preserve cache error class names in save-cache bundle</h2>
<h2>Changes</h2>
<p>This release includes a fix so that multiple concurrent workflows trying to upload the same cache no longer warn</p>
<p><code>##[warning]Failed to save: Unable to reserve cache with key ..., another job may be creating this cache.</code></p>
<h2>🐛 Bug fixes</h2>
<ul>
<li>fix: preserve cache error class names in save-cache bundle <a href="https://github.com/dannyward630"><code>@​dannyward630</code></a> (<a href="">#1093</a>)</li>
</ul>
<h2>🧰 Maintenance</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>68559e9</code></a> Use Astral mirror for version manifests with GitHub fallback (<a href="">#1119</a>)</li>
<li><a href=""><code>0192b69</code></a> chore: update known checksums for 0.13.6 (<a href="">#1117</a>)</li>
<li><a href=""><code>2f29784</code></a> docs: use JSDoc for compatible release specifier comment (<a href="">#1113</a>)</li>
<li><a href=""><code>9c73321</code></a> fix: allow whitespace in uv requirement specifiers (<a href="">#1112</a>)</li>
<li><a href=""><code>80fbe01</code></a> fix: resolve ~= specifiers with PEP 440 semantics (<a href="">#1111</a>)</li>
<li><a href=""><code>36b7b57</code></a> fix: only report a saved cache when saving succeeded (<a href="">#1110</a>)</li>
<li><a href=""><code>56618ca</code></a> docs: update version references to v10.3.2 (<a href="">#1104</a>)</li>
<li><a href=""><code>07a047e</code></a> chore: update known checksums for 0.13.5 (<a href="">#1103</a>)</li>
<li><a href=""><code>e1b8536</code></a> docs: update version references to v10.3.1 (<a href="">#1102</a>)</li>
<li><a href=""><code>18d369b</code></a> chore(deps): roll up Dependabot updates (<a href="">#1101</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/astral-sh/setup-uv/compare/v8.1.0...v10.3.3">compare view</a></li>
</ul>
</details>
<br />

Updates `github/codeql-action` from 4.38.2 to 4.39.1
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/github/codeql-action/releases">github/codeql-action's releases</a>.</em></p>
<blockquote>
<h2>v4.39.1</h2>
<ul>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.27.3">2.27.3</a>. <a href="">#4256</a></li>
</ul>
<h2>v4.39.0</h2>
<ul>
<li><em>Breaking change</em>: Bump the minimum required CodeQL bundle version to 2.20.7. <a href="">#4205</a></li>
<li>The <code>codeql-action/analyze</code> step now validates that a correct argument for the <code>checkout_path</code> input has been provided. The <code>checkout_path</code> input must be set to the path where the repository that is being analyzed is checked out at on the runner, if that path is something other than the workspace root. If the path does not point to a repository checkout or is different from the path that was used by <code>codeql-action/init</code>, then the CodeQL Action now produces a warning. <a href="">#4148</a></li>
<li>Resolved an issue with third-party caching implementations that prevented caches from being restored correctly. <a href="">#4206</a></li>
<li>The <code>codeql-action/start-proxy</code> step that is used in Code Scanning Default Setup now finds CodeQL releases using the same logic as <code>codeql-action/init</code>. This primarily benefits customers who are using GitHub instances other than <code>github.com</code> where the <code>codeql-action/start-proxy</code> step may previously have been unable to locate recent releases and ended up using outdated versions of the private registry authentication proxy as a result. <a href="">#4198</a></li>
</ul>
<h2>v4.38.3</h2>
<ul>
<li><em>Upcoming breaking change</em>: CodeQL version 2.21.2 and earlier were discontinued on 24 September 2026 alongside GitHub Enterprise Server 3.17, and will be unsupported by the next minor release of the CodeQL Action. Added a deprecation warning for customers using these versions of CodeQL. <a href="">#4188</a></li>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.27.2">2.27.2</a>. <a href="">#4203</a></li>
<li>Fixed a bug where the decision of whether to use a per-language bundle did not account for custom configurations that reference queries outside of compiled CodeQL packs. This issue was caught during internal testing and did not affect any customer repositories. We will resume the roll out of per-language bundles in the coming weeks. <a href="">#4184</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/github/codeql-action/blob/main/CHANGELOG.md">github/codeql-action's changelog</a>.</em></p>
<blockquote>
<h2>4.39.1 - 21 Oct 2026</h2>
<ul>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.27.3">2.27.3</a>. <a href="">#4256</a></li>
</ul>
<h2>4.39.0 - 15 Oct 2026</h2>
<ul>
<li><em>Breaking change</em>: Bump the minimum required CodeQL bundle version to 2.20.7. <a href="">#4205</a></li>
<li>The <code>codeql-action/analyze</code> step now validates that a correct argument for the <code>checkout_path</code> input has been provided. The <code>checkout_path</code> input must be set to the path where the repository that is being analyzed is checked out at on the runner, if that path is something other than the workspace root. If the path does not point to a repository checkout or is different from the path that was used by <code>codeql-action/init</code>, then the CodeQL Action now produces a warning. <a href="">#4148</a></li>
<li>Resolved an issue with third-party caching implementations that prevented caches from being restored correctly. <a href="">#4206</a></li>
<li>The <code>codeql-action/start-proxy</code> step that is used in Code Scanning Default Setup now finds CodeQL releases using the same logic as <code>codeql-action/init</code>. This primarily benefits customers who are using GitHub instances other than <code>github.com</code> where the <code>codeql-action/start-proxy</code> step may previously have been unable to locate recent releases and ended up using outdated versions of the private registry authentication proxy as a result. <a href="">#4198</a></li>
</ul>
<h2>4.38.3 - 08 Oct 2026</h2>
<ul>
<li><em>Upcoming breaking change</em>: CodeQL version 2.21.2 and earlier were discontinued on 24 September 2026 alongside GitHub Enterprise Server 3.17, and will be unsupported by the next minor release of the CodeQL Action. Added a deprecation warning for customers using these versions of CodeQL. <a href="">#4188</a></li>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.27.2">2.27.2</a>. <a href="">#4203</a></li>
<li>Fixed a bug where the decision of whether to use a per-language bundle did not account for custom configurations that reference queries outside of compiled CodeQL packs. This issue was caught during internal testing and did not affect any customer repositories. We will resume the roll out of per-language bundles in the coming weeks. <a href="">#4184</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>9b32540</code></a> Merge pull request <a href="">#4257</a> from github/update-v4.39.1-c5a2f4b0f</li>
<li><a href=""><code>b5e1ed9</code></a> Trigger workflows</li>
<li><a href=""><code>20f5ec3</code></a> Update changelog for v4.39.1</li>
<li><a href=""><code>c5a2f4b</code></a> Merge pull request <a href="">#4245</a> from github/henrymercer/graduate-overlay-trap-caching</li>
<li><a href=""><code>61a5a80</code></a> Merge pull request <a href="">#4256</a> from github/update-bundle/codeql-bundle-v2.27.3</li>
<li><a href=""><code>3dd33f8</code></a> Merge pull request <a href="">#4249</a> from github/mbg/upload-improvements-for-4223</li>
<li><a href=""><code>b96e339</code></a> Change comment for <code>getConfig</code> call in <code>upload-sarif</code></li>
<li><a href=""><code>7fa4518</code></a> Use <code>shouldSkipSarifUpload</code> in <code>analyze-action.ts</code></li>
<li><a href=""><code>a69c7cb</code></a> Document that setting the env vars to <code>false</code> takes precedence</li>
<li><a href=""><code>74ddcd9</code></a> Fix typo in comment</li>
<li>Additional commits viewable in <a href="https://github.com/github/codeql-action/compare/v4.38.2...v4.39.1">compare view</a></li>
</ul>
</details>
<br />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5ba48960ca4f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.