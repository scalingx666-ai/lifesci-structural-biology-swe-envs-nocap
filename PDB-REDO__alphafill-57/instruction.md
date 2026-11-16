# Issue

**Title:** Bump webpack from 5.102.0 to 5.104.1

## Description

Bumps [webpack](https://github.com/webpack/webpack) from 5.102.0 to 5.104.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/webpack/webpack/releases">webpack's releases</a>.</em></p>
<blockquote>
<h2>v5.104.1</h2>
<h2>5.104.1</h2>
<h3>Patch Changes</h3>
<ul>
<li>2efd21b: Reexports runtime calculation should not accessing <strong>WEBPACK_IMPORT_KEY</strong> decl with var.</li>
<li>c510070: Fixed a user information bypass vulnerability in the HttpUriPlugin plugin.</li>
</ul>
<h2>v5.104.0</h2>
<h2>5.104.0</h2>
<h3>Minor Changes</h3>
<ul>
<li>d3dd841: Use method shorthand to render module content in <code>__webpack_modules__</code> object.</li>
<li>d3dd841: Enhance <code>import.meta.env</code> to support object access.</li>
<li>4baab4e: Optimize dependency sorting in updateParent: sort each module only once by deferring to finishUpdateParent(), and reduce traversal count in sortWithSourceOrder by caching WeakMap values upfront.</li>
<li>04cd530: Handle more at-rules for CSS modules.</li>
<li>cafae23: Added options to control the renaming of at-rules and various identifiers in CSS modules.</li>
<li>d3dd841: Added <code>base64url</code>, <code>base62</code>, <code>base58</code>, <code>base52</code>, <code>base49</code>, <code>base36</code>, <code>base32</code> and <code>base25</code> digests.</li>
<li>5983843: Provide a stable runtime function variable <code>__webpack_global__</code>.</li>
<li>d3dd841: Improved <code>localIdentName</code> hashing for CSS.</li>
</ul>
<h3>Patch Changes</h3>
<ul>
<li>22c48fb: Added module existence check for informative error message in development mode.</li>
<li>50689e1: Use the fully qualified class name (or export name) for <code>[fullhash]</code> placeholder in CSS modules.</li>
<li>d3dd841: Support universal lazy compilation.</li>
<li>d3dd841: Fixed module library export definitions when multiple runtimes.</li>
<li>d3dd841: Fixed CSS nesting and CSS custom properties parsing.</li>
<li>d3dd841: Don't write fragment from URL to filename and apply fragment to module URL.</li>
<li>aab1da9: Fixed bugs for <code>css/global</code> type.</li>
<li>d3dd841: Compatibility <code>import.meta.filename</code> and <code>import.meta.dirname</code> with <code>eval</code> devtools.</li>
<li>d3dd841: Handle nested <code>__webpack_require__</code>.</li>
<li>728ddb7: The speed of identifier parsing has been improved.</li>
<li>0f8b31b: Improve types.</li>
<li>d3dd841: Don't corrupt <code>debugId</code> injection when <code>hidden-source-map</code> is used.</li>
<li>2179fdb: Re-validate HttpUriPlugin redirects against allowedUris, restrict to http(s) and add a conservative redirect limit to prevent SSRF and untrusted content inclusion. Redirects failing policy are rejected before caching/lockfile writes.</li>
<li>d3dd841: Serialize <code>HookWebpackError</code>.</li>
<li>d3dd841: Added ability to use built-in properties in dotenv and define plugin.</li>
<li>3c4319f: Optimizing the regular expression character class by specifying ranges for runtime code.</li>
<li>d3dd841: Reduce collision for local indent name in CSS.</li>
<li>d3dd841: Remove CSS link tags when CSS imports are removed.</li>
</ul>
<h2>v5.103.0</h2>
<h3>Features</h3>
<ul>
<li>Added <code>DotenvPlugin</code> and top level <code>dotenv</code> option to enable this plugin</li>
<li>Added <code>WebpackManifestPlugin</code></li>
<li>Added support the <code>ignoreList</code> option in devtool plugins</li>
<li>Allow to use custom javascript parse function</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/webpack/webpack/blob/main/CHANGELOG.md">webpack's changelog</a>.</em></p>
<blockquote>
<h2>5.104.1</h2>
<h3>Patch Changes</h3>
<ul>
<li>2efd21b: Reexports runtime calculation should not accessing <strong>WEBPACK_IMPORT_KEY</strong> decl with var.</li>
<li>c510070: Fixed a user information bypass vulnerability in the HttpUriPlugin plugin.</li>
</ul>
<h2>5.104.0</h2>
<h3>Minor Changes</h3>
<ul>
<li>d3dd841: Use method shorthand to render module content in <code>__webpack_modules__</code> object.</li>
<li>d3dd841: Enhance <code>import.meta.env</code> to support object access.</li>
<li>4baab4e: Optimize dependency sorting in updateParent: sort each module only once by deferring to finishUpdateParent(), and reduce traversal count in sortWithSourceOrder by caching WeakMap values upfront.</li>
<li>04cd530: Handle more at-rules for CSS modules.</li>
<li>cafae23: Added options to control the renaming of at-rules and various identifiers in CSS modules.</li>
<li>d3dd841: Added <code>base64url</code>, <code>base62</code>, <code>base58</code>, <code>base52</code>, <code>base49</code>, <code>base36</code>, <code>base32</code> and <code>base25</code> digests.</li>
<li>5983843: Provide a stable runtime function variable <code>__webpack_global__</code>.</li>
<li>d3dd841: Improved <code>localIdentName</code> hashing for CSS.</li>
</ul>
<h3>Patch Changes</h3>
<ul>
<li>22c48fb: Added module existence check for informative error message in development mode.</li>
<li>50689e1: Use the fully qualified class name (or export name) for <code>[fullhash]</code> placeholder in CSS modules.</li>
<li>d3dd841: Support universal lazy compilation.</li>
<li>d3dd841: Fixed module library export definitions when multiple runtimes.</li>
<li>d3dd841: Fixed CSS nesting and CSS custom properties parsing.</li>
<li>d3dd841: Don't write fragment from URL to filename and apply fragment to module URL.</li>
<li>aab1da9: Fixed bugs for <code>css/global</code> type.</li>
<li>d3dd841: Compatibility <code>import.meta.filename</code> and <code>import.meta.dirname</code> with <code>eval</code> devtools.</li>
<li>d3dd841: Handle nested <code>__webpack_require__</code>.</li>
<li>728ddb7: The speed of identifier parsing has been improved.</li>
<li>0f8b31b: Improve types.</li>
<li>d3dd841: Don't corrupt <code>debugId</code> injection when <code>hidden-source-map</code> is used.</li>
<li>2179fdb: Re-validate HttpUriPlugin redirects against allowedUris, restrict to http(s) and add a conservative redirect limit to prevent SSRF and untrusted content inclusion. Redirects failing policy are rejected before caching/lockfile writes.</li>
<li>d3dd841: Serialize <code>HookWebpackError</code>.</li>
<li>d3dd841: Added ability to use built-in properties in dotenv and define plugin.</li>
<li>3c4319f: Optimizing the regular expression character class by specifying ranges for runtime code.</li>
<li>d3dd841: Reduce collision for local indent name in CSS.</li>
<li>d3dd841: Remove CSS link tags when CSS imports are removed.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>24e3c2d</code></a> chore(release): new release (<a href="">#20253</a>)</li>
<li><a href=""><code>2efd21b</code></a> fix(re-exports): reexports runtime calculation should not accessing `__WEBPAC...</li>
<li><a href=""><code>c510070</code></a> fix(security): userinfo bypass vulnerability in HttpUriPlugin allowedUris</li>
<li><a href=""><code>4b0501c</code></a> ci: fix release (<a href="">#20252</a>)</li>
<li><a href=""><code>0c213ce</code></a> ci: use <code>\&lt;@&amp;1450591255485743204&gt;</code> over <code>@here</code> for discord notificationw</li>
<li><a href=""><code>5bf8bc5</code></a> refactor: types for benchmarks and tests</li>
<li><a href=""><code>505a5e7</code></a> chore(release): new release (<a href="">#20188</a>)</li>
<li><a href=""><code>0c06680</code></a> refactor: update eslint configuration</li>
<li><a href=""><code>2eb0d6a</code></a> ci: release announcement (<a href="">#20238</a>)</li>
<li><a href=""><code>b2b2459</code></a> ci: cancel in progress (<a href="">#20239</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/webpack/webpack/compare/v5.102.0...v5.104.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=webpack&package-manager=npm_and_yarn&previous-version=5.102.0&new-version=5.104.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3c2fbefdb6fd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.