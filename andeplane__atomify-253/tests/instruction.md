# Issue

**Title:** chore(deps): bump monaco-editor from 0.50.0 to 0.55.1

## Description

Bumps [monaco-editor](https://github.com/microsoft/monaco-editor) from 0.50.0 to 0.55.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/microsoft/monaco-editor/releases">monaco-editor's releases</a>.</em></p>
<blockquote>
<h2>v0.55.1</h2>
<h2>Changes:</h2>
<ul>
<li><a href="">#5121</a>: Fixes missing language exports</li>
<li><a href="">#5122</a>: v0.55.1</li>
</ul>
<p>This list of changes was <a href="https://dev.azure.com/monacotools/Monaco/_build/results?buildId=377315&amp;view=logs">auto generated</a>.</p>
<h2>v0.55.0</h2>
<h2>Changes:</h2>
<ul>
<li><a href="">#5120</a>: Fixes npx playwright install --with-deps</li>
<li><a href="">#5118</a>: Fixes <a href="">microsoft/monaco-editor#5113</a></li>
<li><a href="">#5117</a>: v0.55.0</li>
<li><a href="">#5116</a>: Install playwright dependencies in monaco-editor-core job</li>
<li><a href="">#5105</a>: Fixes website</li>
<li><a href="">#5104</a>: fixes website &amp; adds editor.api.d.ts</li>
<li><a href="">#5102</a>: Fixes typedoc &amp; updates pipelines to test website</li>
<li><a href="">#5100</a>: Updates website dependencies</li>
<li><a href="">#5071</a>: Bump vite from 5.4.20 to 5.4.21 in /samples/browser-esm-vite-react</li>
<li><a href="">#4961</a>: Bump on-headers and compression in /samples</li>
</ul>
<!-- raw HTML omitted -->
<ul>
<li><a href="">#5040</a>: Bump <code>@​babel/runtime</code> from 7.18.9 to 7.28.4 in /website</li>
<li><a href="">#5095</a>: Bump vite from 7.1.9 to 7.1.11 in /samples/browser-esm-vite</li>
<li><a href="">#5097</a>: Cleans up build scripts</li>
<li><a href="">#5098</a>: Dont build the editor when building the website</li>
<li><a href="">#5099</a>: Run tests</li>
<li><a href="">#5094</a>: Adds vite esm example</li>
<li><a href="">#5093</a>: Adds playground support for esmUrl</li>
<li><a href="">#5092</a>: Updates changelog</li>
<li><a href="">#5090</a>: Adds localization section to readme</li>
<li><a href="">#5089</a>: Adds missing NLS files</li>
<li><a href="">#5088</a>: Dont use .js for typescript imports, as rollup adds them to the output</li>
<li><a href="">#5070</a>: Bump vite from 7.1.5 to 7.1.11</li>
<li><a href="">#5069</a>: Bump playwright and <code>@​playwright/test</code></li>
<li><a href="">#5058</a>: Add monaco-editor-core dependencies to monaco-editor after updating monaco-editor-core.</li>
<li><a href="">#5053</a>: Bump loader-utils from 2.0.2 to 2.0.4 in /website</li>
<li><a href="">#5055</a>: Bump postcss and css-loader in /website</li>
<li><a href="">#5054</a>: Bump json5 from 2.2.1 to 2.2.3 in /website</li>
<li><a href="">#4973</a>: Fix Kotlin number literals</li>
<li><a href="">#4991</a>: Bump vite from 2.9.17 to 5.4.20 in /samples/browser-esm-vite-react</li>
<li><a href="">#5039</a>: Bump webpack from 5.90.1 to 5.102.1 in /website</li>
<li><a href="">#5037</a>: Bump ws in /website</li>
<li><a href="">#5010</a>: [Bug] Multiple issues with how monaco-editor is published</li>
<li><a href="">#5051</a>: Fixes <a href="">#5010</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/microsoft/monaco-editor/blob/main/CHANGELOG.md">monaco-editor's changelog</a>.</em></p>
<blockquote>
<h2>[0.55.1]</h2>
<ul>
<li>Fixes missing language exports (monaco.json/typescript/...) due to wrong &quot;types&quot; path - <a href="">#5123</a></li>
</ul>
<h2>[0.55.0]</h2>
<h3>Breaking Changes</h3>
<ul>
<li>Moves nested namespaces (<code>languages.css</code>, <code>languages.html</code>, <code>languages.json</code>, <code>languages.typescript</code>) to top level namespaces (<code>css</code>, <code>html</code>, <code>json</code>, <code>typescript</code>) to simplify the build process and align with typescript recommendations.</li>
</ul>
<h3>New Features</h3>
<ul>
<li>Adds native LSP support (see new <code>lsp</code> namespace).</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>Updates dompurify to 3.2.7</li>
</ul>
<h2>[0.54.0]</h2>
<ul>
<li>Adds option <code>editor.mouseMiddleClickAction</code></li>
<li>Various bug fixes</li>
</ul>
<h2>[0.53.0]</h2>
<ul>
<li>:warning: This release deprecates the AMD build and ships with significant changes of the AMD build. The AMD build will still be shipped for a while, but we don't offer support for it anymore. Please migrate to the ESM build.</li>
</ul>
<h3>New Features</h3>
<ul>
<li>Next Edit Suggestion support.</li>
<li>Scroll On Middle Click</li>
<li>Edit Context Support</li>
</ul>
<h3>Breaking Changes</h3>
<ul>
<li>Internal AMD modules are no longer accessible. Accessing internal AMD modules was never supported. While this is still possible in the ESM build, we don't encourage this usage pattern.</li>
<li>The <a href="https://github.com/microsoft/monaco-editor/blob/a4d7907bd439b06b24e334bdf2ab597bcae658b5/samples/browser-script-editor/index.html">browser-script-editor scenario</a> for unbundled synchronous script import and editor creation no longer works. Instead, a the ESM build should be used with a bundler, such as vite or webpack.</li>
<li>Custom AMD workers don't work anymore out of the box.</li>
</ul>
<h2>[0.52.0]</h2>
<ul>
<li>Comment added inside of <code>IModelContentChangedEvent</code></li>
</ul>
<h2>[0.51.0]</h2>
<ul>
<li>New fields <code>IEditorOptions.placeholder</code> and <code>IEditorOptions.compactMode</code></li>
<li>New fields <code>IGotoLocationOptions.multipleTests</code> and <code>IGotoLocationOptions.alternativeTestsCommand</code></li>
<li>New field <code>IInlineEditOptions.backgroundColoring</code></li>
<li>New experimental field <code>IEditorOptions.experimental.useTrueInlineView</code></li>
<li>New options <code>CommentThreadRevealOptions</code> for comments</li>
</ul>
<p>Contributions to <code>monaco-editor</code>:</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>516f350</code></a> Fixes missing language exports (<a href="">#5121</a>)</li>
<li><a href=""><code>9221aa0</code></a> v0.55.1 (<a href="">#5122</a>)</li>
<li><a href=""><code>d678c1d</code></a> Merge pull request <a href="">#5120</a> from microsoft/hediet/enormous-herring</li>
<li><a href=""><code>f047a08</code></a> Fixes npx playwright install --with-deps</li>
<li><a href=""><code>220c1ca</code></a> Fixes <a href="">microsoft/monaco-editor#5113</a> (<a href="">#5118</a>)</li>
<li><a href=""><code>1b175c7</code></a> v0.55.0 (<a href="">#5117</a>)</li>
<li><a href=""><code>574b846</code></a> Install playwright dependencies in monaco-editor-core job (<a href="">#5116</a>)</li>
<li><a href=""><code>5486e82</code></a> update (<a href="">#5105</a>)</li>
<li><a href=""><code>e70b661</code></a> fixes website &amp; adds editor.api.d.ts (<a href="">#5104</a>)</li>
<li><a href=""><code>36efbe0</code></a> Fixes typedoc &amp; updates pipelines to test website (<a href="">#5102</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/microsoft/monaco-editor/compare/v0.50.0...v0.55.1">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~microsoft1es">microsoft1es</a>, a new releaser for monaco-editor since your current version.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=monaco-editor&package-manager=npm_and_yarn&previous-version=0.50.0&new-version=0.55.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot merge` will merge this PR after your CI passes on it
- `@dependabot squash and merge` will squash and merge this PR after your CI passes on it
- `@dependabot cancel merge` will cancel a previously requested merge and block automerging
- `@dependabot reopen` will reopen this PR if it is closed
- `@dependabot close` will close this PR and stop Dependabot recreating it. You can achieve the same result by closing it manually
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a5e58d2806d1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.