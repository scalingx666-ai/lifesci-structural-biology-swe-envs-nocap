# Issue

**Title:** chore(deps): bump postcss and styled-components

## Description

Bumps [postcss](https://github.com/postcss/postcss) to 8.5.14 and updates ancestor dependency [styled-components](https://github.com/styled-components/styled-components). These dependencies need to be updated together.

Updates `postcss` from 8.5.6 to 8.5.14
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/releases">postcss's releases</a>.</em></p>
<blockquote>
<h2>8.5.14</h2>
<ul>
<li>Fixed custom syntax regression (by <a href="https://github.com/43081j"><code>@​43081j</code></a>).</li>
</ul>
<h2>8.5.13</h2>
<ul>
<li>Fixed <code>postcss-scss</code> commend regression.</li>
</ul>
<h2>8.5.12</h2>
<ul>
<li>Fixed reading any file via user-generated CSS.</li>
<li>Added <code>opts.unsafeMap</code> to disable checks.</li>
</ul>
<h2>8.5.11</h2>
<ul>
<li>Fixed nested brackets parsing performance (by <a href="https://github.com/offset"><code>@​offset</code></a>).</li>
</ul>
<h2>8.5.10</h2>
<ul>
<li>Fixed XSS via unescaped <code>&lt;/style&gt;</code> in non-bundler cases (by <a href="https://github.com/TharVid"><code>@​TharVid</code></a>).</li>
</ul>
<h2>8.5.9</h2>
<ul>
<li>Speed up source map encoding paring in case of the error.</li>
</ul>
<h2>8.5.8</h2>
<ul>
<li>Fixed <code>Processor#version</code>.</li>
</ul>
<h2>8.5.7</h2>
<ul>
<li>Improved source map annotation cleaning performance (by CodeAnt AI).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/blob/main/CHANGELOG.md">postcss's changelog</a>.</em></p>
<blockquote>
<h2>8.5.14</h2>
<ul>
<li>Fixed custom syntax regression (by <a href="https://github.com/43081j"><code>@​43081j</code></a>).</li>
</ul>
<h2>8.5.13</h2>
<ul>
<li>Fixed <code>postcss-scss</code> commend regression.</li>
</ul>
<h2>8.5.12</h2>
<ul>
<li>Fixed reading any file via user-generated CSS.</li>
<li>Added <code>opts.unsafeMap</code> to disable checks.</li>
</ul>
<h2>8.5.11</h2>
<ul>
<li>Fixed nested brackets parsing performance (by <a href="https://github.com/offset"><code>@​offset</code></a>).</li>
</ul>
<h2>8.5.10</h2>
<ul>
<li>Fixed XSS via unescaped <code>&lt;/style&gt;</code> in non-bundler cases (by <a href="https://github.com/TharVid"><code>@​TharVid</code></a>).</li>
</ul>
<h2>8.5.9</h2>
<ul>
<li>Speed up source map encoding paring in case of the error.</li>
</ul>
<h2>8.5.8</h2>
<ul>
<li>Fixed <code>Processor#version</code>.</li>
</ul>
<h2>8.5.7</h2>
<ul>
<li>Improved source map annotation cleaning performance (by CodeAnt AI).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>3ec1394</code></a> Release 8.5.14 version</li>
<li><a href=""><code>f2bb827</code></a> Update dependencies</li>
<li><a href=""><code>d75953d</code></a> Merge pull request <a href="">#2084</a> from 43081j/raw-raws-rawing</li>
<li><a href=""><code>68bd213</code></a> fix: always call <code>raw</code> to retrieve raw values</li>
<li><a href=""><code>af58cf1</code></a> Release 8.5.13 version</li>
<li><a href=""><code>f227dbd</code></a> Temporary ignore pnpm 11 config</li>
<li><a href=""><code>d3abd40</code></a> Update dependencies</li>
<li><a href=""><code>dd06c3e</code></a> Revert stringifier changes because of the conflict with postcss-scss</li>
<li><a href=""><code>ae889c8</code></a> Try to fix CI</li>
<li><a href=""><code>e0093e4</code></a> Move to pnpm 11</li>
<li>Additional commits viewable in <a href="https://github.com/postcss/postcss/compare/8.5.6...8.5.14">compare view</a></li>
</ul>
</details>
<br />

Updates `styled-components` from 6.3.11 to 6.4.1
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/styled-components/styled-components/releases">styled-components's releases</a>.</em></p>
<blockquote>
<h2>styled-components@6.4.1</h2>
<h3>Patch Changes</h3>
<ul>
<li>49d09ae: Fix a performance regression in 6.4.0 where dynamic <code>createGlobalStyle</code> components caused significant re-render slowdowns. Also restores pre-6.4 cascade ordering when multiple instances of the same <code>createGlobalStyle</code> coexist.</li>
<li>eca95b2: Fix outdated dev-mode error messages for keyframes-in-untagged-strings and component-selector references that still pointed at <code>www.styled-components.com</code> and described behavior from styled-components v3.</li>
</ul>
<h2>styled-components@6.4.1-prerelease-20260417184545</h2>
<p><strong>Full Changelog</strong>: <a href="https://github.com/styled-components/styled-components/compare/styled-components@6.4.1-prerelease-20260417184031...styled-components@6.4.1-prerelease-20260417184545">https://github.com/styled-components/styled-components/compare/styled-components@6.4.1-prerelease-20260417184031...styled-components@6.4.1-prerelease-20260417184545</a></p>
<h2>styled-components@6.4.1-prerelease-20260417184031</h2>
<h2>What's Changed</h2>
<ul>
<li>fix: avoid double rebuildGroup on every dynamic createGlobalStyle render (<a href="">#5730</a>) by <a href="https://github.com/quantizor"><code>@​quantizor</code></a> in <a href="">styled-components/styled-components#5732</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/styled-components/styled-components/compare/styled-components@6.4.0...styled-components@6.4.1-prerelease-20260417184031">https://github.com/styled-components/styled-components/compare/styled-components@6.4.0...styled-components@6.4.1-prerelease-20260417184031</a></p>
<h2>styled-components@6.4.0</h2>
<h3>Minor Changes</h3>
<ul>
<li>
<p>b0f3d29: <code>.attrs()</code> improvements: props supplied via attrs are now automatically made optional on the resulting component (previously required even when attrs provided a default). Also fixes a bug where the attrs callback received a mutable props object that could be changed by subsequent attrs processing; it now receives an immutable snapshot.</p>
</li>
<li>
<p>2a973d8: Dropped IE11 support: ES2015 build target, inlined unitless CSS properties (removing <code>@​emotion/unitless</code> dependency), removed legacy React class statics from hoist and other unnecessary code.</p>
</li>
<li>
<p>9e07d95: Add <code>createTheme(defaultTheme, options?)</code> for CSS variable theming that works across RSC and client components.</p>
<p>Returns an object with the same shape where every leaf is <code>var(--prefix-path, fallback)</code>. Pass it to <code>ThemeProvider</code> for stable class name hashes across themes (no hydration mismatch on light/dark switch).</p>
<pre lang="ts"><code>const theme = createTheme({ colors: { primary: '#0070f3' } });
// theme.colors.primary → &quot;var(--sc-colors-primary, #0070f3)&quot;
// theme.raw → original object
// theme.vars.colors.primary → &quot;--sc-colors-primary&quot;
// theme.resolve(el?) → computed values from DOM (client-only)
// theme.GlobalStyle → component that emits CSS var declarations
</code></pre>
<p><code>vars</code> exposes bare CSS custom property names (same shape as the theme) for use in <code>createGlobalStyle</code> dark mode overrides without hand-writing variable names:</p>
<pre lang="ts"><code>const { vars } = createTheme({ colors: { bg: '#fff', text: '' } });
<p>const DarkOverrides = createGlobalStyle<code>@media (prefers-color-scheme: dark) { :root { ${vars.colors.bg}: ; ${vars.colors.text}: #eee; } }</code>;
</code></pre></p>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>37a0a5e</code></a> Version Packages</li>
<li><a href=""><code>2f1a3fb</code></a> ci: per-package prerelease notes with progression link [skip ci]</li>
<li><a href=""><code>fea4919</code></a> ci: match prerelease notes to release job format [skip ci]</li>
<li><a href=""><code>e557e11</code></a> style: align prerelease job formatting with release job</li>
<li><a href=""><code>a3dee6d</code></a> ci: collapse prerelease workflow into release.yml</li>
<li><a href=""><code>52bda0c</code></a> chore: add husky pre-commit hook running prettier</li>
<li><a href=""><code>eca95b2</code></a> chore: add changeset for stale error message fix</li>
<li><a href=""><code>c8db03c</code></a> fix(build): emit errors.ts from generator so compiled bundle matches errors.md</li>
<li><a href=""><code>45e4b84</code></a> docs(agents): drop duplicated Float and new Array rules</li>
<li><a href=""><code>368fb93</code></a> docs: drop v3/v4 history from keyframes untagged-string error</li>
<li>Additional commits viewable in <a href="https://github.com/styled-components/styled-components/compare/styled-components@6.3.11...styled-components@6.4.1">compare view</a></li>
</ul>
</details>
<br />

You can trigger a rebase of this PR by commenting `@dependabot rebase`.

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `74bd12a73e30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.