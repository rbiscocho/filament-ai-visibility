# Filament AI Visibility (Fork)

> **Maintained by [Roy Biscocho](https://github.com/rbiscocho)**  
> Original package by [Israr Minhas](https://github.com/Israrminhas1/filament-ai-visibility)

Track how your brand shows up in answers from ChatGPT, Claude, Gemini, Perplexity, Grok and Google's AI Overviews / AI Mode — with competitor intelligence, inside your own Filament panel. Bring your own API keys; one key is enough to start.

This is a **fork** of the excellent original package. Phase 0 (rebranding & ownership) is complete. Future work will include a **Fact / Accuracy layer** and other improvements.

| Overview | Competitors |
|---|---|
| ![Overview](https://raw.githubusercontent.com/Israrminhas1/filament-ai-visibility/main/art/screenshot-01-overview.png) | ![Competitors](https://raw.githubusercontent.com/Israrminhas1/filament-ai-visibility/main/art/screenshot-02-competitors.png) |
| **An answer, analysed** | **Discovered competitors** |
| ![Answer](https://raw.githubusercontent.com/Israrminhas1/filament-ai-visibility/main/art/screenshot-10-answer.png) | ![Discovered](https://raw.githubusercontent.com/Israrminhas1/filament-ai-visibility/main/art/screenshot-06-discovered.png) |

<sub>Screenshots use fictional sample data from the original project.</sub>

Covered by 550+ automated tests on Filament 4 and 5.

## Phase 0 Status (Completed)

- [x] Repository forked to `rbiscocho/filament-ai-visibility`
- [x] Package name changed to `rbiscocho/filament-ai-visibility`
- [x] Authors updated (Roy Biscocho as Maintainer)
- [x] Homepage and branding updated
- [ ] Full PHP namespace rename (`IsrarMinhas\...` → new namespace) — planned for later phase
- [ ] Fact / Accuracy layer implementation — planned next

## Installation (this fork)

```bash
composer require rbiscocho/filament-ai-visibility
php artisan ai-visibility:install
```

> **Note:** Until a stable release is tagged on this fork, you may need to use the VCS repository in your `composer.json`:
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

Register the plugin in your panel provider (namespace is still the original for now):

```php
use IsrarMinhas\FilamentAiVisibility\AiVisibilityPlugin;

public function panel(Panel $panel): Panel
{
    return $panel
        ->plugin(AiVisibilityPlugin::make());
}
```

## Documentation

The full developer documentation remains in the [`docs/`](docs/) folder (inherited from the original package):

- [Installation](docs/installation.md)
- [Queues and scheduler](docs/queues-and-scheduler.md)
- [Configuration](docs/configuration.md)
- [Plugin options](docs/plugin-options.md)
- [Permissions and tenancy](docs/permissions-and-tenancy.md)
- [Engines and costs](docs/engines-and-costs.md)
- [Extending](docs/extending.md)
- [Troubleshooting](docs/troubleshooting.md)

## Planned Improvements

1. **Fact / Accuracy Layer** – Optional second pass that checks AI claims against a brand knowledge base of structured facts.
2. Full namespace and branding cleanup.
3. Additional engines and public API (future).

## License

MIT (same as the original package).

---

*This fork exists to enable private improvements and the addition of new features such as fact-checking while preserving the excellent foundation built by the original author.*
