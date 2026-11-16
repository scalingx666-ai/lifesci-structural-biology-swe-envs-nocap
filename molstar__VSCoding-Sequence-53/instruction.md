# Issue

**Title:** Bump qs, body-parser and express

## Description

Bumps [qs](https://github.com/ljharb/qs), [body-parser](https://github.com/expressjs/body-parser) and [express](https://github.com/expressjs/express). These dependencies needed to be updated together.
Updates `qs` from 6.13.0 to 6.16.2
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/ljharb/qs/blob/main/CHANGELOG.md">qs's changelog</a>.</em></p>
<blockquote>
<h2><strong>6.16.2</strong></h2>
<ul>
<li>[Fix] <code>stringify</code>: encode keys when <code>allowEmptyArrays</code> is set (<a href="">#561</a>)</li>
<li>[meta] use double quotes for better OS support</li>
<li>[Dev Deps] update <code>evalmd</code>, <code>npmignore</code></li>
<li>[Tests] <code>stringify</code>: pin <code>allowEmptyArrays</code> output for keys that need no encoding</li>
</ul>
<h2><strong>6.16.1</strong></h2>
<ul>
<li>[Fix] <code>parse</code>: do not mutate an object input</li>
<li>[Fix] <code>stringify</code>: stop re-encoding structural separator dots when <code>encodeDotInKeys</code> is set (<a href="">#564</a>)</li>
<li>[Fix] <code>stringify</code>: <code>arrayFormat: 'comma'</code>: pass the full encoder arguments with <code>encodeValuesOnly</code></li>
<li>[Fix] <code>utils</code>: encode <code>+</code> as <code>%2B</code> in iso-8859-1 mode so values round-trip (<a href="">#565</a>)</li>
<li>[Fix] parse: only convert top-level dots to brackets when allowDots is on (<a href="">#621</a>)</li>
<li>[Fix] <code>stringify</code>: ignore inherited array format names (<a href="">#622</a>)</li>
<li>[Fix] <code>stringify</code>: <code>arrayFormat: 'comma'</code>: do not throw on elements with no callable <code>toString</code></li>
<li>[Fix] <code>utils</code>: <code>merge</code>: seed an overflow container's index from its own keys, not just the source</li>
<li>[Fix] <code>utils</code>: <code>merge</code>: keep a <code>strictMerge</code> conflict container's index and <code>arrayLimit</code> correct</li>
<li>[Fix] <code>parse</code>: only treat <code>[]</code> as array syntax when it ends the key</li>
<li>[Perf] <code>decode</code>: skip decoders when there is no percent sign (<a href="">#583</a>)</li>
<li>[Robustness] <code>utils</code>: <code>merge</code>: apply <code>arrayLimit</code> to the two-element array built for colliding values</li>
<li>[Robustness] <code>parse</code>: bound the nesting added by repeated <code>strictMerge</code> conflicts (credit <a href="https://github.com/Yeaseen"><code>@​Yeaseen</code></a>)</li>
<li>[Docs] document that <code>qs</code> and flat parsers disagree about parameter names</li>
<li>[Docs] clarify that <code>throwOnLimitExceeded</code> limits each array, not the total number of values</li>
<li>[Docs] clarify 6.14.1/6.15.2 parse bracket behavior change (<a href="">#567</a>, <a href="">#568</a>)</li>
<li>[meta] fix changelog indents</li>
<li>[actions] set least-privilege <code>cache-mode</code></li>
<li>[Tests] <code>utils</code>: <code>decode</code>: add missing cases</li>
<li>[Tests] <code>parse</code>: characterize the <code>]=</code> split when an <code>=</code> precedes any bracket group (<a href="">#620</a>)</li>
<li>[Tests] <code>parse</code>: <code>allowDots</code>: cover stray close brackets before a dot</li>
<li>[Dev Deps] update <code>@ljharb/eslint-config</code>, <code>eslint</code>, <code>tape</code></li>
</ul>
<h2><strong>6.16.0</strong></h2>
<ul>
<li>[New] <code>stringify</code>: add a <code>depth</code> option to bound recursion depth (default <code>Infinity</code>)</li>
<li>[Fix] stringify: serialize Date values when a filter is provided</li>
<li>[Fix] <code>parse</code>: enforce <code>arrayLimit</code> on comma groups under <code>[]=</code> when <code>throwOnLimitExceeded</code> is set</li>
<li>[Fix] <code>parse</code>: flatten a collection appended to an overflowed array (<a href="">#571</a>)</li>
<li>[Fix] <code>utils</code>: <code>isBuffer</code>: do not invoke a non-callable <code>constructor.isBuffer</code></li>
<li>[Fix] <code>stringify</code>: do not let <code>allowEmptyArrays</code> skip cycle detection (or drop own keys) on an empty array with own properties</li>
<li>[Fix] <code>stringify</code>: encode dots in a top-level key with a primitive value when encodeDotInKeys is set (<a href="">#562</a>)</li>
<li>[Docs] threat model: clarify <code>stringify</code> deep-nesting DoS is caller-bounded</li>
<li>[Docs] clarify <code>arrayLimit</code> is a representation threshold, not an element-count cap</li>
<li>[Tests] <code>parse</code>: remove a test that pinned <code>[]=</code> comma groups escaping <code>arrayLimit</code></li>
<li>[Tests] <code>stringify</code>: pin current <code>encodeDotInKeys</code> separator-dot behavior</li>
<li>[Dev Deps] update <code>@ljharb/eslint-config</code>, <code>eslint</code></li>
<li>[Dev Deps] update <code>eslint</code>, <code>evalmd</code></li>
</ul>
<h2><strong>6.15.4</strong></h2>
<ul>
<li>[Fix] <code>stringify</code>: encode keys when <code>allowEmptyArrays</code> is set (<a href="">#561</a>)</li>
<li>[meta] use double quotes for better OS support</li>
<li>[Dev Deps] update <code>@ljharb/eslint-config</code>, <code>evalmd</code>, <code>npmignore</code>, <code>tape</code></li>
<li>[Tests] <code>stringify</code>: pin <code>allowEmptyArrays</code> output for keys that need no encoding</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>136912a</code></a> v6.16.2</li>
<li><a href=""><code>6ed1c73</code></a> [Dev Deps] update <code>evalmd</code>, <code>npmignore</code></li>
<li><a href=""><code>a09bc29</code></a> [meta] use double quotes for better OS support</li>
<li><a href=""><code>5d3b1b9</code></a> [Fix] <code>stringify</code>: encode keys when <code>allowEmptyArrays</code> is set</li>
<li><a href=""><code>f13ec6c</code></a> [Tests] <code>stringify</code>: pin <code>allowEmptyArrays</code> output for keys that need no enco...</li>
<li><a href=""><code>2471b66</code></a> v6.16.1</li>
<li><a href=""><code>51f736e</code></a> [Docs] document that <code>qs</code> and flat parsers disagree about parameter names</li>
<li><a href=""><code>40239f7</code></a> [Dev Deps] update <code>tape</code></li>
<li><a href=""><code>d219359</code></a> [Fix] <code>parse</code>: do not mutate an object input</li>
<li><a href=""><code>98157dc</code></a> [Fix] <code>stringify</code>: stop re-encoding structural separator dots when `encodeDot...</li>
<li>Additional commits viewable in <a href="https://github.com/ljharb/qs/compare/v6.13.0...v6.16.2">compare view</a></li>
</ul>
</details>
<br />

Updates `body-parser` from 1.20.3 to 1.20.9
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/expressjs/body-parser/releases">body-parser's releases</a>.</em></p>
<blockquote>
<h2>1.20.9</h2>
<h2>Important: Security</h2>
<ul>
<li>Security fix for <a href="https://www.cve.org/CVERecord?id=CVE-2026-111181">CVE-2026-111181</a> (<a href="https://github.com/expressjs/body-parser/security/advisories/GHSA-27r3-jxmh-p828">GHSA-27r3-jxmh-p828</a>)</li>
</ul>
<h2>What's Changed</h2>
<ul>
<li>Release: 1.20.9 by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/body-parser#779</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/expressjs/body-parser/compare/1.20.8...1.20.9">https://github.com/expressjs/body-parser/compare/1.20.8...1.20.9</a></p>
<h2>1.20.8</h2>
<h2>Important</h2>
<p><strong>Same code base as <a href="https://github.com/expressjs/body-parser/releases/tag/1.20.7">1.20.7</a>. This was created to test the new release process.</strong></p>
<h2>What's Changed</h2>
<ul>
<li>ci: backport npm-publish workflow from master by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/body-parser#769</a></li>
<li>1.20.8 by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/body-parser#770</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/expressjs/body-parser/compare/1.20.7...1.20.8">https://github.com/expressjs/body-parser/compare/1.20.7...1.20.8</a></p>
<h2>1.20.7</h2>
<h2>What's Changed</h2>
<ul>
<li>docs: include security fix in 1.20.6 changes by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/body-parser#747</a></li>
<li>deps: qs@~6.16.0 by <a href="https://github.com/krzysdz"><code>@​krzysdz</code></a> in <a href="">expressjs/body-parser#761</a></li>
<li>1.20.7 by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/body-parser#767</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/expressjs/body-parser/compare/1.20.6...1.20.7">https://github.com/expressjs/body-parser/compare/1.20.6...1.20.7</a></p>
<h2>1.20.6</h2>
<h2>Important: Security</h2>
<ul>
<li>Security fix for <a href="https://www.cve.org/CVERecord?id=CVE-2025-13466">CVE-2026-12590</a> (<a href="https://github.com/expressjs/body-parser/security/advisories/GHSA-v422-hmwv-36x6">GHSA-v422-hmwv-36x6</a>)</li>
</ul>
<h2>What's Changed</h2>
<ul>
<li>fix: improve limit option validation by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#741</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/expressjs/body-parser/compare/1.20.5...1.20.6">https://github.com/expressjs/body-parser/compare/1.20.5...1.20.6</a></p>
<h2>v1.20.5</h2>
<h2>What's Changed</h2>
<p>The reason for this release is a fix to the extended urlencoded parser returning objects instead of arrays for large array inputs (&gt; 100) on qs@6.14.2+. (<a href="">expressjs/body-parser#716</a>)</p>
<ul>
<li>refactor(json): simplify strict mode error string construction by <a href="https://github.com/jonchurch"><code>@​jonchurch</code></a> in <a href="">expressjs/body-parser#692</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/expressjs/body-parser/blob/1.20.9/HISTORY.md">body-parser's changelog</a>.</em></p>
<blockquote>
<h1>1.20.9</h1>
<ul>
<li>Security fix for <a href="https://github.com/expressjs/body-parser/security/advisories/GHSA-27r3-jxmh-p828">GHSA-27r3-jxmh-p828</a> (CVE-2026-111181)</li>
</ul>
<h1>1.20.8</h1>
<ul>
<li>Same code base as 1.20.7. This was created to test the new release process.</li>
</ul>
<h1>1.20.7</h1>
<ul>
<li>deps: qs@~6.16.0</li>
</ul>
<h1>1.20.6</h1>
<ul>
<li>Security fix for <a href="https://github.com/expressjs/body-parser/security/advisories/GHSA-v422-hmwv-36x6">GHSA-v422-hmwv-36x6</a></li>
<li>fix: improve <code>limit</code> option validation (<a href="">#698</a>)
<ul>
<li>Invalid <code>limit</code> values (e.g. unparseable strings or <code>NaN</code>) now throw instead of being silently ignored, which previously disabled size limit enforcement</li>
<li><code>null</code> and <code>undefined</code> fall back to the default 100kb limit</li>
</ul>
</li>
</ul>
<h1>1.20.5</h1>
<ul>
<li>refactor(json): simplify strict mode error string construction</li>
<li>fix: extended urlencoded parsing of arrays with &gt;100 elements (<a href="">#716</a>)</li>
<li>deps: qs@~6.15.1</li>
</ul>
<h1>1.20.4</h1>
<ul>
<li>deps: qs@~6.14.0</li>
<li>deps: use tilde notation for dependencies</li>
<li>deps: http-errors@~2.0.1</li>
<li>deps: raw-body@~2.5.3</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>a64f140</code></a> 1.20.9 (<a href="">#779</a>)</li>
<li><a href=""><code>1260c38</code></a> fix: prevent process crash from trailing bytes after a compressed body</li>
<li><a href=""><code>b4c2112</code></a> docs: fix depth error description (<a href="">#776</a>)</li>
<li><a href=""><code>29ddb9b</code></a> docs: improve readability (<a href="">#756</a>)</li>
<li><a href=""><code>ac9667a</code></a> docs: improve wording (<a href="">#755</a>)</li>
<li><a href=""><code>5c08c20</code></a> 1.20.8 (<a href="">#770</a>)</li>
<li><a href=""><code>0cea4f4</code></a> ci: backport npm-publish workflow from master (<a href="">#769</a>)</li>
<li><a href=""><code>0f0f0d7</code></a> 1.20.7 (<a href="">#767</a>)</li>
<li><a href=""><code>355eb04</code></a> deps: qs@~6.16.0 (<a href="">#761</a>)</li>
<li><a href=""><code>8be369a</code></a> docs: include security fix in 1.20.6 changes</li>
<li>Additional commits viewable in <a href="https://github.com/expressjs/body-parser/compare/1.20.3...1.20.9">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for body-parser since your current version.</p>
</details>
<br />

Updates `express` from 4.21.1 to 4.22.3
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/expressjs/express/releases">express's releases</a>.</em></p>
<blockquote>
<h2>v4.22.2</h2>
<h2>What's Changed</h2>
<ul>
<li>fix: restore &gt;20 array parsing for <code>req.query</code> repeated keys (<a href=""><code>8d09bfe6</code></a>)
<ul>
<li>This also unifies array-cap behavior across notations. Indexed notation (<code>a[0]=...</code>) was historically capped at qs's default <code>arrayLimit</code> of 20 even in older qs versions; after this change it also allows up to 1000 items.</li>
</ul>
</li>
<li>deps: qs@~6.15.1</li>
<li>deps: body-parser@~1.20.5</li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/suuuuuuminnnnnn"><code>@​suuuuuuminnnnnn</code></a> made their first contribution in <a href="">expressjs/express#7021</a></li>
<li><a href="https://github.com/SAY-5"><code>@​SAY-5</code></a> made their first contribution in <a href="">expressjs/express#7181</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/expressjs/express/compare/v4.22.1...v4.22.2">https://github.com/expressjs/express/compare/v4.22.1...v4.22.2</a></p>
<h2>v4.22.1</h2>
<h2>What's Changed</h2>
<blockquote>
<p>[!IMPORTANT]<br />
The prior release (4.22.0) included an erroneous breaking change related to the extended query parser. There is no actual security vulnerability associated with this behavior (CVE-2024-51999 has been rejected). The change has been fully reverted in this release.</p>
</blockquote>
<ul>
<li>Release: 4.22.1 by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/express#6934</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/expressjs/express/compare/4.22.0...v4.22.1">https://github.com/expressjs/express/compare/4.22.0...v4.22.1</a></p>
<h2>4.22.0</h2>
<h2>Important: Security</h2>
<ul>
<li>Security fix for <a href="https://www.cve.org/CVERecord?id=CVE-2024-51999">CVE-2024-51999</a> (<a href="https://github.com/expressjs/express/security/advisories/GHSA-pj86-cfqh-vqx6">GHSA-pj86-cfqh-vqx6</a>)</li>
</ul>
<h2>What's Changed</h2>
<ul>
<li>Refactor: improve readability by <a href="https://github.com/sazk07"><code>@​sazk07</code></a> in <a href="">expressjs/express#6190</a></li>
<li>ci: add support for Node.js@23.0 by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/express#6080</a></li>
<li>Method functions with no path should error by <a href="https://github.com/wesleytodd"><code>@​wesleytodd</code></a> in <a href="">expressjs/express#5957</a></li>
<li>ci: updated github actions ci workflow by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/express#6323</a></li>
<li>ci: reorder <code>npm i</code> steps to fix ci for older node versions by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/express#6336</a></li>
<li>Backport: ci: add node.js 24 to test matrix by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/express#6506</a></li>
<li>chore(4.x): wider range for query test skip by <a href="https://github.com/jonchurch"><code>@​jonchurch</code></a> in <a href="">expressjs/express#6513</a></li>
<li>use tilde notation for certain dependencies by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/express#6905</a></li>
<li>deps: qs@6.14.0 by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/express#6909</a></li>
<li>deps: use tilde notation for <code>qs</code> by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/express#6919</a></li>
<li>Release: 4.22.0 by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/express#6921</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/expressjs/express/compare/4.21.2...4.22.0">https://github.com/expressjs/express/compare/4.21.2...4.22.0</a></p>
<h2>4.21.2</h2>
<h2>What's Changed</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/expressjs/express/blob/v4.22.3/History.md">express's changelog</a>.</em></p>
<blockquote>
<h1>4.22.3</h1>
<ul>
<li>Allow conditional revalidation for QUERY requests
<ul>
<li><code>req.fresh</code> now includes QUERY in the freshness check, so QUERY responses can return 304 when a validator matches</li>
</ul>
</li>
<li>deps: qs@~6.16.0</li>
</ul>
<h1>4.22.2</h1>
<ul>
<li>fix: restore &gt;20 array parsing for <code>req.query</code> repeated keys (<a href=""><code>8d09bfe6</code></a>)
<ul>
<li>This also unifies array-cap behavior across notations. Indexed notation (<code>a[0]=...</code>) was historically capped at qs's default <code>arrayLimit</code> of 20 even in older qs versions; after this change it also allows up to 1000 items.</li>
</ul>
</li>
<li>deps: qs@~6.15.1</li>
<li>deps: body-parser@~1.20.5</li>
</ul>
<h1>4.22.1</h1>
<ul>
<li>Revert security fix for <a href="https://www.cve.org/CVERecord?id=CVE-2024-51999">CVE-2024-51999</a> (<a href="https://github.com/expressjs/express/security/advisories/GHSA-pj86-cfqh-vqx6">GHSA-pj86-cfqh-vqx6</a>)
<ul>
<li>The prior release (4.22.0) included an erroneous breaking change related to the extended query parser. There is no actual security vulnerability associated with this behavior (CVE-2024-51999 has been rejected). The change has been fully reverted in this release.</li>
</ul>
</li>
</ul>
<h1>4.22.0</h1>
<ul>
<li>Security fix for <a href="https://www.cve.org/CVERecord?id=CVE-2024-51999">CVE-2024-51999</a> (<a href="https://github.com/expressjs/express/security/advisories/GHSA-pj86-cfqh-vqx6">GHSA-pj86-cfqh-vqx6</a>)</li>
<li>deps: use tilde notation for dependencies</li>
<li>deps: qs@6.14.0</li>
</ul>
<h1>4.21.2</h1>
<ul>
<li>deps: path-to-regexp@0.1.12
<ul>
<li>Fix backtracking protection</li>
</ul>
</li>
<li>deps: path-to-regexp@0.1.11
<ul>
<li>Throws an error on invalid path values</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>899b524</code></a> 4.22.3 (<a href="">#7466</a>)</li>
<li><a href=""><code>1fad2c3</code></a> ci: add npm staged publication with dist-tag support (<a href="">#7465</a>)</li>
<li><a href=""><code>4138650</code></a> deps: qs@~6.16.0 (<a href="">#7440</a>)</li>
<li><a href=""><code>61ccf2e</code></a> feat: allow conditional revalidation for QUERY requests (v4) (<a href="">#7377</a>)</li>
<li><a href=""><code>715101b</code></a> Update path-to-regexp to 0.1.13 because CVE-2026-4867 (<a href="">#7135</a>)</li>
<li><a href=""><code>f472e5f</code></a> docs: fix the release date format for 4.22.2</li>
<li><a href=""><code>df0abc9</code></a> 4.22.2</li>
<li><a href=""><code>836d366</code></a> <code>4.x</code> update qs to 6.15.1, body-parser 1.20.5 (<a href="">#7224</a>)</li>
<li><a href=""><code>8d09bfe</code></a> fix: restore array parsing for req.query repeated keys (<a href="">#7181</a>)</li>
<li><a href=""><code>d39e8ad</code></a> deps: body-parser@~1.20.4 (<a href="">#7021</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/expressjs/express/compare/4.21.1...v4.22.3">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for express since your current version.</p>
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
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/molstar/VSCoding-Sequence/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `88739ed5e9ee`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.