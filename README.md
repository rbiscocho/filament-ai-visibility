# Filament AI Visibility (Fork)

> **Maintained by [Roy Biscocho](https://github.com/rbiscocho)**  
> Original package by [Israr Minhas](https://github.com/Israrminhas1/filament-ai-visibility)

Track how your brand shows up in answers from ChatGPT, Claude, Gemini, Perplexity, Grok and Google's AI Overviews / AI Mode — with competitor intelligence, inside your own Filament panel. Bring your own API keys; one key is enough to start.

This is a **fork** of the excellent original package. Phase 0 (rebranding) is complete. Phase 1 (namespace cleanup) is in progress.

| Overview | Competitors |
|---|---|
| ![Overview](https://raw.githubusercontent.com/Israrminhas1/filament-ai-visibility/main/art/screenshot-01-overview.png) | ![Competitors](https://raw.githubusercontent.com/Israrminhas1/filament-ai-visibility/main/art/screenshot-02-competitors.png) |
| **An answer, analysed** | **Discovered competitors** |
| ![Answer](https://raw.githubusercontent.com/Israrminhas1/filament-ai-visibility/main/art/screenshot-10-answer.png) | ![Discovered](https://raw.githubusercontent.com/Israrminhas1/filament-ai-visibility/main/art/screenshot-06-discovered.png) |

<sub>Screenshots use fictional sample data from the original project.</sub>

Covered by 550+ automated tests on Filament 4 and 5.

## Current Status

### Phase 0 — Ownership & Rebrand (Completed)
- [x] Repository forked to `rbiscocho/filament-ai-visibility`
- [x] Package name changed to `rbiscocho/filament-ai-visibility`
- [x] Authors updated (Roy Biscocho as Maintainer)
- [x] Homepage and branding updated

### Phase 1 — Namespace Cleanup (In Progress)
- [x] `composer.json` autoload switched to `RoyBiscocho\FilamentAiVisibility`
- [x] Rename script added: `scripts/rename-namespace.sh`
- [ ] Run the script on a local clone to update all source files (see ROADMAP.md)

### Phase 2 — Fact / Accuracy Layer (Planned next)
Optional second pass that checks AI claims against a brand knowledge base.

## Installation (this fork)

```bash
composer require rbiscocho/filament-ai-visibility
php artisan ai-visibility:install
```

> **Note:** Until a stable release is tagged on this fork, use the VCS repository:
>
> ```json
> {
>     "repositories": [
>         {
>             "type": "vcs",
>             "url": "https://github.com/rbiscocho/filament-ai-visibility"
>         }
>     ],
>     "require": {
>         "rbiscocho/filament-ai-visibility": "dev-main"
>     }
> }
> ```

After the namespace rename is finished, register the plugin like this:

```php
use RoyBiscocho\FilamentAiVisibility\AiVisibilityPlugin;

public function panel(Panel $panel): Panel
{
    return $panel
        ->plugin(AiVisibilityPlugin::make());
}
```

Until then the original namespace (`IsrarMinhas\FilamentAiVisibility`) is still present in the PHP files.

## Finishing Phase 1 (local)

```bash
git clone https://github.com/rbiscocho/filament-ai-visibility.git
cd filament-ai-visibility
bash scripts/rename-namespace.sh
composer dump-autoload
git add -A && git commit -m "Phase 1: Complete namespace rename" && git push
```

## Documentation

Full developer docs remain in the [`docs/`](docs/) folder.

See also [ROADMAP.md](ROADMAP.md) for the full plan.

## License

MIT (same as the original package).
