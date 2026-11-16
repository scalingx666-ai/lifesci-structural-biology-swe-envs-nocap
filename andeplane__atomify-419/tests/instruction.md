# Issue

**Title:** chore(deps-dev): bump @playwright/test from 1.61.1 to 1.62.1

## Description

Bumps [@playwright/test](https://github.com/microsoft/playwright) from 1.61.1 to 1.62.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/microsoft/playwright/releases">@​playwright/test's releases</a>.</em></p>
<blockquote>
<h2>v1.62.1</h2>
<h3>Bug Fixes</h3>
<ul>
<li><a href="">#41989</a> [Regression]: tsconfig &quot;extends&quot; bare specifier isn't resolved via node_modules walk-up like tsc (fatal since 1.62)</li>
<li><a href="">#41998</a> [Regression]: directory-form tsconfig project references (&quot;path&quot;: &quot;../pkg&quot;) fail to resolve (fatal since 1.62)</li>
<li><a href="">#41985</a> Accessibility snapshot drops button name when text is nested inside spans with aria-hidden SVG</li>
<li><a href="">#42000</a> [Regression]: page.evaluate() arg of a branded primitive type (string &amp; { brand }) no longer type-checks since 1.62</li>
<li><a href="">#42013</a> [BUG]Image-type actionable elements are not presented in the snapshot.</li>
</ul>
<h2>v1.62.0</h2>
<h2>🧱 New component testing model</h2>
<p><a href="https://playwright.dev/docs/test-components">Component testing</a> moves to a <strong>stories and galleries</strong> model.
A <strong>story</strong> wraps your component in one specific scenario — hard-coded props, mock data, providers — and a <strong>gallery</strong> page that you serve renders stories on demand.
The new <a href="https://playwright.dev/docs/api/class-fixtures#fixtures-mount">fixtures.mount()</a> fixture navigates to the gallery, mounts a story by id, and returns a <a href="https://playwright.dev/docs/api/class-locator">Locator</a> scoped to the story's root element:</p>
<pre lang="js"><code>test('click should expand', async ({ mount }) =&gt; {
  const component = await mount('components/Expandable/Stateful');
  await component.getByRole('button').click();
  await expect(component.getByTestId('expanded')).toHaveValue('true');
});
</code></pre>
<p>Pass a story type as a template argument to type-check its props, and use <code>update(props)</code> / <code>unmount()</code> on the returned locator to re-render or tear down within a test.</p>
<h2>🛑 Cancel operations with AbortSignal</h2>
<p>Most operations and web-first assertions now accept a <code>signal</code> option that takes an <a href="https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal"><code>AbortSignal</code></a>, letting you cancel long-running actions, navigations, waits, and assertions:</p>
<pre lang="js"><code>const controller = new AbortController();
setTimeout(() =&gt; controller.abort(), 1000);
<p>await page.getByRole('button', { name: 'Submit' }).click({ signal: controller.signal });
await expect(page.getByText('Done')).toBeVisible({ signal: controller.signal });
</code></pre></p>
<p>Providing a signal does not disable the default timeout; pass <code>timeout: 0</code> to disable it.</p>
<h2>🖼️ WebP screenshots</h2>
<p><a href="https://playwright.dev/docs/api/class-pageassertions#page-assertions-to-have-screenshot-1">expect(page).toHaveScreenshot()</a> and <a href="https://playwright.dev/docs/api/class-locatorassertions#locator-assertions-to-have-screenshot-1">expect(locator).toHaveScreenshot()</a> can now store snapshots in the WebP format — just give the snapshot a <code>.webp</code> name:</p>
<pre lang="js"><code>// Visual comparisons store the golden snapshot as lossless WebP.
await expect(page).toHaveScreenshot('homepage.webp');
<p>// Standalone screenshots can trade quality for size with lossy WebP.
await page.screenshot({ path: 'homepage.webp', quality: 50 });
&lt;/tr&gt;&lt;/table&gt;
</code></pre></p>
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>26a9e47</code></a> cherry-pick(<a href="">#42043</a>): docs: release notes for v1.62 Python, Java, and .NET (<a href="">#4</a>...</li>
<li><a href=""><code>0a81d5d</code></a> cherry-pick(<a href="">#42040</a>): docs(release-notes): mention the isolated headless clipb...</li>
<li><a href=""><code>8376826</code></a> cherry-pick(<a href="">#42034</a>): fix(aria): keep icon-only clickable elements in ai snaps...</li>
<li><a href=""><code>66c5cc9</code></a> chore: mark v1.62.1 (<a href="">#42020</a>)</li>
<li><a href=""><code>9672bc3</code></a> cherry-pick(<a href="">#42009</a>): fix(types): support branded primitives in evaluate argum...</li>
<li><a href=""><code>4325804</code></a> cherry-pick(<a href="">#41988</a>): fix(aria): preserve names from collapsed text contributors</li>
<li><a href=""><code>9632f8e</code></a> cherry-pick(<a href="">#42005</a>): fix(tsconfig): do not throw when &quot;extends&quot;/&quot;references&quot; ...</li>
<li><a href=""><code>e3950d9</code></a> chore: mark v1.62.0 (<a href="">#41981</a>)</li>
<li><a href=""><code>f07e0f7</code></a> cherry-pick(<a href="">#41940</a>): docs: release notes for v1.62 (<a href="">#41967</a>)</li>
<li><a href=""><code>05a306c</code></a> cherry-pick(<a href="">#41964</a>): Revert &quot;feat(routeFromHar): add interceptAPIRequests opt...</li>
<li>Additional commits viewable in <a href="https://github.com/microsoft/playwright/compare/v1.61.1...v1.62.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=@playwright/test&package-manager=npm_and_yarn&previous-version=1.61.1&new-version=1.62.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

You can trigger a rebase of this PR by commenting `@dependabot rebase`.

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

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e0c3929c80bf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.