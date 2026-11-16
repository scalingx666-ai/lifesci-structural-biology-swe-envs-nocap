# Issue

**Title:** chore(deps-dev): bump @vitejs/plugin-react from 6.0.5 to 6.1.2

## Description

Bumps [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/tree/HEAD/packages/plugin-react) from 6.0.5 to 6.1.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite-plugin-react/releases">@​vitejs/plugin-react's releases</a>.</em></p>
<blockquote>
<h2>plugin-react@6.1.2</h2>
<h3>Fix HMR for compound components (<a href="">#1484</a>)</h3>
<p>Adding or removing a component from a compound component was not handled, creating stale updates. Doing this now triggers hmr invalidate on the file and propagates the invalidation to importers.</p>
<h3>Fix <code>compiler.logDiagnostics</code> option not working (<a href="">#1483</a>)</h3>
<p>With <code>oxc-transform-react</code> &gt;= 0.148, the <code>logDiagnostics</code> was not working. This version fixes it and requires <code>oxc-transform-react</code> &gt;= 0.152 as a peer dependency if you are using the <code>compiler</code> option. <code>compiler.logDiagnostics</code> option is now deprecated and should be swapped for the builtin <code>compiler.reportDiagnostics</code>.</p>
<h3>Disable refresh for non-jsx with compiler enabled (fix <a href="">#1478</a>) (<a href="">#1485</a>)</h3>
<p>When the compiler was enabled, TS files could trigger fast refresh which would cause runtime errors. The logic now follows what the builtin oxc plugin in Vite does.</p>
<h2>plugin-react@6.1.1</h2>
<h3>Add <code>compiler.logDiagnostics</code> option</h3>
<p>Recoverable React Compiler diagnostics are no longer logged by default. Set <code>compiler.logDiagnostics</code> to <code>true</code> to log them through Vite. Fatal diagnostics are always logged and fail the transform.</p>
<h3>Respect environment sourcemap option for React Compiler transform when <code>builder.sharedPlugins</code> is enabled (<a href="">#1439</a>)</h3>
<p>The React Compiler transform was using the top-level sourcemap option instead of the environment sourcemap option. This caused a problem when the experimental <code>builder.sharedPlugins</code> was enabled.</p>
<h2>plugin-react@6.1.0</h2>
<h3>Add experimental native React Compiler support (<a href="">#1419</a>)</h3>
<p>Add experimental native React Compiler support.</p>
<p>You can use it by installing <code>oxc-transform-react</code> and enabling it via the <code>compiler</code> option:</p>
<pre lang="sh"><code>npm install -D oxc-transform-react
</code></pre>
<pre lang="js"><code>import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
<p>export default defineConfig({<br />
plugins: [<br />
react({ compiler: true })<br />
]<br />
})<br />
</code></pre></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/CHANGELOG.md">@​vitejs/plugin-react's changelog</a>.</em></p>
<blockquote>
<h2>6.1.2 (2026-10-05)</h2>
<h3>Fix HMR for compound components (<a href="">#1484</a>)</h3>
<p>Adding or removing a component from a compound component was not handled, creating stale updates. Doing this now triggers hmr invalidate on the file and propagates the invalidation to importers.</p>
<h3>Fix <code>compiler.logDiagnostics</code> option not working (<a href="">#1483</a>)</h3>
<p>With <code>oxc-transform-react</code> &gt;= 0.148, the <code>logDiagnostics</code> was not working. This version fixes it and requires <code>oxc-transform-react</code> &gt;= 0.152 as a peer dependency if you are using the <code>compiler</code> option. <code>compiler.logDiagnostics</code> option is now deprecated and should be swapped for the builtin <code>compiler.reportDiagnostics</code>.</p>
<h3>Disable refresh for non-jsx with compiler enabled (fix <a href="">#1478</a>) (<a href="">#1485</a>)</h3>
<p>When the compiler was enabled, TS files could trigger fast refresh which would cause runtime errors. The logic now follows what the builtin oxc plugin in Vite does.</p>
<h2>6.1.1 (2026-08-28)</h2>
<h3>Add <code>compiler.logDiagnostics</code> option</h3>
<p>Recoverable React Compiler diagnostics are no longer logged by default. Set <code>compiler.logDiagnostics</code> to <code>true</code> to log them through Vite. Fatal diagnostics are always logged and fail the transform.</p>
<h3>Respect environment sourcemap option for React Compiler transform when <code>builder.sharedPlugins</code> is enabled (<a href="">#1439</a>)</h3>
<p>The React Compiler transform was using the top-level sourcemap option instead of the environment sourcemap option. This caused a problem when the experimental <code>builder.sharedPlugins</code> was enabled.</p>
<h2>6.1.0 (2026-08-19)</h2>
<h3>Add experimental native React Compiler support (<a href="">#1419</a>)</h3>
<p>Add experimental native React Compiler support.</p>
<p>You can use it by installing <code>oxc-transform-react</code> and enabling it via the <code>compiler</code> option:</p>
<pre lang="sh"><code>npm install -D oxc-transform-react
</code></pre>
<pre lang="js"><code>import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
<p>export default defineConfig({<br />
plugins: [<br />
react({ compiler: true })<br />
]<br />
})<br />
</code></pre></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ac47648</code></a> release: plugin-react@6.1.2 (<a href="">#1491</a>)</li>
<li><a href=""><code>98277e7</code></a> fix(deps): update all non-major dependencies (<a href="">#1486</a>)</li>
<li><a href=""><code>12eddea</code></a> fix(hmr): better handle compound components (<a href="">#1484</a>)</li>
<li><a href=""><code>3cfb1d1</code></a> fix(plugin-react): fix <code>compiler.logDiagnostics</code> (<a href="">#1483</a>)</li>
<li><a href=""><code>6de9915</code></a> fix(plugin-react): disable refresh for non-jsx with compiler enabled (<a href="">#1485</a>)</li>
<li><a href=""><code>ee97d2f</code></a> fix(deps): update all non-major dependencies (<a href="">#1445</a>)</li>
<li><a href=""><code>b0a014d</code></a> chore: use Babel 8 for babel compiler playgrounds (<a href="">#1460</a>)</li>
<li><a href=""><code>61b650f</code></a> fix(deps): update react-related dependencies (<a href="">#1452</a>)</li>
<li><a href=""><code>736efe2</code></a> chore(deps): update tsdown to v0.23 (<a href="">#1451</a>)</li>
<li><a href=""><code>04cac50</code></a> release: plugin-react@6.1.1 (<a href="">#1440</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/vitejs/vite-plugin-react/commits/plugin-react@6.1.2/packages/plugin-react">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=@vitejs/plugin-react&package-manager=npm_and_yarn&previous-version=6.0.5&new-version=6.1.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5de8b6520a43`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.