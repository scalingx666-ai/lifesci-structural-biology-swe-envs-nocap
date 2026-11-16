# Issue

**Title:** chore(deps): bump protobufjs from 8.0.0 to 8.6.0

## Description

Bumps [protobufjs](https://github.com/protobufjs/protobuf.js) from 8.0.0 to 8.6.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/protobufjs/protobuf.js/releases">protobufjs's releases</a>.</em></p>
<blockquote>
<h2>protobufjs: v8.6.0</h2>
<h2><a href="https://github.com/protobufjs/protobuf.js/compare/protobufjs-v8.5.0...protobufjs-v8.6.0">8.6.0</a> (2026-06-04)</h2>
<h3>Features</h3>
<ul>
<li>Add spec-compliant protojson extension (<a href="">#2297</a>) (<a href="">ffd3d51</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>Avoid name collisions in generated code (<a href="">#2302</a>) (<a href="">ce013ab</a>)</li>
<li><strong>cli:</strong> Vendor patched Catharsis for pbts (<a href="">#2304</a>) (<a href="">29f7c96</a>)</li>
<li>Remove postinstall script (<a href="">#2299</a>) (<a href="">b8ed7be</a>)</li>
<li>Support null-prototype plain objects in converters (<a href="">#2300</a>) (<a href="">bf20d84</a>)</li>
</ul>
<h2>protobufjs: v8.5.0</h2>
<h2><a href="https://github.com/protobufjs/protobuf.js/compare/protobufjs-v8.4.2...protobufjs-v8.5.0">8.5.0</a> (2026-05-29)</h2>
<h3>Features</h3>
<ul>
<li>Add option to discard unknown fields (<a href="">#2289</a>) (<a href="">f8c489b</a>)</li>
<li>Expose RPC metadata on service methods (<a href="">#2286</a>) (<a href="">711a279</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li><strong>cli:</strong> Consistently handle derived names (<a href="">#2293</a>) (<a href="">9e80030</a>)</li>
<li>Consistently reject null message argument in fromObject (<a href="">#2287</a>) (<a href="">0f6178d</a>)</li>
<li>Prefer nested type resolution over global fallback (<a href="">#2288</a>) (<a href="">4b4c703</a>)</li>
</ul>
<h2>protobufjs: v8.4.2</h2>
<h2><a href="https://github.com/protobufjs/protobuf.js/compare/protobufjs-v8.4.1...protobufjs-v8.4.2">8.4.2</a> (2026-05-22)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>Align reserved range semantics (<a href="">#2277</a>) (<a href="">48aa10f</a>)</li>
<li>Coerce int32 values before writer sizing (<a href="">#2281</a>) (<a href="">53c2e54</a>)</li>
</ul>
<h2>protobufjs: v8.4.1</h2>
<h2><a href="https://github.com/protobufjs/protobuf.js/compare/protobufjs-v8.4.0...protobufjs-v8.4.1">8.4.1</a> (2026-05-21)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>Correct util helper typing (<a href="">#2279</a>) (<a href="">664a3d1</a>)</li>
<li>Decode omitted long map values as Long (<a href="">#2264</a>) (<a href="">a71254b</a>)</li>
<li>Expose Field rule declaration (<a href="">#2261</a>) (<a href="">1664cbf</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/protobufjs/protobuf.js/blob/master/CHANGELOG.md">protobufjs's changelog</a>.</em></p>
<blockquote>
<h2><a href="https://github.com/protobufjs/protobuf.js/compare/protobufjs-v8.5.0...protobufjs-v8.6.0">8.6.0</a> (2026-06-04)</h2>
<h3>Features</h3>
<ul>
<li>Add spec-compliant protojson extension (<a href="">#2297</a>) (<a href="">ffd3d51</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>Avoid name collisions in generated code (<a href="">#2302</a>) (<a href="">ce013ab</a>)</li>
<li><strong>cli:</strong> Vendor patched Catharsis for pbts (<a href="">#2304</a>) (<a href="">29f7c96</a>)</li>
<li>Remove postinstall script (<a href="">#2299</a>) (<a href="">b8ed7be</a>)</li>
<li>Support null-prototype plain objects in converters (<a href="">#2300</a>) (<a href="">bf20d84</a>)</li>
</ul>
<h2><a href="https://github.com/protobufjs/protobuf.js/compare/protobufjs-v8.4.2...protobufjs-v8.5.0">8.5.0</a> (2026-05-29)</h2>
<h3>Features</h3>
<ul>
<li>Add option to discard unknown fields (<a href="">#2289</a>) (<a href="">f8c489b</a>)</li>
<li>Expose RPC metadata on service methods (<a href="">#2286</a>) (<a href="">711a279</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li><strong>cli:</strong> Consistently handle derived names (<a href="">#2293</a>) (<a href="">9e80030</a>)</li>
<li>Consistently reject null message argument in fromObject (<a href="">#2287</a>) (<a href="">0f6178d</a>)</li>
<li>Prefer nested type resolution over global fallback (<a href="">#2288</a>) (<a href="">4b4c703</a>)</li>
</ul>
<h2><a href="https://github.com/protobufjs/protobuf.js/compare/protobufjs-v8.4.1...protobufjs-v8.4.2">8.4.2</a> (2026-05-22)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>Align reserved range semantics (<a href="">#2277</a>) (<a href="">48aa10f</a>)</li>
<li>Coerce int32 values before writer sizing (<a href="">#2281</a>) (<a href="">53c2e54</a>)</li>
</ul>
<h2><a href="https://github.com/protobufjs/protobuf.js/compare/protobufjs-v8.4.0...protobufjs-v8.4.1">8.4.1</a> (2026-05-21)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>Correct util helper typing (<a href="">#2279</a>) (<a href="">664a3d1</a>)</li>
<li>Decode omitted long map values as Long (<a href="">#2264</a>) (<a href="">a71254b</a>)</li>
<li>Expose Field rule declaration (<a href="">#2261</a>) (<a href="">1664cbf</a>)</li>
<li>Improve message return typings (<a href="">#2274</a>) (<a href="">0f54489</a>)</li>
<li>Misc utility hardening (<a href="">#2272</a>) (<a href="">3de631b</a>)</li>
<li>Omit proto3 synthetic oneofs in toObject (<a href="">#2273</a>) (<a href="">9a78a4a</a>)</li>
<li>Preserve writer state in static encodeDelimited (<a href="">#2275</a>) (<a href="">d28ec57</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>8631d9b</code></a> chore: release master (<a href="">#2301</a>)</li>
<li><a href=""><code>29f7c96</code></a> fix(cli): Vendor patched Catharsis for pbts (<a href="">#2304</a>)</li>
<li><a href=""><code>ce013ab</code></a> fix: Avoid name collisions in generated code (<a href="">#2302</a>)</li>
<li><a href=""><code>ffd3d51</code></a> feat: Add spec-compliant protojson extension (<a href="">#2297</a>)</li>
<li><a href=""><code>bf20d84</code></a> fix: Support null-prototype plain objects in converters (<a href="">#2300</a>)</li>
<li><a href=""><code>b8ed7be</code></a> fix: Remove postinstall script (<a href="">#2299</a>)</li>
<li><a href=""><code>4655f8d</code></a> chore: release master (<a href="">#2292</a>)</li>
<li><a href=""><code>9e80030</code></a> fix(cli): Consistently handle derived names (<a href="">#2293</a>)</li>
<li><a href=""><code>f8c489b</code></a> feat: Add option to discard unknown fields (<a href="">#2289</a>)</li>
<li><a href=""><code>4b4c703</code></a> fix: Prefer nested type resolution over global fallback (<a href="">#2288</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/protobufjs/protobuf.js/compare/protobufjs-v8.0.0...protobufjs-v8.6.0">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for protobufjs since your current version.</p>
</details>
<br />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7545a1524844`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.