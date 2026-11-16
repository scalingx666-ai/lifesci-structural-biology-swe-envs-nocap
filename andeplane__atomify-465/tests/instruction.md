# Issue

**Title:** chore(deps-dev): bump eslint and @eslint/js to 10

## Description

Bumps [@eslint/js](https://github.com/eslint/eslint/tree/HEAD/packages/js) from 9.39.5 to 10.0.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/eslint/eslint/releases">@​eslint/js's releases</a>.</em></p>
<blockquote>
<h2>v10.0.1</h2>
<h2>Bug Fixes</h2>
<ul>
<li><a href=""><code>c87d5bd</code></a> fix: update eslint (<a href="">#20531</a>) (renovate[bot])</li>
<li><a href=""><code>d841001</code></a> fix: update <code>minimatch</code> to <code>10.2.1</code> to address security vulnerabilities (<a href="">#20519</a>) (루밀LuMir)</li>
<li><a href=""><code>04c2147</code></a> fix: update error message for unused suppressions (<a href="">#20496</a>) (fnx)</li>
<li><a href=""><code>38b089c</code></a> fix: update dependency <code>@​eslint/config-array</code> to ^0.23.1 (<a href="">#20484</a>) (renovate[bot])</li>
</ul>
<h2>Documentation</h2>
<ul>
<li><a href=""><code>5b3dbce</code></a> docs: add AI acknowledgement section to templates (<a href="">#20431</a>) (루밀LuMir)</li>
<li><a href=""><code>6f23076</code></a> docs: toggle nav in no-JS mode (<a href="">#20476</a>) (Tanuj Kanti)</li>
<li><a href=""><code>b69cfb3</code></a> docs: Update README (GitHub Actions Bot)</li>
</ul>
<h2>Chores</h2>
<ul>
<li><a href=""><code>e5c281f</code></a> chore: updates for v9.39.3 release (Jenkins)</li>
<li><a href=""><code>8c3832a</code></a> chore: update <code>@​typescript-eslint/parser</code> to ^8.56.0 (<a href="">#20514</a>) (Milos Djermanovic)</li>
<li><a href=""><code>8330d23</code></a> test: add tests for config-api (<a href="">#20493</a>) (Milos Djermanovic)</li>
<li><a href=""><code>37d6e91</code></a> chore: remove eslint v10 prereleases from eslint-config-eslint deps (<a href="">#20494</a>) (Milos Djermanovic)</li>
<li><a href=""><code>da7cd0e</code></a> refactor: cleanup error message templates (<a href="">#20479</a>) (Francesco Trotta)</li>
<li><a href=""><code>84fb885</code></a> chore: package.json update for <code>@​eslint/js</code> release (Jenkins)</li>
<li><a href=""><code>1f66734</code></a> chore: add <code>eslint</code> to <code>peerDependencies</code> of <code>@eslint/js</code> (<a href="">#20467</a>) (Milos Djermanovic)</li>
</ul>
<h2>v10.0.0</h2>
<h2>Breaking Changes</h2>
<ul>
<li><a href=""><code>f9e54f4</code></a> feat!: estimate rule-tester failure location (<a href="">#20420</a>) (ST-DDT)</li>
<li><a href=""><code>a176319</code></a> feat!: replace <code>chalk</code> with <code>styleText</code> and add <code>color</code> to <code>ResultsMeta</code> (<a href="">#20227</a>) (루밀LuMir)</li>
<li><a href=""><code>c7046e6</code></a> feat!: enable JSX reference tracking (<a href="">#20152</a>) (Pixel998)</li>
<li><a href=""><code>fa31a60</code></a> feat!: add <code>name</code> to configs (<a href="">#20015</a>) (Kirk Waiblinger)</li>
<li><a href=""><code>3383e7e</code></a> fix!: remove deprecated <code>SourceCode</code> methods (<a href="">#20137</a>) (Pixel998)</li>
<li><a href=""><code>501abd0</code></a> feat!: update dependency minimatch to v10 (<a href="">#20246</a>) (renovate[bot])</li>
<li><a href=""><code>ca4d3b4</code></a> fix!: stricter rule tester assertions for valid test cases (<a href="">#20125</a>) (唯然)</li>
<li><a href=""><code>96512a6</code></a> fix!: Remove deprecated rule context methods (<a href="">#20086</a>) (Nicholas C. Zakas)</li>
<li><a href=""><code>c69fdac</code></a> feat!: remove eslintrc support (<a href="">#20037</a>) (Francesco Trotta)</li>
<li><a href=""><code>208b5cc</code></a> feat!: Use <code>ScopeManager#addGlobals()</code> (<a href="">#20132</a>) (Milos Djermanovic)</li>
<li><a href=""><code>a2ee188</code></a> fix!: add <code>uniqueItems: true</code> in <code>no-invalid-regexp</code> option (<a href="">#20155</a>) (Tanuj Kanti)</li>
<li><a href=""><code>a89059d</code></a> feat!: Program range span entire source text (<a href="">#20133</a>) (Pixel998)</li>
<li><a href=""><code>39a6424</code></a> fix!: assert 'text' is a string across all RuleFixer methods (<a href="">#20082</a>) (Pixel998)</li>
<li><a href=""><code>f28fbf8</code></a> fix!: Deprecate <code>&quot;always&quot;</code> and <code>&quot;as-needed&quot;</code> options of the <code>radix</code> rule (<a href="">#20223</a>) (Milos Djermanovic)</li>
<li><a href=""><code>aa3fb2b</code></a> fix!: tighten <code>func-names</code> schema (<a href="">#20119</a>) (Pixel998)</li>
<li><a href=""><code>f6c0ed0</code></a> feat!: report <code>eslint-env</code> comments as errors (<a href="">#20128</a>) (Francesco Trotta)</li>
<li><a href=""><code>4bf739f</code></a> fix!: remove deprecated <code>LintMessage#nodeType</code> and <code>TestCaseError#type</code> (<a href="">#20096</a>) (Pixel998)</li>
<li><a href=""><code>523c076</code></a> feat!: drop support for jiti &lt; 2.2.0 (<a href="">#20016</a>) (michael faith)</li>
<li><a href=""><code>454a292</code></a> feat!: update <code>eslint:recommended</code> configuration (<a href="">#20210</a>) (Pixel998)</li>
<li><a href=""><code>4f880ee</code></a> feat!: remove <code>v10_*</code> and inactive <code>unstable_*</code> flags (<a href="">#20225</a>) (sethamus)</li>
<li><a href=""><code>f18115c</code></a> feat!: <code>no-shadow-restricted-names</code> report <code>globalThis</code> by default (<a href="">#20027</a>) (sethamus)</li>
<li><a href=""><code>c6358c3</code></a> feat!: Require Node.js <code>^20.19.0 || ^22.13.0 || &gt;=24</code> (<a href="">#20160</a>) (Milos Djermanovic)</li>
</ul>
<h2>Features</h2>
<ul>
<li><a href=""><code>bff9091</code></a> feat: handle <code>Array.fromAsync</code> in <code>array-callback-return</code> (<a href="">#20457</a>) (Francesco Trotta)</li>
<li><a href=""><code>290c594</code></a> feat: add <code>self</code> to <code>no-implied-eval</code> rule (<a href="">#20468</a>) (sethamus)</li>
<li><a href=""><code>43677de</code></a> feat: fix handling of function and class expression names in <code>no-shadow</code> (<a href="">#20432</a>) (Milos Djermanovic)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>84fb885</code></a> chore: package.json update for <code>@​eslint/js</code> release</li>
<li><a href=""><code>1f66734</code></a> chore: add <code>eslint</code> to <code>peerDependencies</code> of <code>@eslint/js</code> (<a href="">#20467</a>)</li>
<li><a href=""><code>f3fbc2f</code></a> chore: set <code>@eslint/js</code> version to 10.0.0 to skip releasing it (<a href="">#20466</a>)</li>
<li><a href=""><code>b4b3127</code></a> chore: package.json update for <code>@​eslint/js</code> release</li>
<li><a href=""><code>0b14059</code></a> chore: package.json update for <code>@​eslint/js</code> release</li>
<li><a href=""><code>fa31a60</code></a> feat!: add <code>name</code> to configs (<a href="">#20015</a>)</li>
<li><a href=""><code>1e2cad5</code></a> chore: package.json update for <code>@​eslint/js</code> release</li>
<li><a href=""><code>454a292</code></a> feat!: update <code>eslint:recommended</code> configuration (<a href="">#20210</a>)</li>
<li><a href=""><code>c6358c3</code></a> feat!: Require Node.js <code>^20.19.0 || ^22.13.0 || &gt;=24</code> (<a href="">#20160</a>)</li>
<li>See full diff in <a href="https://github.com/eslint/eslint/commits/v10.0.1/packages/js">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=@eslint/js&package-manager=npm_and_yarn&previous-version=9.39.5&new-version=10.0.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e7f920cab667`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.