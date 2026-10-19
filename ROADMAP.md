# Roadmap

This fork of [filament-ai-visibility](https://github.com/Israrminhas1/filament-ai-visibility) is maintained by Roy Biscocho.

## Phase 0 — Ownership & Rebrand (Completed)

- [x] Fork repository to `rbiscocho/filament-ai-visibility`
- [x] Update `composer.json` package name and authors
- [x] Update README branding and installation instructions
- [x] Update SECURITY.md reporting links
- [x] Document planned work

## Phase 1 — Cleanup (Planned)

- [ ] Full PHP namespace rename (`IsrarMinhas\FilamentAiVisibility` → new namespace)
- [ ] Update all internal references, tests, and service provider
- [ ] Clean remaining original author branding in docs where appropriate
- [ ] Tag first release of the fork

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
