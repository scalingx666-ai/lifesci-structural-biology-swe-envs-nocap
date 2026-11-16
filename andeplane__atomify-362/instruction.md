# Issue

**Title:** chore(deps-dev): bump vite, @vitejs/plugin-basic-ssl and @vitejs/plugin-react

## Description

Bumps [vite](https://github.com/vitejs/vite/tree/HEAD/packages/vite), [@vitejs/plugin-basic-ssl](https://github.com/vitejs/vite-plugin-basic-ssl) and [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/tree/HEAD/packages/plugin-react). These dependencies needed to be updated together.
Updates `vite` from 7.2.6 to 8.1.3
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite/releases">vite's releases</a>.</em></p>
<blockquote>
<h2>v8.1.3</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.1.3/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.1.2</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.1.2/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.1.1</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.1.1/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>create-vite@8.1.0</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/create-vite@8.1.0/packages/create-vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>plugin-legacy@8.1.0</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/plugin-legacy@8.1.0/packages/plugin-legacy/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.1.0</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.1.0/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>plugin-legacy@8.1.0-beta.0</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/plugin-legacy@8.1.0-beta.0/packages/plugin-legacy/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.1.0-beta.0</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.1.0-beta.0/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.16</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.16/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.15</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.15/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.14</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.14/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.13</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.13/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.12</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.12/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.11</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.11/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.10</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.10/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.9</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.9/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.8</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.8/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite/blob/main/packages/vite/CHANGELOG.md">vite's changelog</a>.</em></p>
<blockquote>
<h2><!-- raw HTML omitted --><a href="https://github.com/vitejs/vite/compare/v8.1.2...v8.1.3">8.1.3</a> (2026-07-02)<!-- raw HTML omitted --></h2>
<h3>Bug Fixes</h3>
<ul>
<li><strong>css:</strong> inject inlined CSS after the shebang line (<a href="">#22717</a>) (<a href="">1534d36</a>)</li>
<li><strong>deps:</strong> bump <code>es-module-lexer</code> to 2.3.0 (<a href="">#22838</a>) (<a href="">7103c3a</a>)</li>
<li>preload css for nested dynamic imports (<a href="">#22759</a>) (<a href="">2c53054</a>)</li>
<li><strong>ssr:</strong> correct stacktrace column position for first line (<a href="">#22828</a>) (<a href="">c4acd69</a>)</li>
</ul>
<h2><!-- raw HTML omitted --><a href="https://github.com/vitejs/vite/compare/v8.1.1...v8.1.2">8.1.2</a> (2026-06-30)<!-- raw HTML omitted --></h2>
<h3>Bug Fixes</h3>
<ul>
<li><strong>deps:</strong> revert es-module-lexer to 2.1.0 (<a href="">#22827</a>) (<a href="">0d3bd7c</a>)</li>
<li>restore, &quot;fix: resolve pnpm .modules.yaml from workspace root instead of cwd (<a href="">#22757</a>)&quot; (<a href="">#22825</a>) (<a href="">efb98cc</a>)</li>
<li>revert, &quot;fix: escape ids with multiple null bytes (<a href="">#22687</a>)&quot; (<a href="">cccef55</a>)</li>
<li>revert, &quot;fix: resolve pnpm .modules.yaml from workspace root instead of cwd (<a href="">#22757</a>)&quot; (<a href="">cf97711</a>)</li>
</ul>
<h2><!-- raw HTML omitted --><a href="https://github.com/vitejs/vite/compare/v8.1.0...v8.1.1">8.1.1</a> (2026-06-30)<!-- raw HTML omitted --></h2>
<h3>Features</h3>
<ul>
<li>update dynamic import warning to link to Vite docs (<a href="">#22823</a>) (<a href="">62bd7af</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li><strong>bundled-dev:</strong> avoid stack overflow on <code>import.meta.hot.invalidate()</code> (<a href="">#22797</a>) (<a href="">709eb8e</a>)</li>
<li><strong>bundled-dev:</strong> serve assets emitted during HMR/lazy compile (<a href="">#22745</a>) (<a href="">5876b2c</a>)</li>
<li><strong>bundledDev:</strong> skip plugin transform hooks for rolldown-lazy stub modules (<a href="">#22778</a>) (<a href="">8f925e2</a>)</li>
<li><strong>css:</strong> preserve dollar signs in external <code>@import</code> urls with lightningcss (<a href="">#22718</a>) (<a href="">9fa7ab4</a>)</li>
<li><strong>css:</strong> resolve tsconfig paths in CSS and Sass <a href="https://github.com/import"><code>@​import</code></a> (<a href="">#22775</a>) (<a href="">ef0b891</a>)</li>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#22734</a>) (<a href="">e635f49</a>)</li>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#22804</a>) (<a href="">8837400</a>)</li>
<li><strong>deps:</strong> update rolldown-related dependencies (<a href="">#22591</a>) (<a href="">2ce6677</a>)</li>
<li>escape ids with multiple null bytes (<a href="">#22687</a>) (<a href="">833fc30</a>)</li>
<li>hide console window when running 'net use' on Windows (<a href="">#22698</a>) (<a href="">92b63f2</a>)</li>
<li>ignore bundled config temp dir (<a href="">#22800</a>) (<a href="">043a810</a>)</li>
<li>invert <code>esbuild.jsxSideEffects</code> when converting to <code>oxc.jsx.pure</code> (<a href="">#22809</a>) (<a href="">33895ba</a>)</li>
<li><strong>optimize-deps:</strong> ignore <code>ERR_CLOSED_SERVER</code> in scanner (<a href="">#22784</a>) (<a href="">085a0ab</a>)</li>
<li><strong>optimizer:</strong> scanner should resolve <code>input</code> from <code>root</code> (<a href="">#22769</a>) (<a href="">9722b07</a>)</li>
<li>resolve pnpm .modules.yaml from workspace root instead of cwd (<a href="">#22757</a>) (<a href="">2531ac7</a>)</li>
<li>return sourcemap field from some plugins that were lacking (<a href="">#22782</a>) (<a href="">7e18bf8</a>)</li>
<li><strong>server:</strong> handle malformed URI in indexHtmlMiddleware (<a href="">#22781</a>) (<a href="">84f5ccc</a>)</li>
</ul>
<h3>Miscellaneous Chores</h3>
<ul>
<li>improve dependency optimizer messages (<a href="">#22549</a>) (<a href="">092cb3b</a>)</li>
</ul>
<h3>Code Refactoring</h3>
<ul>
<li><strong>css:</strong> remove lightningcss null byte bug workaround (<a href="">#22822</a>) (<a href="">2dafd3b</a>)</li>
<li>use pre-defined environments variable to avoid duplicate <code>Object.values</code> calls (<a href="">#22790</a>) (<a href="">1113acf</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>578ffb8</code></a> release: v8.1.3</li>
<li><a href=""><code>7103c3a</code></a> fix(deps): bump <code>es-module-lexer</code> to 2.3.0 (<a href="">#22838</a>)</li>
<li><a href=""><code>1534d36</code></a> fix(css): inject inlined CSS after the shebang line (<a href="">#22717</a>)</li>
<li><a href=""><code>c4acd69</code></a> fix(ssr): correct stacktrace column position for first line (<a href="">#22828</a>)</li>
<li><a href=""><code>2c53054</code></a> fix: preload css for nested dynamic imports (<a href="">#22759</a>)</li>
<li><a href=""><code>ba31193</code></a> release: v8.1.2</li>
<li><a href=""><code>0d3bd7c</code></a> fix(deps): revert es-module-lexer to 2.1.0 (<a href="">#22827</a>)</li>
<li><a href=""><code>efb98cc</code></a> fix: restore, &quot;fix: resolve pnpm .modules.yaml from workspace root instead of...</li>
<li><a href=""><code>cf97711</code></a> fix: revert, &quot;fix: resolve pnpm .modules.yaml from workspace root instead of ...</li>
<li><a href=""><code>cccef55</code></a> fix: revert, &quot;fix: escape ids with multiple null bytes (<a href="">#22687</a>)&quot;</li>
<li>Additional commits viewable in <a href="https://github.com/vitejs/vite/commits/v8.1.3/packages/vite">compare view</a></li>
</ul>
</details>
<br />

Updates `@vitejs/plugin-basic-ssl` from 2.1.4 to 2.3.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite-plugin-basic-ssl/releases">@​vitejs/plugin-basic-ssl's releases</a>.</em></p>
<blockquote>
<h2>v2.3.0</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite-plugin-basic-ssl/blob/main/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v2.2.0</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite-plugin-basic-ssl/blob/main/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite-plugin-basic-ssl/blob/main/CHANGELOG.md">@​vitejs/plugin-basic-ssl's changelog</a>.</em></p>
<blockquote>
<h2><a href="https://github.com/vitejs/vite-plugin-basic-ssl/compare/v2.2.0...v2.3.0">2.3.0</a> (2026-03-24)</h2>
<h3>Features</h3>
<ul>
<li>add optional <code>ttlDays</code> parameter (<a href="">#98</a>) (<a href="">eb373f0</a>)</li>
</ul>
<h3>Miscellaneous Chores</h3>
<ul>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#100</a>) (<a href="">34ef8a0</a>)</li>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#96</a>) (<a href="">acb0779</a>)</li>
<li><strong>deps:</strong> update dependency vite to v8 (<a href="">#99</a>) (<a href="">987fb1a</a>)</li>
<li><strong>deps:</strong> update pnpm/action-setup action to v5 (<a href="">#101</a>) (<a href="">4b9d639</a>)</li>
</ul>
<h3>Build System</h3>
<ul>
<li>refactor post-build code (<a href="">#102</a>) (<a href="">2499cce</a>)</li>
</ul>
<h2><a href="https://github.com/vitejs/vite-plugin-basic-ssl/compare/v2.1.4...v2.2.0">2.2.0</a> (2026-03-12)</h2>
<h3>Features</h3>
<ul>
<li>add Vite v8 to peer dependency (<a href="">dfe789d</a>)</li>
</ul>
<h3>Miscellaneous Chores</h3>
<ul>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#94</a>) (<a href="">3b57894</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ab892e4</code></a> release: v2.3.0</li>
<li><a href=""><code>2499cce</code></a> build: refactor post-build code (<a href="">#102</a>)</li>
<li><a href=""><code>eb373f0</code></a> feat: add optional <code>ttlDays</code> parameter (<a href="">#98</a>)</li>
<li><a href=""><code>4b9d639</code></a> chore(deps): update pnpm/action-setup action to v5 (<a href="">#101</a>)</li>
<li><a href=""><code>34ef8a0</code></a> chore(deps): update all non-major dependencies (<a href="">#100</a>)</li>
<li><a href=""><code>acb0779</code></a> chore(deps): update all non-major dependencies (<a href="">#96</a>)</li>
<li><a href=""><code>987fb1a</code></a> chore(deps): update dependency vite to v8 (<a href="">#99</a>)</li>
<li><a href=""><code>182b09d</code></a> release: v2.2.0</li>
<li><a href=""><code>dfe789d</code></a> feat: add Vite v8 to peer dependency</li>
<li><a href=""><code>3b57894</code></a> chore(deps): update all non-major dependencies (<a href="">#94</a>)</li>
<li>See full diff in <a href="https://github.com/vitejs/vite-plugin-basic-ssl/compare/v2.1.4...v2.3.0">compare view</a></li>
</ul>
</details>
<br />

Updates `@vitejs/plugin-react` from 5.1.4 to 5.2.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite-plugin-react/releases">@​vitejs/plugin-react's releases</a>.</em></p>
<blockquote>
<h2>plugin-react@5.2.0</h2>
<h3>Add Vite 8 to peerDependencies range <a href="">#1143</a></h3>
<p>This plugin is compatible with Vite 8.</p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite-plugin-react/blob/plugin-react@5.2.0/packages/plugin-react/CHANGELOG.md">@​vitejs/plugin-react's changelog</a>.</em></p>
<blockquote>
<h2>5.2.0 (2026-03-12)</h2>
<h3>Add Vite 8 to peerDependencies range <a href="">#1143</a></h3>
<p>This plugin is compatible with Vite 8.</p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>fda3a86</code></a> release: plugin-react@5.2.0</li>
<li><a href=""><code>99ab1b6</code></a> feat(react): add Vite 8 to peer dependency (<a href="">#1143</a>)</li>
<li>See full diff in <a href="https://github.com/vitejs/vite-plugin-react/commits/plugin-react@5.2.0/packages/plugin-react">compare view</a></li>
</ul>
</details>
<br />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7545a1524844`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.