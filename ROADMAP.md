# Roadmap

This fork of [filament-ai-visibility](https://github.com/Israrminhas1/filament-ai-visibility) is maintained by Roy Biscocho.

## Phase 0 — Ownership & Rebrand (Completed)

- [x] Fork repository to `rbiscocho/filament-ai-visibility`
- [x] Update `composer.json` package name and authors
- [x] Update README branding and installation instructions
- [x] Update SECURITY.md reporting links
- [x] Document planned work

## Phase 1 — Namespace Cleanup (In Progress)

**New namespace:** `RoyBiscocho\FilamentAiVisibility`

- [x] Switch `composer.json` autoload + service provider to the new namespace
- [x] Add `scripts/rename-namespace.sh` (bulk find/replace helper)
- [ ] Run the rename script on a local clone (updates all `src/` + `tests/` files)
- [ ] Verify with `composer dump-autoload` and the test suite
- [ ] Commit the full rename
- [ ] Tag first release of the fork

### How to finish Phase 1 locally

```bash
git clone https://github.com/rbiscocho/filament-ai-visibility.git
cd filament-ai-visibility
bash scripts/rename-namespace.sh
composer dump-autoload
composer test   # optional but recommended
git add -A
git commit -m "Phase 1: Complete namespace rename to RoyBiscocho\\FilamentAiVisibility"
git push
```

After the script runs, every PHP file will use the new namespace and the package will be consistent.

## Phase 2 — Fact / Accuracy Layer (Next major feature)

Optional second pass after normal analysis that checks AI claims against a brand knowledge base of structured facts.

- [ ] Brand Knowledge Base model + Filament UI
- [ ] Claim extraction from answers
- [ ] Comparison logic (Correct / Wrong / Incomplete)
- [ ] Store accuracy results on answers/mentions
- [ ] Display on Answer page + reports
- [ ] Settings toggle + cost tracking

## Later

- Additional engines (Copilot, DeepSeek, …)
- Public API / webhooks
- Stronger content recommendation features
- Improved multi-market support
