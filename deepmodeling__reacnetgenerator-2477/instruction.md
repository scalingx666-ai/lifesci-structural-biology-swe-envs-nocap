# Issue

**Title:** build(deps): bump the npm_and_yarn group across 1 directory with 12 updates

## Description

Bumps the npm_and_yarn group with 12 updates in the /reacnetgenerator/static/webpack directory:

| Package | From | To |
| --- | --- | --- |
| [postcss](https://github.com/postcss/postcss) | `8.5.6` | `8.5.23` |
| [webpack](https://github.com/webpack/webpack) | `5.99.9` | `5.104.1` |
| [brace-expansion](https://github.com/juliangruber/brace-expansion) | `2.0.2` | `2.1.4` |
| [glob](https://github.com/isaacs/node-glob) | `10.4.5` | `10.5.0` |
| [immutable](https://github.com/immutable-js/immutable-js) | `5.0.3` | `5.1.9` |
| [js-yaml](https://github.com/nodeca/js-yaml) | `4.1.1` | `4.3.2` |
| [lodash](https://github.com/lodash/lodash) | `4.17.21` | `4.18.1` |
| [minimatch](https://github.com/isaacs/minimatch) | `9.0.5` | `9.0.9` |
| [picomatch](https://github.com/micromatch/picomatch) | `2.3.1` | `2.3.2` |
| [qs](https://github.com/ljharb/qs) | `6.5.3` | `6.5.5` |
| [svgo](https://github.com/svg/svgo) | `3.3.2` | `3.3.5` |
| [tar](https://github.com/isaacs/node-tar) | `7.4.3` | `7.5.22` |

Updates `postcss` from 8.5.6 to 8.5.23
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/releases">postcss's releases</a>.</em></p>
<blockquote>
<h2>8.5.23</h2>
<ul>
<li>Do not load source map without <code>opts.from</code> for security reasons.</li>
</ul>
<h2>8.5.22</h2>
<ul>
<li>Fixed custom property losing semicolon before a comment (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
</ul>
<h2>8.5.21</h2>
<ul>
<li>Fixed childless at-rule losing semicolon before comment (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed docs (by <a href="https://github.com/isker"><code>@​isker</code></a>).</li>
</ul>
<h2>8.5.20</h2>
<ul>
<li>Fixed missing space if <code>AtRule#params</code> is set after (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed mixing AST error on warnings (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
</ul>
<h2>8.5.19</h2>
<ul>
<li>Fixed cleaning <code>before</code> for new nodes inserted to <code>Root</code> (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
</ul>
<h2>8.5.18</h2>
<ul>
<li>Restricted loading previous source maps file to the <code>opts.from</code> folder for security reasons (use <code>unsafeMap: true</code> to disable the check).</li>
</ul>
<h2>8.5.17</h2>
<ul>
<li>Fixed <code>Maximum call stack size exceeded</code> error.</li>
<li>Fixed Prototype hijacking for <code>postcss.fromJSON()</code>.</li>
<li>Fixed <code>Input#origin()</code> for unmapped end position (by <a href="https://github.com/chatman-media"><code>@​chatman-media</code></a>).</li>
</ul>
<h2>8.5.16</h2>
<ul>
<li>Fixed <code>Input#origin()</code> position (by <a href="https://github.com/mizdra"><code>@​mizdra</code></a>).</li>
<li>Fixed <code>raws</code> after rehydrating a JSON AST (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed putting parent-less node in <code>nodes</code> of new node (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
<li>Fixed computing <code>offset</code> in <code>positionBy()</code> (by <a href="https://github.com/greymoth-jp"><code>@​greymoth-jp</code></a>).</li>
<li>Fixed <code>rangeBy()</code> on <code>index: 0</code> (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
</ul>
<h2>8.5.15</h2>
<ul>
<li>Fixed declaration parsing performance (by <a href="https://github.com/homanp"><code>@​homanp</code></a>).</li>
</ul>
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
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/blob/main/CHANGELOG.md">postcss's changelog</a>.</em></p>
<blockquote>
<h2>8.5.23</h2>
<ul>
<li>Do not load source map without <code>opts.from</code> for security reasons.</li>
</ul>
<h2>8.5.22</h2>
<ul>
<li>Fixed custom property losing semicolon before a comment (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
</ul>
<h2>8.5.21</h2>
<ul>
<li>Fixed childless at-rule losing semicolon before comment (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed docs (by <a href="https://github.com/isker"><code>@​isker</code></a>).</li>
</ul>
<h2>8.5.20</h2>
<ul>
<li>Fixed missing space if <code>AtRule#params</code> is set after (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed mixing AST error on warnings (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
</ul>
<h2>8.5.19</h2>
<ul>
<li>Fixed cleaning <code>before</code> for new nodes inserted to <code>Root</code> (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
</ul>
<h2>8.5.18</h2>
<ul>
<li>Restricted loading previous source maps file to the <code>opts.from</code> folder for security reasons (use <code>unsafeMap: true</code> to disable the check).</li>
</ul>
<h2>8.5.17</h2>
<ul>
<li>Fixed <code>Maximum call stack size exceeded</code> error.</li>
<li>Fixed Prototype hijacking for <code>postcss.fromJSON()</code>.</li>
<li>Fixed <code>Input#origin()</code> for unmapped end position (by <a href="https://github.com/chatman-media"><code>@​chatman-media</code></a>).</li>
</ul>
<h2>8.5.16</h2>
<ul>
<li>Fixed <code>Input#origin()</code> position (by <a href="https://github.com/mizdra"><code>@​mizdra</code></a>).</li>
<li>Fixed <code>raws</code> after rehydrating a JSON AST (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed putting parent-less node in <code>nodes</code> of new node (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
<li>Fixed computing <code>offset</code> in <code>positionBy()</code> (by <a href="https://github.com/greymoth-jp"><code>@​greymoth-jp</code></a>).</li>
<li>Fixed <code>rangeBy()</code> on <code>index: 0</code> (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
</ul>
<h2>8.5.15</h2>
<ul>
<li>Fixed declaration parsing performance (by <a href="https://github.com/homanp"><code>@​homanp</code></a>).</li>
</ul>
<h2>8.5.14</h2>
<ul>
<li>Fixed custom syntax regression (by <a href="https://github.com/43081j"><code>@​43081j</code></a>).</li>
</ul>
<h2>8.5.13</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>eb9e1fe</code></a> Release 8.5.23 version</li>
<li><a href=""><code>9d19c78</code></a> Update dependencies</li>
<li><a href=""><code>7beca13</code></a> Does no load source map file without opts.from</li>
<li><a href=""><code>decea51</code></a> Typo</li>
<li><a href=""><code>c18e30d</code></a> Update EM banner</li>
<li><a href=""><code>98a39ad</code></a> Update EM banner</li>
<li><a href=""><code>a3e48c4</code></a> Release 8.5.22 version</li>
<li><a href=""><code>f49d691</code></a> Fix custom property losing its semicolon before a comment (<a href="">#2117</a>)</li>
<li><a href=""><code>28e0daf</code></a> Release 8.5.21 version</li>
<li><a href=""><code>3d2b4e4</code></a> Update dependencies</li>
<li>Additional commits viewable in <a href="https://github.com/postcss/postcss/compare/8.5.6...8.5.23">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for postcss since your current version.</p>
</details>
<br />

Updates `webpack` from 5.99.9 to 5.104.1
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
<li>Additional commits viewable in <a href="https://github.com/webpack/webpack/compare/v5.99.9...v5.104.1">compare view</a></li>
</ul>
</details>
<br />

Updates `brace-expansion` from 2.0.2 to 2.1.4
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/juliangruber/brace-expansion/releases">brace-expansion's releases</a>.</em></p>
<blockquote>
<h2>v2.1.1</h2>
<ul>
<li>Backport v5.0.6 change to v2 (<a href="">#109</a>)  c3a817c</li>
</ul>
<hr />
<p><a href="https://github.com/juliangruber/brace-expansion/compare/v2.1.0...v2.1.1">https://github.com/juliangruber/brace-expansion/compare/v2.1.0...v2.1.1</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>b25213d</code></a> 2.1.4</li>
<li><a href=""><code>1e30c93</code></a> Merge commit from fork</li>
<li><a href=""><code>878df39</code></a> 2.1.3</li>
<li><a href=""><code>c8bd93c</code></a> npm ignore .claude</li>
<li><a href=""><code>d13ff45</code></a> fix: backport GHSA-mh99-v99m-4gvg (<a href="">#130</a>)</li>
<li><a href=""><code>9e67a3b</code></a> 2.1.2</li>
<li><a href=""><code>835d6be</code></a> fix: v2 backport for CVE-2026-13149 (<a href="">#123</a>)</li>
<li><a href=""><code>64b71d3</code></a> 2.1.1</li>
<li><a href=""><code>c3a817c</code></a> Backport v5.0.6 change to v2 (<a href="">#109</a>)</li>
<li><a href=""><code>1ee4a90</code></a> 2.1.0</li>
<li>Additional commits viewable in <a href="https://github.com/juliangruber/brace-expansion/compare/v2.0.2...v2.1.4">compare view</a></li>
</ul>
</details>
<br />

Updates `glob` from 10.4.5 to 10.5.0
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>56774ef</code></a> 10.5.0</li>
<li><a href=""><code>1e4e297</code></a> bin: Do not expose filenames to shell expansion</li>
<li>See full diff in <a href="https://github.com/isaacs/node-glob/compare/v10.4.5...v10.5.0">compare view</a></li>
</ul>
</details>
<br />

Updates `immutable` from 5.0.3 to 5.1.9
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
<h2>5.1.5</h2>
<ul>
<li>Fix Improperly Controlled Modification of Object Prototype Attributes ('Prototype Pollution') in immutable</li>
</ul>
<h2>5.1.4</h2>
<ul>
<li>Migrate some files to TS by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2125</a>
<ul>
<li>Iterator.ts</li>
<li>PairSorting.ts</li>
<li>toJS.ts</li>
<li>Math.ts</li>
<li>Hash.ts</li>
</ul>
</li>
<li>Extract CollectionHelperMethods and convert to TS by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2131</a></li>
<li>Use npm <a href="https://docs.npmjs.com/trusted-publishers">trusted publishing only</a> to avoid token stealing.</li>
</ul>
<h3>Documentation</h3>
<ul>
<li>Fix/a11y issues by <a href="https://github.com/lyannel"><code>@​lyannel</code></a> in <a href="">immutable-js/immutable-js#2136</a></li>
<li>Doc add Map.get signature update by <a href="https://github.com/borracciaBlu"><code>@​borracciaBlu</code></a> in <a href="">immutable-js/immutable-js#2138</a></li>
<li>fix(doc):minor-issues#2132 by <a href="https://github.com/JayMeDotDot"><code>@​JayMeDotDot</code></a> in <a href="">immutable-js/immutable-js#2133</a></li>
<li>Fix algolia search by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2135</a></li>
<li>Typo in OrderedMap by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2144</a></li>
</ul>
<h3>Internal</h3>
<ul>
<li>chore: Sort all imports and activate eslint import rule by <a href="https://github.com/jdeniau"><code>@​jdeniau</code></a> in <a href="">immutable-js/immutable-js#2119</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
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
<li>Additional commits viewable in <a href="https://github.com/immutable-js/immutable-js/compare/v5.0.3...v5.1.9">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for immutable since your current version.</p>
</details>
<br />

Updates `js-yaml` from 4.1.1 to 4.3.2
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/nodeca/js-yaml/blob/4.3.2/CHANGELOG.md">js-yaml's changelog</a>.</em></p>
<blockquote>
<h2>4.3.2 - 2026-08-26</h2>
<h3>Changed</h3>
<ul>
<li>[backport] Hard-limit merge sequence size to 100.</li>
</ul>
<h3>Security</h3>
<ul>
<li>[backport] Count empty mappings in merge sequences toward <code>maxTotalMergeKeys</code>
to limit CPU usage, <a href="">#797</a>.</li>
</ul>
<h2>4.3.1 - 2026-07-31</h2>
<h3>Security</h3>
<ul>
<li>[backport] Remove quadratic complexity from <code>!!omap</code> duplicate key detection.</li>
</ul>
<h2>4.3.0 - 2026-06-27</h2>
<h3>Added</h3>
<ul>
<li>[backport] Added <code>maxTotalMergeKeys</code> (10000) loader option to limit the total number of
keys processed by YAML merge (<code>&lt;&lt;</code>) across one <code>load()</code> / <code>loadAll()</code> call.</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Restore umd builds back to es5.</li>
</ul>
<h3>Removed</h3>
<ul>
<li>[backport] <code>maxMergeSeqLength</code> replaced with <code>maxTotalMergeKeys</code> for limiting YAML merge
processing.</li>
</ul>
<h2>[4.2.0] - 2026-06-01</h2>
<h3>Added</h3>
<ul>
<li>Added <code>docs/safety.md</code> with notes about processing untrusted YAML.</li>
<li>Added <code>maxDepth</code> (100) loader option. Not a problem, but gives a better
exception instead of RangeError on stack overflow.</li>
<li>Added <code>maxMergeSeqLength</code> (20) loader option. Not a problem after <code>merge</code> fix,
but an additional restriction for safety.</li>
<li>Added sourcemaps to <code>dist/</code> builds.</li>
</ul>
<h3>Changed</h3>
<ul>
<li>Stop resolving numbers with underscores as numeric scalars, <a href="">#627</a>.</li>
<li>Switched dev toolchains to Vite / neostandard.</li>
<li>Updated demo.</li>
<li>Reorganized tests.</li>
<li><code>dist/</code> files are no longer kept in the repository.</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fix parsing of properties on the first implicit block mapping key, <a href="">#62</a>.</li>
<li>Fix trailing whitespace handling when folding flow scalar lines, <a href="">#307</a>.</li>
<li>Reject top-level block scalars without content indentation, <a href="">#280</a>.</li>
<li>Ensure numbers survive round-trip, <a href="">#737</a>.</li>
<li>Fix test coverage for issue <a href="">#221</a>.</li>
<li>Fix flow scalar trailing whitespace folding, <a href="">#307</a>.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>79ca68d</code></a> 4.3.2 released</li>
<li><a href=""><code>d90b661</code></a> Backport merge limits from v5.4.1</li>
<li><a href=""><code>86e91b8</code></a> 4.3.1 released</li>
<li><a href=""><code>c3cc4b0</code></a> Backport quadratic complexity fix for !!omap</li>
<li><a href=""><code>33d05b5</code></a> 4.3.0 released</li>
<li><a href=""><code>663bfab</code></a> Drop demo publish, to not override new v5 one.</li>
<li><a href=""><code>1cb8c7b</code></a> Add v4-legacy tag for publish</li>
<li><a href=""><code>02f27af</code></a> Restore umd builds back to es5</li>
<li><a href=""><code>8be84ed</code></a> Fix es5 compatibility</li>
<li><a href=""><code>59423c6</code></a> Replace <code>maxMergeSeqLength</code> option with <code>maxTotalMergeKeys</code> (more robust). Ba...</li>
<li>Additional commits viewable in <a href="https://github.com/nodeca/js-yaml/compare/4.1.1...4.3.2">compare view</a></li>
</ul>
</details>
<br />

Updates `lodash` from 4.17.21 to 4.18.1
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/lodash/lodash/releases">lodash's releases</a>.</em></p>
<blockquote>
<h2>4.18.1</h2>
<h2>Bugs</h2>
<p>Fixes a <code>ReferenceError</code> issue in <code>lodash</code> <code>lodash-es</code> <code>lodash-amd</code> and <code>lodash.template</code> when using the <code>template</code> and <code>fromPairs</code> functions from the modular builds. See <a href="">lodash/lodash#6167</a></p>
<p>These defects were related to how lodash distributions are built from the main branch using <a href="https://github.com/lodash-archive/lodash-cli">https://github.com/lodash-archive/lodash-cli</a>. When internal dependencies change inside lodash functions, equivalent updates need to be made to a mapping in the lodash-cli. (hey, it was ahead of its time once upon a time!). We know this, but we missed it in the last release. It's the kind of thing that passes in CI, but fails bc the build is not the same thing you tested.</p>
<p>There is no diff on main for this, but you can see the diffs for each of the npm packages on their respective branches:</p>
<ul>
<li><code>lodash</code>: <a href="https://github.com/lodash/lodash/compare/4.18.0-npm...4.18.1-npm">https://github.com/lodash/lodash/compare/4.18.0-npm...4.18.1-npm</a></li>
<li><code>lodash-es</code>: <a href="https://github.com/lodash/lodash/compare/4.18.0-es...4.18.1-es">https://github.com/lodash/lodash/compare/4.18.0-es...4.18.1-es</a></li>
<li><code>lodash-amd</code>: <a href="https://github.com/lodash/lodash/compare/4.18.0-amd...4.18.1-amd">https://github.com/lodash/lodash/compare/4.18.0-amd...4.18.1-amd</a></li>
<li><code>lodash.template</code><a href="https://github.com/lodash/lodash/compare/4.18.0-npm-packages...4.18.1-npm-packages">https://github.com/lodash/lodash/compare/4.18.0-npm-packages...4.18.1-npm-packages</a></li>
</ul>
<h2>4.18.0</h2>
<h2>v4.18.0</h2>
<p><strong>Full Changelog</strong>: <a href="https://github.com/lodash/lodash/compare/4.17.23...4.18.0">https://github.com/lodash/lodash/compare/4.17.23...4.18.0</a></p>
<h3>Security</h3>
<p><strong><code>_.unset</code> / <code>_.omit</code></strong>: Fixed prototype pollution via <code>constructor</code>/<code>prototype</code> path traversal (<a href="https://github.com/lodash/lodash/security/advisories/GHSA-f23m-r3pf-42rh">GHSA-f23m-r3pf-42rh</a>, <a href="">fe8d32e</a>). Previously, array-wrapped path segments and primitive roots could bypass the existing guards, allowing deletion of properties from built-in prototypes. Now <code>constructor</code> and <code>prototype</code> are blocked unconditionally as non-terminal path keys, matching <code>baseSet</code>. Calls that previously returned <code>true</code> and deleted the property now return <code>false</code> and leave the target untouched.</p>
<p><strong><code>_.template</code></strong>: Fixed code injection via <code>imports</code> keys (<a href="https://github.com/lodash/lodash/security/advisories/GHSA-r5fr-rjxr-66jc">GHSA-r5fr-rjxr-66jc</a>, CVE-2026-4800, <a href="">879aaa9</a>). Fixes an incomplete patch for CVE-2021-23337. The <code>variable</code> option was validated against <code>reForbiddenIdentifierChars</code> but <code>importsKeys</code> was left unguarded, allowing code injection via the same <code>Function()</code> constructor sink. <code>imports</code> keys containing forbidden identifier characters now throw <code>&quot;Invalid imports option passed into _.template&quot;</code>.</p>
<h3>Docs</h3>
<ul>
<li>Add security notice for <code>_.template</code> in threat model and API docs (<a href="">#6099</a>)</li>
<li>Document <code>lower &gt; upper</code> behavior in <code>_.random</code> (<a href="">#6115</a>)</li>
<li>Fix quotes in <code>_.compact</code> jsdoc (<a href="">#6090</a>)</li>
</ul>
<h3><code>lodash.*</code> modular packages</h3>
<p><a href="">Diff</a></p>
<p>We have also regenerated and published a select number of the <code>lodash.*</code> modular packages.</p>
<p>These modular packages had fallen out of sync significantly from the minor/patch updates to lodash. Specifically, we have brought the following packages up to parity w/ the latest lodash release because they have had CVEs on them in the past:</p>
<ul>
<li><a href="https://www.npmjs.com/package/lodash.orderby">lodash.orderby</a></li>
<li><a href="https://www.npmjs.com/package/lodash.tonumber">lodash.tonumber</a></li>
<li><a href="https://www.npmjs.com/package/lodash.trim">lodash.trim</a></li>
<li><a href="https://www.npmjs.com/package/lodash.trimend">lodash.trimend</a></li>
<li><a href="https://www.npmjs.com/package/lodash.sortedindexby">lodash.sortedindexby</a></li>
<li><a href="https://www.npmjs.com/package/lodash.zipobjectdeep">lodash.zipobjectdeep</a></li>
<li><a href="https://www.npmjs.com/package/lodash.unset">lodash.unset</a></li>
<li><a href="https://www.npmjs.com/package/lodash.omit">lodash.omit</a></li>
<li><a href="https://www.npmjs.com/package/lodash.template">lodash.template</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>cb0b9b9</code></a> release(patch): bump main to 4.18.1 (<a href="">#6177</a>)</li>
<li><a href=""><code>75535f5</code></a> chore: prune stale advisory refs (<a href="">#6170</a>)</li>
<li><a href=""><code>62e91bc</code></a> docs: remove n_ Node.js &lt; 6 REPL note from README (<a href="">#6165</a>)</li>
<li><a href=""><code>59be2de</code></a> release(minor): bump to 4.18.0 (<a href="">#6161</a>)</li>
<li><a href=""><code>af63457</code></a> fix: broken tests for _.template 879aaa9</li>
<li><a href=""><code>1073a76</code></a> fix: linting issues</li>
<li><a href=""><code>879aaa9</code></a> fix: validate imports keys in _.template</li>
<li><a href=""><code>fe8d32e</code></a> fix: block prototype pollution in baseUnset via constructor/prototype traversal</li>
<li><a href=""><code>18ba0a3</code></a> refactor(fromPairs): use baseAssignValue for consistent assignment (<a href="">#6153</a>)</li>
<li><a href=""><code>b819080</code></a> ci: add dist sync validation workflow (<a href="">#6137</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/lodash/lodash/compare/4.17.21...4.18.1">compare view</a></li>
</ul>
</details>
<br />

Updates `minimatch` from 9.0.5 to 9.0.9
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>8a10e47</code></a> 9.0.9</li>
<li><a href=""><code>c6f1806</code></a> brace-expansion@2</li>
<li><a href=""><code>446cfa3</code></a> 9.0.8</li>
<li><a href=""><code>8fa151a</code></a> docs: add warning about ReDoS</li>
<li><a href=""><code>71b78a2</code></a> fix partial matching of globstar patterns</li>
<li><a href=""><code>2de496f</code></a> 9.0.7</li>
<li><a href=""><code>0d4616d</code></a> limit nested extglob recursion, flatten extglobs</li>
<li><a href=""><code>7117ef3</code></a> 9.0.6</li>
<li><a href=""><code>2418458</code></a> update deps, do not checkin dist</li>
<li><a href=""><code>1d1f531</code></a> update deps</li>
<li>Additional commits viewable in <a href="https://github.com/isaacs/minimatch/compare/v9.0.5...v9.0.9">compare view</a></li>
</ul>
</details>
<br />

Updates `picomatch` from 2.3.1 to 2.3.2
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/micromatch/picomatch/releases">picomatch's releases</a>.</em></p>
<blockquote>
<h2>2.3.2</h2>
<p>This is a security release fixing several security relevant issues.</p>
<h2>What's Changed</h2>
<ul>
<li>fix: exception when glob pattern contains constructor by <a href="https://github.com/Jason3S"><code>@​Jason3S</code></a> in <a href="">micromatch/picomatch#144</a></li>
<li>Fix for <a href="https://github.com/micromatch/picomatch/security/advisories/GHSA-c2c7-rcm5-vvqj">CVE-2026-33671</a></li>
<li>Fix for <a href="https://github.com/micromatch/picomatch/security/advisories/GHSA-3v7f-55p6-f55p">CVE-2026-33672</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/micromatch/picomatch/compare/2.3.1...2.3.2">https://github.com/micromatch/picomatch/compare/2.3.1...2.3.2</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/micromatch/picomatch/blob/master/CHANGELOG.md">picomatch's changelog</a>.</em></p>
<blockquote>
<h2>2.3.2 (2026-03-23)</h2>
<h3>Fixed</h3>
<ul>
<li>Avoided an exception when a glob pattern contains <code>constructor</code> (<a href="">#144</a>, <a href="">3f4f10e</a>).</li>
</ul>
<h3>Security</h3>
<ul>
<li>Backported the extglob-quantifier ReDoS fix from 4.0.4. Risky repeated extglobs are now safely rewritten or treated as literals by default; positive numeric <code>maxExtglobRecursion</code> values allow limited nesting, while <code>false</code> disables the safeguard (<a href="https://github.com/advisories/GHSA-c2c7-rcm5-vvqj">CVE-2026-33671</a>, <a href="">eec17ae</a>).</li>
<li>Prevented inherited object properties from being interpreted as POSIX character classes (<a href="https://github.com/advisories/GHSA-3v7f-55p6-f55p">CVE-2026-33672</a>, <a href="">fc1f6b6</a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>81cba8d</code></a> Publish 2.3.2</li>
<li><a href=""><code>fc1f6b6</code></a> Merge commit from fork</li>
<li><a href=""><code>eec17ae</code></a> Merge commit from fork</li>
<li><a href=""><code>78f8ca4</code></a> Merge pull request <a href="">#156</a> from micromatch/backport-144</li>
<li><a href=""><code>3f4f10e</code></a> Merge pull request <a href="">#144</a> from Jason3S/jdent-object-properties</li>
<li>See full diff in <a href="https://github.com/micromatch/picomatch/compare/2.3.1...2.3.2">compare view</a></li>
</ul>
</details>
<br />

Updates `qs` from 6.5.3 to 6.5.5
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/ljharb/qs/blob/main/CHANGELOG.md">qs's changelog</a>.</em></p>
<blockquote>
<h2><strong>6.5.5</strong></h2>
<ul>
<li>[Fix] fix regressions from robustness refactor</li>
<li>[meta] add <code>npmignore</code> to autogenerate an npmignore file</li>
<li>[actions] update reusable workflows</li>
</ul>
<h2><strong>6.5.4</strong></h2>
<ul>
<li>[Robustness] avoid <code>.push</code>, use <code>void</code></li>
<li>[readme] clarify <code>parseArrays</code> and <code>arrayLimit</code> documentation (<a href="">#543</a>)</li>
<li>[readme] document that <code>addQueryPrefix</code> does not add <code>?</code> to empty output (<a href="">#418</a>)</li>
<li>[readme] replace runkit CI badge with shields.io check-runs badge</li>
<li>[actions] fix rebase workflow permissions</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>3a6d9f8</code></a> v6.5.5</li>
<li><a href=""><code>48160e7</code></a> [actions] update reusable workflows</li>
<li><a href=""><code>2fc004a</code></a> [meta] add <code>npmignore</code> to autogenerate an npmignore file</li>
<li><a href=""><code>ddcc5d5</code></a> [Fix] fix regressions from robustness refactor</li>
<li><a href=""><code>c190488</code></a> v6.5.4</li>
<li><a href=""><code>40b77c3</code></a> [actions] fix rebase workflow permissions</li>
<li><a href=""><code>6e39e92</code></a> [readme] document that <code>addQueryPrefix</code> does not add <code>?</code> to empty output</li>
<li><a href=""><code>4e393de</code></a> [readme] replace runkit CI badge with shields.io check-runs badge</li>
<li><a href=""><code>dbb0346</code></a> [readme] clarify <code>parseArrays</code> and <code>arrayLimit</code> documentation</li>
<li><a href=""><code>6b8b4d8</code></a> [Robustness] avoid <code>.push</code>, use <code>void</code></li>
<li>See full diff in <a href="https://github.com/ljharb/qs/compare/v6.5.3...v6.5.5">compare view</a></li>
</ul>
</details>
<br />

Updates `svgo` from 3.3.2 to 3.3.5
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/svg/svgo/releases">svgo's releases</a>.</em></p>
<blockquote>
<h2>v3.3.5</h2>
<h2>What's Changed</h2>
<h3>Security</h3>
<ul>
<li>Backport the <code>removeScriptElement</code> hardening from SVGO v4 in <a href="">#2269</a>:
<ul>
<li>reject executable <code>data:</code> URLs and legacy <code>vbscript:</code> URLs</li>
<li>sanitize executable HTML inside <code>&lt;foreignObject&gt;</code> elements</li>
<li>handle namespace-prefixed SVG anchors and URL schemes containing ASCII tabs or newlines</li>
</ul>
</li>
</ul>
<p>This addresses <a href="https://github.com/svg/svgo/security/advisories/GHSA-4vpr-x523-8j87">GHSA-4vpr-x523-8j87</a> and <a href="https://github.com/svg/svgo/security/advisories/GHSA-w27v-7q3p-w38r">GHSA-w27v-7q3p-w38r</a> for the v3 release line.</p>
<h2>Support</h2>
<p>SVGO v3 is not officially supported; please consider upgrading to SVGO v4. This security fix has been backported, but there is no commitment to backport more complex changes in the future.</p>
<p>See the <a href="https://svgo.dev/docs/migrations/migration-from-v3-to-v4/">migration guide from v3 to v4</a>.</p>
<h2>v3.3.4</h2>
<h2>What's Changed</h2>
<h3>Security</h3>
<ul>
<li><a href="https://svgo.dev/docs/plugins/removeScripts/">removeScriptElement</a>, remove JavaScript URIs case-insensitively and make <code>&lt;script&gt;</code> handling namespace aware. By <a href="https://github.com/SethFalco"><code>@​SethFalco</code></a></li>
</ul>
<h2>Support</h2>
<p>SVGO v3 is not officially supported, please consider upgrading to SVGO v4 instead. We've backported this fix as there are security implications, but there is no commitment to do this for more complex changes in future.</p>
<p>Consider reading our <a href="https://svgo.dev/docs/migrations/migration-from-v3-to-v4/">Migration Guide from v3 to v4</a> which should ease the process.</p>
<h2>v3.3.3</h2>
<h2>What's Changed</h2>
<h3>Dependencies</h3>
<ul>
<li>Migrates from our unsupported fork of sax (<a href="https://www.npmjs.com/package/@trysound/sax">@​trysound/sax</a>) to the upstream version of sax (<a href="https://www.npmjs.com/package/sax">sax</a>).</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>No longer throws error when encountering comments in DTD.</li>
</ul>
<h2>Metrics</h2>
<p>Before and after of the browser bundle of each respective version:</p>
<table>
<thead>
<tr>
<th></th>
<th>v3.3.2</th>
<th>v3.3.3</th>
<th>Delta</th>
</tr>
</thead>
<tbody>
<tr>
<td>svgo.browser.js</td>
<td>910.9 kB</td>
<td>912.9 kB</td>
<td>⬆️ 2 kB</td>
</tr>
</tbody>
</table>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>4380590</code></a> ci: configure v3 publish tag in package metadata (<a href="">#2271</a>)</li>
<li><a href=""><code>4c84fe7</code></a> ci: publish v3 with npm trusted publishing (<a href="">#2270</a>)</li>
<li><a href=""><code>994a9f0</code></a> fix(removeScriptElement): backport security hardening to v3 (<a href="">#2269</a>)</li>
<li><a href=""><code>72a2388</code></a> Merge commit from fork</li>
<li><a href=""><code>bbab162</code></a> deps: upgrade to sax v1.5.0</li>
<li>See full diff in <a href="https://github.com/svg/svgo/compare/v3.3.2...v3.3.5">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for svgo since your current version.</p>
</details>
<br />

Updates `tar` from 7.4.3 to 7.5.22
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/isaacs/node-tar/blob/main/CHANGELOG.md">tar's changelog</a>.</em></p>
<blockquote>
<h1>Changelog</h1>
<h2>7.5</h2>
<ul>
<li>Added <code>zstd</code> compression support.</li>
<li>Consistent TOCTOU behavior in sync t.list</li>
<li>Only read from ustar block if not specified in Pax</li>
<li>Fix sync tar.list when file size reduces while reading</li>
<li>Sanitize absolute linkpaths properly</li>
<li>Prevent writing hardlink entries to the archive ahead of their
file target</li>
</ul>
<h2>7.4</h2>
<ul>
<li>Deprecate <code>onentry</code> in favor of <code>onReadEntry</code> for clarity.</li>
</ul>
<h2>7.3</h2>
<ul>
<li>Add <code>onWriteEntry</code> option</li>
</ul>
<h2>7.2</h2>
<ul>
<li>DRY the command definitions into a single <code>makeCommand</code> method,
and update the type signatures to more appropriately infer the
return type from the options and arguments provided.</li>
</ul>
<h2>7.1</h2>
<ul>
<li>Update minipass to v7.1.0</li>
<li>Update the type definitions of <code>write()</code> and <code>end()</code> methods on
<code>Unpack</code> and <code>Parser</code> classes to be compatible with the
NodeJS.WritableStream type in the latest versions of
<code>@types/node</code>.</li>
</ul>
<h2>7.0</h2>
<ul>
<li>Drop support for node &lt;18</li>
<li>Rewrite in TypeScript, provide ESM and CommonJS hybrid
interface</li>
<li>Add tree-shake friendly exports, like <code>import('tar/create')</code>
and <code>import('tar/read-entry')</code> to get individual functions or
classes.</li>
<li>Add <code>chmod</code> option that defaults to false, and deprecate
<code>noChmod</code>. That is, reverse the default option regarding
explicitly setting file system modes to match tar entry
settings.</li>
<li>Add <code>processUmask</code> option to avoid having to call
<code>process.umask()</code> when <code>chmod: true</code> (or <code>noChmod: false</code>) is
set.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>2a22bfc</code></a> 7.5.22</li>
<li><a href=""><code>df1cd8d</code></a> Allow transform to be falsey</li>
<li><a href=""><code>0cd9cc3</code></a> 7.5.21</li>
<li><a href=""><code>631ae59</code></a> list: prevent unbounded recursion</li>
<li><a href=""><code>ebbb720</code></a> 7.5.20</li>
<li><a href=""><code>2f27196</code></a> fix: fully disable and dispose of unzip when aborting parser</li>
<li><a href=""><code>be440da</code></a> 7.5.19</li>
<li><a href=""><code>2812e93</code></a> add maxDecompressionRatio guard against explosive decompression</li>
<li><a href=""><code>9ecd4d2</code></a> 7.5.18</li>
<li><a href=""><code>9e78bf0</code></a> refuse to let header size be less than 0</li>
<li>Additional commits viewable in <a href="https://github.com/isaacs/node-tar/compare/v7.4.3...v7.5.22">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~isaacs">isaacs</a>, a new releaser for tar since your current version.</p>
</details>
<details>
<summary>Install script changes</summary>
<p>This version adds <code>prepare</code> script that runs during installation. Review the package contents before updating.</p>
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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore <dependency name> major version` will close this group update PR and stop Dependabot creating any more for the specific dependency's major version (unless ...

_Description has been truncated_

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cc955676c1be`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.