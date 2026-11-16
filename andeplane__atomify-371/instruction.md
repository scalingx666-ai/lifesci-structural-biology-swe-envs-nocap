# Issue

**Title:** chore(deps-dev): bump @vitejs/plugin-react from 5.2.0 to 6.0.5

## Description

Bumps [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/tree/HEAD/packages/plugin-react) from 5.2.0 to 6.0.5.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite-plugin-react/releases">@​vitejs/plugin-react's releases</a>.</em></p>
<blockquote>
<h2>plugin-react@6.0.5</h2>
<h3>Fixed the react compiler preset filter to be linear (<a href="">#1353</a>)</h3>
<p>The improved filter in v6.0.3 was non-linear and caused a performance regression (<a href="">#1349</a>). The filter was changed to be linear to avoid that.</p>
<h2>plugin-react@6.0.4</h2>
<h3>Fixed <code>$RefreshSig$ is not defined</code> error when running <code>vite dev</code> with <code>NODE_ENV=production</code></h3>
<p>When running <code>vite dev</code> with <code>NODE_ENV=production</code>, the app errored with <code>$RefreshSig$ is not defined</code>.
This error is now fixed.</p>
<h2>plugin-react@6.0.3</h2>
<p>No release notes provided.</p>
<h2>plugin-react@6.0.2</h2>
<h3>Allow all options in reactCompilerPreset (<a href="">#1189</a>)</h3>
<p>This is a type only change. Only <code>compilationMode</code> and <code>target</code> options were available for <code>reactCompilerPreset</code>.</p>
<h2>plugin-react@6.0.1</h2>
<h3>Expand <code>@rolldown/plugin-babel</code> peer dep range (<a href="">#1146</a>)</h3>
<p>Expanded <code>@rolldown/plugin-babel</code> peer dep range to include <code>^0.2.0</code>.</p>
<h2>plugin-react@6.0.0</h2>
<h3>Remove Babel Related Features (<a href="">#1123</a>)</h3>
<p>Vite 8+ can handle React Refresh Transform by Oxc and doesn't need Babel for it. With that, there are no transform applied that requires Babel. To reduce the installation size of this plugin, babel is no longer a dependency of this plugin and the related features are removed.</p>
<p>If you are using Babel, you can use <code>@rolldown/plugin-babel</code> together with this plugin:</p>
<pre lang="diff"><code> import { defineConfig } from 'vite'
 import react from '@vitejs/plugin-react'
+import babel from '@rolldown/plugin-babel'
<p>export default defineConfig({
plugins: [</p>
<ul>
<li>
<pre><code>react({
</code></pre>
</li>
<li>
<pre><code>  babel: {
</code></pre>
</li>
<li>
<pre><code>    plugins: ['@babel/plugin-proposal-throw-expressions'],
</code></pre>
</li>
<li>
<pre><code>  },
</code></pre>
</li>
<li>
<pre><code>}),
</code></pre>
</li>
</ul>
<ul>
<li>
<pre><code>react(),
</code></pre>
</li>
<li>
<pre><code>babel({
</code></pre>
</li>
<li>
<pre><code>  plugins: ['@babel/plugin-proposal-throw-expressions'],
</code></pre>
</li>
<li>
<pre><code>}),
</code></pre>
]
})
</code></pre></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/CHANGELOG.md">@​vitejs/plugin-react's changelog</a>.</em></p>
<blockquote>
<h2>6.0.5 (2026-07-30)</h2>
<h3>Fixed the react compiler preset filter to be linear (<a href="">#1353</a>)</h3>
<p>The improved filter in v6.0.3 was non-linear and caused a performance regression (<a href="">#1349</a>). The filter was changed to be linear to avoid that.</p>
<h2>6.0.4 (2026-07-22)</h2>
<h3>Fixed <code>$RefreshSig$ is not defined</code> error when running <code>vite dev</code> with <code>NODE_ENV=production</code></h3>
<p>When running <code>vite dev</code> with <code>NODE_ENV=production</code>, the app errored with <code>$RefreshSig$ is not defined</code>.
This error is now fixed.</p>
<h2>6.0.3 (2026-06-23)</h2>
<h3>Improve the react compiler preset filter to reduce false-positives (<a href="">#1138</a>)</h3>
<p>Improved the filter in the react compiler babel preset to reduce the false-positives so that less modules are processed by the react compiler.</p>
<h2>6.0.2 (2026-05-14)</h2>
<h3>Allow all options in reactCompilerPreset (<a href="">#1189</a>)</h3>
<p>This is a type only change. Only <code>compilationMode</code> and <code>target</code> options were available for <code>reactCompilerPreset</code>.</p>
<h2>6.0.1 (2026-03-13)</h2>
<h3>Expand <code>@rolldown/plugin-babel</code> peer dep range (<a href="">#1146</a>)</h3>
<p>Expanded <code>@rolldown/plugin-babel</code> peer dep range to include <code>^0.2.0</code>.</p>
<h2>6.0.0 (2026-03-12)</h2>
<h2>6.0.0-beta.0 (2026-03-03)</h2>
<h3>Remove Babel Related Features (<a href="">#1123</a>)</h3>
<p>Vite 8+ can handle React Refresh Transform by Oxc and doesn't need Babel for it. With that, there are no transform applied that requires Babel. To reduce the installation size of this plugin, babel is no longer a dependency of this plugin and the related features are removed.</p>
<p>If you are using Babel, you can use <code>@rolldown/plugin-babel</code> together with this plugin:</p>
<pre lang="diff"><code> import { defineConfig } from 'vite'
 import react from '@vitejs/plugin-react'
+import babel from '@rolldown/plugin-babel'
<p>export default defineConfig({
plugins: [</p>
<ul>
<li>
<pre><code>react({
</code></pre>
</li>
<li>
<pre><code>  babel: {
</code></pre>
</li>
</ul>
<p>&lt;/tr&gt;&lt;/table&gt;
</code></pre></p>
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>68c0cb8</code></a> release: plugin-react@6.0.5 (<a href="">#1362</a>)</li>
<li><a href=""><code>555cdbc</code></a> fix(react): make the react compiler preset filter linear (<a href="">#1353</a>)</li>
<li><a href=""><code>a00a9f8</code></a> fix(deps): update all non-major dependencies (<a href="">#1327</a>)</li>
<li><a href=""><code>f4b5498</code></a> release: plugin-react@6.0.4</li>
<li><a href=""><code>7a40659</code></a> fix(react): <code>$RefreshSig$ is not defined</code>  with NODE_ENV=production vite dev ...</li>
<li><a href=""><code>98b32d4</code></a> fix(deps): update react 19.2.8 (<a href="">#1298</a>)</li>
<li><a href=""><code>8ae5449</code></a> fix: babel-plugin-react-compiler cannot be imported when used in a framework ...</li>
<li><a href=""><code>f09ea01</code></a> fix(deps): update all non-major dependencies (<a href="">#1282</a>)</li>
<li><a href=""><code>640fd35</code></a> release: plugin-react@6.0.3</li>
<li><a href=""><code>889efb0</code></a> fix(deps): update all non-major dependencies (<a href="">#1249</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/vitejs/vite-plugin-react/commits/plugin-react@6.0.5/packages/plugin-react">compare view</a></li>
</ul>
</details>
<br />

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `371bba645db4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.