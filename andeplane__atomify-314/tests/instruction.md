# Issue

**Title:** chore(deps): bump mixpanel-browser from 2.72.0 to 2.75.0

## Description

Bumps [mixpanel-browser](https://github.com/mixpanel/mixpanel-js) from 2.72.0 to 2.75.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/mixpanel/mixpanel-js/releases">mixpanel-browser's releases</a>.</em></p>
<blockquote>
<h2>New masking API, remote settings, and more</h2>
<h3>New Recorder Masking API</h3>
<p>Session recording now supports unmasking inputs, as well as an allow-list based masking API for both inputs and text. New configuration options:</p>
<table>
<thead>
<tr>
<th>Option</th>
<th>Type</th>
<th>Default</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>record_mask_all_text</code></td>
<td><code>boolean</code></td>
<td><code>true</code></td>
<td>When <code>true</code>, all text is masked by default. Use <code>record_unmask_text_selector</code> to selectively reveal specific elements.</td>
</tr>
<tr>
<td><code>record_mask_text_selector</code></td>
<td><code>string | string[]</code></td>
<td><code>undefined</code></td>
<td>CSS selector(s) for elements to mask. Only applies when <code>record_mask_all_text</code> is <code>false</code>.</td>
</tr>
<tr>
<td><code>record_unmask_text_selector</code></td>
<td><code>string | string[]</code></td>
<td><code>undefined</code></td>
<td>CSS selector(s) for elements to unmask. Only applies when <code>record_mask_all_text</code> is <code>true</code>.</td>
</tr>
<tr>
<td><code>record_mask_all_inputs</code></td>
<td><code>boolean</code></td>
<td><code>true</code></td>
<td>When <code>true</code>, all inputs are masked by default. Use <code>record_unmask_input_selector</code> to selectively reveal specific inputs.</td>
</tr>
<tr>
<td><code>record_mask_input_selector</code></td>
<td><code>string | string[]</code></td>
<td><code>&quot;&quot;</code></td>
<td>CSS selector(s) for inputs to mask. Only applies when <code>record_mask_all_inputs</code> is <code>false</code>.</td>
</tr>
<tr>
<td><code>record_unmask_input_selector</code></td>
<td><code>string | string[]</code></td>
<td><code>&quot;&quot;</code></td>
<td>CSS selector(s) for inputs to unmask. Only applies when <code>record_mask_all_inputs</code> is <code>true</code>.</td>
</tr>
</tbody>
</table>
<p>Old <code>record_mask_text_selector</code> configuration options are migrated to the equivalent new config options for compatibility - e.g. <code>record_mask_text_selector: ''</code> will be applied as <code>record_mask_all_text: false</code></p>
<h3>Initial Remote Settings Support</h3>
<p>Preparation to support remote settings functionality which will allow customizing session recording configurations (and eventually more) within the Mixpanel UI. The config option <code>remote_settings_mode</code> allows 3 states:</p>
<ul>
<li><code>strict</code> - do not act (for instance, start session recording) unless the remote settings are loaded in a timely manner</li>
<li><code>fallback</code> - use fallback configuration values (options set during initialization) if remote settings fail to load in a timely manner</li>
<li><code>disabled</code> (default) - do not use or attempt to load remote settings</li>
</ul>
<p>Remote settings are currently in a CLOSED alpha as of 1/27/2026, and the SDK API could be updated with breaking changes.</p>
<h3>Other fixes</h3>
<ul>
<li>Add missing typescript fields for <code>api_routes</code> (thanks <a href="https://github.com/rnbrady"><code>@​rnbrady</code></a>!)</li>
<li>Fix issue where Mixpanel import breaks in Safari when cookies are disabled: <a href="">mixpanel/mixpanel-js#530</a></li>
<li>Deleted some outdated example directories</li>
</ul>
<h2>New hooks, extension support, type fixes</h2>
<p>This release adds several new hooks for running code and intercepting SDK actions: <code>before_identify</code>, <code>before_register</code>, <code>before_register_once</code>, <code>before_track</code>, <code>before_unregister</code>. It also adds integration code for the Data Inspector browser extension and improves some of the library's type definitions.</p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/mixpanel/mixpanel-js/blob/master/CHANGELOG.md">mixpanel-browser's changelog</a>.</em></p>
<blockquote>
<p><strong>2.75.0</strong> (24 Feb 2026)</p>
<ul>
<li>Adds support for Feature Flags targeting based on events tracked during the current session (Runtime Targeting)</li>
<li>Fixes memory leaks in Session Recording on sites which create/destroy iframes</li>
<li>Fixes usage of arrow functions in <code>hooks</code> config</li>
</ul>
<p><strong>2.74.0</strong> (27 Jan 2026)</p>
<ul>
<li>New session recording masking configuration options, including the ability to unmask inputs and allowlist-based selector masking.</li>
<li>Adds initial support for the remote settings API, allowing remote configuration of SDK config options.</li>
<li>Adds new automated browser test suite that runs in CI and locally in chrome headless. See tests/browser/README.html for more information.</li>
<li>Fixes type definitions for api_routes</li>
<li>Removes outdated examples in the examples/ dir</li>
</ul>
<p><strong>2.73.0</strong> (23 Dec 2025)</p>
<ul>
<li>Adds several new hooks: <code>before_identify</code>, <code>before_register</code>, <code>before_register_once</code>, <code>before_track</code>, <code>before_unregister</code></li>
<li>Adds instance-initialization notification to allow Data Inspector browser extension to hook into SDK actions</li>
<li>Fixes and extends type definitions</li>
</ul>
<p><strong>2.72.0</strong> (14 Nov 2025)</p>
<ul>
<li>Adds Autocapture rage-click configuration option <code>interactive_elements_only</code>, to ignore clicks on non-interactive page elements such as text. Configure with: <code>mixpanel.init('&lt;TOKEN&gt;', {autocapture: {rage_click: {interactive_elements_only: true}}})</code></li>
<li>Adds TypeScript types for Feature Flags subsystem (<code>mixpanel.flags</code>)</li>
<li>Adds JS console data to Session Recordings, enabled by default but configurable via the <code>record_console</code> initialization option.</li>
<li>Fixes an issue in session recording where closing and opening a page would upload a replay shorter than the configured minimum duration (<code>record_min_ms</code>)</li>
<li>Fixes an issue in session recording where payloads get truncated on old Safari versions due to a bug in their CompressionStream implementation</li>
</ul>
<p><strong>2.71.1</strong> (30 Oct 2025)</p>
<ul>
<li>fixes issue with $mp_page_leave events getting tracked when <code>record_heatmap_data</code> is on and there was no session recording taking place.</li>
</ul>
<p><strong>2.71.0</strong> (2 Oct 2025)</p>
<ul>
<li>adds Dead Click ($mp_dead_click) autocapture event: when a click occurs but there is no DOM mutation afterwards</li>
<li>adds Page Leave ($mp_page_leave) autocapture event: when a page is &quot;left&quot; either by navigation or leaving the tab</li>
<li>adds additional properties to experiment exposure events for feature flags</li>
<li>upgrades rrweb fork to fix a hidden input masking issue</li>
<li>gets rid of package.json exports feature to be less restrictive of what can be imported</li>
<li>adds type definitions for each build option</li>
</ul>
<p><strong>2.70.0</strong> (4 Sep 2025)</p>
<ul>
<li>Feature flags requests now send params on query string with GET instead of POST for easier caching</li>
</ul>
<p><strong>2.68.0</strong> (11 Aug 2025)</p>
<ul>
<li>Initial rage-click detection support</li>
<li>Block <code>&lt;audio&gt;</code> tags by default in Session Recording</li>
<li>Add <code>flags.update_context()</code> method for updating context variables and refetching variants</li>
</ul>
<p><strong>2.67.0</strong> (17 Jul 2025)</p>
<ul>
<li>Use <code>get_api_host()</code> consistently across the SDK</li>
<li>Include <code>device_id</code> in default Feature Flag context</li>
<li>Track latency props in <code>$experiment_started</code> event</li>
<li>Fix async behavior in <code>mixpanel.reset()</code> when a session recording is active</li>
<li>Fix recorder integration test race conditions</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>cf7f7dd</code></a> 2.75.0</li>
<li><a href=""><code>283172c</code></a> changelog for 2.75.0</li>
<li><a href=""><code>8f18483</code></a> add Node 24 to CI matrix</li>
<li><a href=""><code>dc8b4c1</code></a> Merge branch '2.75.0-rc'</li>
<li><a href=""><code>071dde5</code></a> rebuild 2.75.0-rc3</li>
<li><a href=""><code>768565b</code></a> try to fix recorder test flakiness</li>
<li><a href=""><code>126c71b</code></a> fix tests</li>
<li><a href=""><code>208e9a8</code></a> no longer nest event properties for jsonlogic</li>
<li><a href=""><code>c9e8f49</code></a> build 2.75.0-rc2</li>
<li><a href=""><code>bf8e553</code></a> Merge remote-tracking branch 'msiebert-first-time-event-targeting' into 2.75....</li>
<li>Additional commits viewable in <a href="https://github.com/mixpanel/mixpanel-js/compare/v2.72.0...v2.75.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=mixpanel-browser&package-manager=npm_and_yarn&previous-version=2.72.0&new-version=2.75.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ef0d092a4bfb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.