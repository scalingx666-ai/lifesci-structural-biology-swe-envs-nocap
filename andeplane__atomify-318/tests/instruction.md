# Issue

**Title:** chore(deps-dev): bump jsdom from 27.2.0 to 29.0.0

## Description

Bumps [jsdom](https://github.com/jsdom/jsdom) from 27.2.0 to 29.0.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/jsdom/jsdom/releases">jsdom's releases</a>.</em></p>
<blockquote>
<h2>v29.0.0</h2>
<p>Breaking changes:</p>
<ul>
<li>Node.js v22.13.0+ is now the minimum supported v22 version (was v22.12.0+).</li>
</ul>
<p>Other changes:</p>
<ul>
<li>Overhauled the CSSOM implementation, replacing the <a href="https://www.npmjs.com/package/@acemir/cssom"><code>@acemir/cssom</code></a> and <a href="https://github.com/jsdom/cssstyle"><code>cssstyle</code></a> dependencies with fresh internal implementations built on webidl2js wrappers and the <a href="https://www.npmjs.com/package/css-tree"><code>css-tree</code></a> parser. Serialization, parsing, and API behavior is improved in various ways, especially around edge cases.</li>
<li>Added <code>CSSCounterStyleRule</code> and <code>CSSNamespaceRule</code> to jsdom <code>Window</code>s.</li>
<li>Added <code>cssMediaRule.matches</code> and <code>cssSupportsRule.matches</code> getters.</li>
<li>Added proper media query parsing in <code>MediaList</code>, using <code>css-tree</code> instead of naive comma-splitting. Invalid queries become <code>&quot;not all&quot;</code> per spec.</li>
<li>Added <code>cssKeyframeRule.keyText</code> getter/setter validation.</li>
<li>Added <code>cssStyleRule.selectorText</code> setter validation: invalid selectors are now rejected.</li>
<li>Added <code>styleSheet.ownerNode</code>, <code>styleSheet.href</code>, and <code>styleSheet.title</code>.</li>
<li>Added bad port blocking per the <a href="https://fetch.spec.whatwg.org/#bad-port">fetch specification</a>, preventing fetches to commonly-abused ports.</li>
<li>Improved <code>Document</code> initialization performance by lazily initializing the CSS selector engine, avoiding ~0.5 ms of overhead per <code>Document</code>. (<a href="https://github.com/thypon"><code>@​thypon</code></a>)</li>
<li>Fixed a memory leak when stylesheets were removed from the document.</li>
<li>Fixed <code>CSSStyleDeclaration</code> modifications to properly trigger custom element reactions.</li>
<li>Fixed nested <code>@media</code> rule parsing.</li>
<li>Fixed <code>CSSStyleSheet</code>'s &quot;disallow modification&quot; flag not being checked in all mutation methods.</li>
<li>Fixed <code>XMLHttpRequest</code>'s <code>response</code> getter returning parsed JSON during the <code>LOADING</code> state instead of <code>null</code>.</li>
<li>Fixed <code>getComputedStyle()</code> crashing in XHTML documents when stylesheets contained at-rules such as <code>@page</code> or <code>@font-face</code>.</li>
<li>Fixed a potential hang in synchronous <code>XMLHttpRequest</code> caused by a race condition with the worker thread's idle timeout.</li>
</ul>
<h2>v28.1.0</h2>
<ul>
<li>Added <code>blob.text()</code>, <code>blob.arrayBuffer()</code>, and <code>blob.bytes()</code> methods.</li>
<li>Improved <code>getComputedStyle()</code> to account for CSS specificity when multiple rules apply. (<a href="https://github.com/asamuzaK"><code>@​asamuzaK</code></a>)</li>
<li>Improved synchronous <code>XMLHttpRequest</code> performance by using a persistent worker thread, avoiding ~400ms of setup overhead on every synchronous request after the first one.</li>
<li>Improved performance of <code>node.getRootNode()</code>, <code>node.isConnected</code>, and <code>event.dispatchEvent()</code> by caching the root node of document-connected trees.</li>
<li>Fixed <code>getComputedStyle()</code> to correctly handle <code>!important</code> priority. (<a href="https://github.com/asamuzaK"><code>@​asamuzaK</code></a>)</li>
<li>Fixed <code>document.getElementById()</code> to return the first element in tree order when multiple elements share the same ID.</li>
<li>Fixed <code>&lt;svg&gt;</code> elements to no longer incorrectly proxy event handlers to the <code>Window</code>.</li>
<li>Fixed <code>FileReader</code> event timing and <code>fileReader.result</code> state to more closely follow the spec.</li>
<li>Fixed a potential hang when synchronous <code>XMLHttpRequest</code> encountered dispatch errors.</li>
<li>Fixed compatibility with environments where Node.js's built-in <code>fetch()</code> has been used before importing jsdom, by working around undici v6/v7 incompatibilities.</li>
</ul>
<h2>v28.0.0</h2>
<ul>
<li>Overhauled resource loading customization. See <a href="https://github.com/jsdom/jsdom/blob/2b65c6a80af2c899e32933c5e0cb842164852149/README.md#loading-subresources">the new README</a> for details on the new API.</li>
<li>Added MIME type sniffing to <code>&lt;iframe&gt;</code> and <code>&lt;frame&gt;</code> loads.</li>
<li>Regression: <code>WebSocket</code>s are no longer correctly throttled to one connection per origin. This is a result of the bug at <a href="">nodejs/undici#4743</a>.</li>
<li>Fixed decoding of the query components of <code>&lt;a&gt;</code> and <code>&lt;area&gt;</code> elements in non-UTF-8 documents.</li>
<li>Fixed <code>XMLHttpRequest</code> fetches and <code>WebSocket</code> upgrade requests to be interceptable by the new customizable resource loading. (Except synchronous <code>XMLHttpRequest</code>s.)</li>
<li>Fixed the referrer of a document to be set correctly when redirects are involved; it is now the initiating page, not the last hop in the redirect chain.</li>
<li>Fixed correctness bugs when passing <code>ArrayBuffer</code>s or typed arrays to various APIs, where they would not correctly snapshot the data.</li>
<li>Fixed <code>require(&quot;url&quot;).parse()</code> deprecation warning when using <code>WebSocket</code>s.</li>
<li>Fixed <code>&lt;iframe&gt;</code>, <code>&lt;frame&gt;</code>, and <code>&lt;img&gt;</code> (when <code>canvas</code> is installed) to fire <code>load</code> events, not <code>error</code> events, on non-OK HTTP responses.</li>
<li>Fixed many small issues in <code>XMLHttpRequest</code>.</li>
</ul>
<h2>v27.4.0</h2>
<ul>
<li>Added <code>TextEncoder</code> and <code>TextDecoder</code>.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/jsdom/jsdom/blob/v29.0.0/Changelog.md">jsdom's changelog</a>.</em></p>
<blockquote>
<h2>29.0.0</h2>
<p>Breaking changes:</p>
<ul>
<li>Node.js v22.13.0+ is now the minimum supported v22 version (was v22.12.0+).</li>
</ul>
<p>Other changes:</p>
<ul>
<li>Overhauled the CSSOM implementation, replacing the <a href="https://www.npmjs.com/package/@acemir/cssom"><code>@acemir/cssom</code></a> and <a href="https://github.com/jsdom/cssstyle"><code>cssstyle</code></a> dependencies with fresh internal implementations built on webidl2js wrappers and the <a href="https://www.npmjs.com/package/css-tree"><code>css-tree</code></a> parser. Serialization, parsing, and API behavior is improved in various ways, especially around edge cases.</li>
<li>Added <code>CSSCounterStyleRule</code> and <code>CSSNamespaceRule</code> to jsdom <code>Window</code>s.</li>
<li>Added <code>cssMediaRule.matches</code> and <code>cssSupportsRule.matches</code> getters.</li>
<li>Added proper media query parsing in <code>MediaList</code>, using <code>css-tree</code> instead of naive comma-splitting. Invalid queries become <code>&quot;not all&quot;</code> per spec.</li>
<li>Added <code>cssKeyframeRule.keyText</code> getter/setter validation.</li>
<li>Added <code>cssStyleRule.selectorText</code> setter validation: invalid selectors are now rejected.</li>
<li>Added <code>styleSheet.ownerNode</code>, <code>styleSheet.href</code>, and <code>styleSheet.title</code>.</li>
<li>Added bad port blocking per the <a href="https://fetch.spec.whatwg.org/#bad-port">fetch specification</a>, preventing fetches to commonly-abused ports.</li>
<li>Improved <code>Document</code> initialization performance by lazily initializing the CSS selector engine, avoiding ~0.5 ms of overhead per <code>Document</code>. (thypon)</li>
<li>Fixed a memory leak when stylesheets were removed from the document.</li>
<li>Fixed <code>CSSStyleDeclaration</code> modifications to properly trigger custom element reactions.</li>
<li>Fixed nested <code>@media</code> rule parsing.</li>
<li>Fixed <code>CSSStyleSheet</code>'s &quot;disallow modification&quot; flag not being checked in all mutation methods.</li>
<li>Fixed <code>XMLHttpRequest</code>'s <code>response</code> getter returning parsed JSON during the <code>LOADING</code> state instead of <code>null</code>.</li>
<li>Fixed <code>getComputedStyle()</code> crashing in XHTML documents when stylesheets contained at-rules such as <code>@page</code> or <code>@font-face</code>.</li>
<li>Fixed a potential hang in synchronous <code>XMLHttpRequest</code> caused by a race condition with the worker thread's idle timeout.</li>
</ul>
<h2>28.1.0</h2>
<ul>
<li>Added <code>blob.text()</code>, <code>blob.arrayBuffer()</code>, and <code>blob.bytes()</code> methods.</li>
<li>Improved <code>getComputedStyle()</code> to account for CSS specificity when multiple rules apply. (asamuzaK)</li>
<li>Improved synchronous <code>XMLHttpRequest</code> performance by using a persistent worker thread, avoiding ~400ms of setup overhead on every synchronous request after the first one.</li>
<li>Improved performance of <code>node.getRootNode()</code>, <code>node.isConnected</code>, and <code>event.dispatchEvent()</code> by caching the root node of document-connected trees.</li>
<li>Fixed <code>getComputedStyle()</code> to correctly handle <code>!important</code> priority. (asamuzaK)</li>
<li>Fixed <code>document.getElementById()</code> to return the first element in tree order when multiple elements share the same ID.</li>
<li>Fixed <code>&lt;svg&gt;</code> elements to no longer incorrectly proxy event handlers to the <code>Window</code>.</li>
<li>Fixed <code>FileReader</code> event timing and <code>fileReader.result</code> state to more closely follow the spec.</li>
<li>Fixed a potential hang when synchronous <code>XMLHttpRequest</code> encountered dispatch errors.</li>
<li>Fixed compatibility with environments where Node.js's built-in <code>fetch()</code> has been used before importing jsdom, by working around undici v6/v7 incompatibilities.</li>
</ul>
<h2>28.0.0</h2>
<ul>
<li>Overhauled resource loading customization. See <a href="https://github.com/jsdom/jsdom/blob/2b65c6a80af2c899e32933c5e0cb842164852149/README.md#loading-subresources">the new README</a> for details on the new API.</li>
<li>Added MIME type sniffing to <code>&lt;iframe&gt;</code> and <code>&lt;frame&gt;</code> loads.</li>
<li>Regression: <code>WebSocket</code>s are no longer correctly throttled to one connection per origin. This is a result of the bug at <a href="">nodejs/undici#4743</a>.</li>
<li>Fixed decoding of the query components of <code>&lt;a&gt;</code> and <code>&lt;area&gt;</code> elements in non-UTF-8 documents.</li>
<li>Fixed <code>XMLHttpRequest</code> fetches and <code>WebSocket</code> upgrade requests to be interceptable by the new customizable resource loading. (Except synchronous <code>XMLHttpRequest</code>s.)</li>
<li>Fixed the referrer of a document to be set correctly when redirects are involved; it is now the initiating page, not the last hop in the redirect chain.</li>
<li>Fixed correctness bugs when passing <code>ArrayBuffer</code>s or typed arrays to various APIs, where they would not correctly snapshot the data.</li>
<li>Fixed <code>require(&quot;url&quot;).parse()</code> deprecation warning when using <code>WebSocket</code>s.</li>
<li>Fixed <code>&lt;iframe&gt;</code>, <code>&lt;frame&gt;</code>, and <code>&lt;img&gt;</code> (when <code>canvas</code> is installed) to fire <code>load</code> events, not <code>error</code> events, on non-OK HTTP responses.</li>
<li>Fixed many small issues in <code>XMLHttpRequest</code>.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>00522ce</code></a> Version 29.0.0</li>
<li><a href=""><code>a217975</code></a> Use undici's request() API for XHR dispatching</li>
<li><a href=""><code>f29722d</code></a> Convert CSSStyleDeclaration to webidl2js</li>
<li><a href=""><code>4aaacc6</code></a> Merge in <code>cssstyle</code> and replace <code>@acemir/cssom</code></li>
<li><a href=""><code>6c2769a</code></a> Remove unused http(s)-proxy-agent dependencies</li>
<li><a href=""><code>eba96b5</code></a> Update domSelector</li>
<li><a href=""><code>54f9995</code></a> Use --fgrep for npm run test:tuwpt:browser</li>
<li><a href=""><code>15e7664</code></a> Use stable ports for test:tuwpt:browser</li>
<li><a href=""><code>7410bdb</code></a> Suppress informational WPT output when using the min reporter</li>
<li><a href=""><code>c44377e</code></a> Lazily initialize DOMSelector</li>
<li>Additional commits viewable in <a href="https://github.com/jsdom/jsdom/compare/v27.2.0...v29.0.0">compare view</a></li>
</ul>
</details>
<details>
<summary>Install script changes</summary>
<p>This version modifies <code>prepare</code> script that runs during installation. Review the package contents before updating.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=jsdom&package-manager=npm_and_yarn&previous-version=27.2.0&new-version=29.0.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e9adc239323c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.