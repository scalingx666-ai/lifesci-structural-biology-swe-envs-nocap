# Issue

**Title:** Build and deploy docs to GitHub Pages with GitHub Actions

## Description

#### Reference Issues/PRs

None.

#### What does this implement/fix? Explain your changes

The docs at graphein.ai are served from the `gh-pages` branch, which was last pushed on 2022-05-19, so the live docs are four years out of date. This PR adds `.github/workflows/docs.yaml`:

- **On every PR:** build the docs. A broken docs build now shows up in review.
- **On pushes to `master`, or a manual run on `master`:** build the docs, upload them as a Pages artifact and deploy them with `actions/deploy-pages`.
- **Notebooks:** rendered from their saved outputs with `-D nbsphinx_execute=never`. Re-running them would need the network, a registered `graphein` kernel and much longer runs. All 23 notebooks have saved outputs. `conf.py` still defaults to `"always"` for local builds.
- **Dependencies:** pandoc from apt, because nbsphinx needs the binary. CPU torch, PyG and `lightning`, because autodoc imports every module.

The docs build also failed with current dependencies, which this PR fixes:

- **Sphinx 9 removed `sphinx.ext.autodoc.NewTypeDataDocumenter`.** `conf.py` patched it unconditionally, so the config failed to load. It's now patched only if present.
- **Sphinx rejects duplicate intersphinx URLs.** I dropped the `nx`, `np`, `pd` and `sklearn` aliases. Intersphinx resolves references by the objects in each inventory, so the alias keys weren't used for linking.
- **`graphein.molecule.graphs` annotated with `rdkit.Mol`, which doesn't exist.** It's `rdkit.Chem.Mol`, and this crashed `sphinx_codeautolink`. These now use `Chem.Mol`, like the rest of the module.

#### Before merging: switch the Pages source

Pages is currently set to "Deploy from a branch" (`gh-pages`). After merging, set **Settings → Pages → Source** to **GitHub Actions**, or run:

```
gh api -X PUT repos/a-r-j/graphein/pages -f build_type=workflow
```

With an Actions deployment, the `graphein.ai` custom domain comes from the repo settings, so no `CNAME` file is needed. Once the first deployment succeeds, the `gh-pages` branch can be deleted.

#### What testing did you do to verify the changes in this PR?

- **Local build:** Python 3.12, macOS, with the same flags as the workflow, plus torch, PyG and lightning. It succeeds: 106 HTML pages, and every module imports for autodoc. There are 126 warnings, all existing docstring formatting problems that don't fail the build.
- **Notebook pages:** these need the `pandoc` binary, which wasn't available locally, so I excluded them from the local build. This PR's own `docs` run is the first build that includes them.
- **Workflow file:** `actionlint` and the `check-yaml` pre-commit hook pass.
- **Not tested before merge:** the deploy job only runs on `master`.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable). Not applicable.
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran the docs build locally (see above)
- [x] Checked for style issues (`actionlint`, `check-yaml`)

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `94da785854c4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.